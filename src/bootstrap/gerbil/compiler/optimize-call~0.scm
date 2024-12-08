(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1733687566)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp197307 (list gxc#::basic-xform::t))
            (__tmp197306 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp197307
         '()
         __tmp197306
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args196584%_
        (apply make-instance gxc#::optimize-call::t _%$args196584%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp197308
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
        (__make-promise __tmp197308)))
    (define gxc#apply-optimize-call
      (lambda (_%stx196576%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self196579%_
                (let ((__obj197298
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj197298))
               (__tmp197309
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196579%_ _%stx196576%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197309
           gxc#current-compile-method
           _%self196579%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp197311 (list gxc#::void::t))
            (__tmp197310 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp197311
         '()
         __tmp197310
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args196573%_
        (apply make-instance gxc#::check-return-type::t _%$args196573%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp197312
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
        (__make-promise __tmp197312)))
    (define gxc#apply-check-return-type
      (lambda (_%stx196565%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self196568%_
                (let ((__obj197300
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj197300))
               (__tmp197313
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self196568%_ _%stx196565%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197313
           gxc#current-compile-method
           _%self196568%_))))
    (define gxc#optimize-call%
      (lambda (_%self196166%_ _%stx196167%_)
        (let* ((_%__stx196653196654%_ _%stx196167%_)
               (_%g196170196216%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196653196654%_)))))
          (let ((_%__kont196655196656%_
                 (lambda (_%L196359%_ _%L196360%_)
                   (let* ((_%rator-id196380%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L196360%_)))
                          (_%rator-type196382%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id196380%_))))
                     (if (or (not _%rator-type196382%_)
                             (eq? (##structure-ref
                                   _%rator-type196382%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self196166%_ _%stx196167%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type196382%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp197314
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type196382%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id196380%_
                                  '" => "
                                  _%rator-type196382%_
                                  '" "
                                  __tmp197314))
                               (let* ((_%optimized196397%_
                                       (let ((__method197301
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type196382%_
                                                 'optimize-call))))
                                         (if __method197301
                                             (let ((__tmp197315
                                                    (let ((__tmp197316
                                                           (lambda (_%g196389196392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g196390196394%_)
                     (cons _%g196389196392%_ _%g196390196394%_))))
              (declare (not safe))
              (__foldr1 __tmp197316 '() _%L196359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method197301
                                                _%rator-type196382%_
                                                _%self196166%_
                                                _%stx196167%_
                                                __tmp197315))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type196382%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx196601196602%_
                                       _%optimized196397%_)
                                      (_%g196400196429%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx196601196602%_)))))
                                 (let ((_%__kont196603196604%_
                                        (lambda (_%L196497%_ _%L196498%_)
                                          (let* ((_%optimized-rator-id196525%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L196498%_)))
                                                 (_%rator-type196530%_
                                                  (let ((_%$e196527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id196525%_))))
                                                    (if _%$e196527%_
                                                        _%$e196527%_
                                                        _%rator-type196382%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type196530%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id196525%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type196530%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type196530%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized196397%_
                                                (let ((__tmp197317
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L196498%_ '()))
                           (let ((__tmp197318
                                  (lambda (_%g196538196541%_ _%g196539196543%_)
                                    (cons _%g196538196541%_
                                          _%g196539196543%_))))
                             (declare (not safe))
                             (__foldr1 __tmp197318 '() _%L196497%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp197317
                                                   _%stx196167%_))))))
                                       (_%__kont196607196608%_
                                        (lambda () _%optimized196397%_)))
                                   (let ((_%__match196650196651%_
                                          (lambda (_%e196404196441%_
                                                   _%hd196405196444%_
                                                   _%tl196406196446%_
                                                   _%e196407196449%_
                                                   _%hd196408196452%_
                                                   _%tl196409196454%_
                                                   _%e196410196457%_
                                                   _%hd196411196460%_
                                                   _%tl196412196462%_
                                                   _%e196413196465%_
                                                   _%hd196414196468%_
                                                   _%tl196415196470%_
                                                   _%__splice196605196606%_
                                                   _%target196416196473%_
                                                   _%tl196418196475%_)
                                            (letrec ((_%loop196419196478%_
                                                      (lambda (_%hd196417196481%_
                                                               _%arg196423196483%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd196417196481%_))
                                                            (let ((_%e196420196486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd196417196481%_))))
                      (let ((_%lp-tl196422196491%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196420196486%_)))
                            (_%lp-hd196421196489%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196420196486%_))))
                        (_%loop196419196478%_
                         _%lp-tl196422196491%_
                         (cons _%lp-hd196421196489%_ _%arg196423196483%_))))
                    (let ((_%arg196424196494%_ (reverse _%arg196423196483%_)))
                      (_%__kont196603196604%_
                       _%arg196424196494%_
                       _%hd196414196468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop196419196478%_
                                               _%target196416196473%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx196601196602%_))
                                         (let ((_%e196404196441%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx196601196602%_))))
                                           (let ((_%tl196406196446%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196404196441%_)))
                                                 (_%hd196405196444%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196404196441%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd196405196444%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd196405196444%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl196406196446%_))
                                                         (let ((_%e196407196449%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl196406196446%_))))
                   (let ((_%tl196409196454%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e196407196449%_)))
                         (_%hd196408196452%_
                          (let ()
                            (declare (not safe))
                            (##car _%e196407196449%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd196408196452%_))
                         (let ((_%e196410196457%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd196408196452%_))))
                           (let ((_%tl196412196462%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196410196457%_)))
                                 (_%hd196411196460%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196410196457%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd196411196460%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd196411196460%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl196412196462%_))
                                         (let ((_%e196413196465%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl196412196462%_))))
                                           (let ((_%tl196415196470%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196413196465%_)))
                                                 (_%hd196414196468%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196413196465%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl196415196470%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl196409196454%_))
                                                     (let ((_%__splice196605196606%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl196409196454%_
                                                               '0))))
                                                       (let ((_%tl196418196475%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice196605196606%_ '1)))
                     (_%target196416196473%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice196605196606%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl196418196475%_))
                     (_%__match196650196651%_
                      _%e196404196441%_
                      _%hd196405196444%_
                      _%tl196406196446%_
                      _%e196407196449%_
                      _%hd196408196452%_
                      _%tl196409196454%_
                      _%e196410196457%_
                      _%hd196411196460%_
                      _%tl196412196462%_
                      _%e196413196465%_
                      _%hd196414196468%_
                      _%tl196415196470%_
                      _%__splice196605196606%_
                      _%target196416196473%_
                      _%tl196418196475%_)
                     (_%__kont196607196608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196607196608%_))
                                                 (_%__kont196607196608%_))))
                                         (_%__kont196607196608%_))
                                     (_%__kont196607196608%_))
                                 (_%__kont196607196608%_))))
                         (_%__kont196607196608%_))))
                 (_%__kont196607196608%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196607196608%_))
                                                 (_%__kont196607196608%_))))
                                         (_%__kont196607196608%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type196382%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type196382%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp197319
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L196360%_
                                                                '()))
                                                    (map (lambda (_%g196549196551%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self196166%_
                                                              _%g196549196551%_)))
                                                         (let ((__tmp197320
                                                                (lambda (_%g196553196556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g196554196558%_)
                          (cons _%g196553196556%_ _%g196554196558%_))))
                   (declare (not safe))
                   (__foldr1 __tmp197320 '() _%L196359%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp197319
                                    _%stx196167%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx196167%_
                                    _%rator-type196382%_))))))))
                (_%__kont196659196660%_
                 (lambda (_%L196261%_ _%L196262%_)
                   (let ((_%rator-type196279%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L196262%_))))
                     (if (and _%rator-type196279%_
                              (eq? (##structure-ref
                                    _%rator-type196279%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type196279%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type196279%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type196279%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp197321
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196166%_
                                               _%L196262%_))
                                            (map (lambda (_%g196281196283%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196166%_
                                                      _%g196281196283%_)))
                                                 (let ((__tmp197322
                                                        (lambda (_%g196285196288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g196286196290%_)
                  (cons _%g196285196288%_ _%g196286196290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp197322
                                                    '()
                                                    _%L196261%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197321 _%stx196167%_))
                         (if (or (not _%rator-type196279%_)
                                 (let ((__tmp197323
                                        (##structure-ref
                                         _%rator-type196279%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp197323 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self196166%_ _%stx196167%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx196167%_
                                _%rator-type196279%_))))))))
            (let* ((_%__match196720196721%_
                    (lambda (_%e196197196221%_
                             _%hd196198196224%_
                             _%tl196199196226%_
                             _%e196200196229%_
                             _%hd196201196232%_
                             _%tl196202196234%_
                             _%__splice196661196662%_
                             _%target196203196237%_
                             _%tl196205196239%_)
                      (letrec ((_%loop196206196242%_
                                (lambda (_%hd196204196245%_
                                         _%rand196210196247%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196204196245%_))
                                      (let ((_%e196207196250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196204196245%_))))
                                        (let ((_%lp-tl196209196255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196207196250%_)))
                                              (_%lp-hd196208196253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196207196250%_))))
                                          (_%loop196206196242%_
                                           _%lp-tl196209196255%_
                                           (cons _%lp-hd196208196253%_
                                                 _%rand196210196247%_))))
                                      (let ((_%rand196211196258%_
                                             (reverse _%rand196210196247%_)))
                                        (_%__kont196659196660%_
                                         _%rand196211196258%_
                                         _%hd196201196232%_))))))
                        (_%loop196206196242%_ _%target196203196237%_ '()))))
                   (_%__match196700196701%_
                    (lambda (_%e196174196303%_
                             _%hd196175196306%_
                             _%tl196176196308%_
                             _%e196177196311%_
                             _%hd196178196314%_
                             _%tl196179196316%_
                             _%e196180196319%_
                             _%hd196181196322%_
                             _%tl196182196324%_
                             _%e196183196327%_
                             _%hd196184196330%_
                             _%tl196185196332%_
                             _%__splice196657196658%_
                             _%target196186196335%_
                             _%tl196188196337%_)
                      (letrec ((_%loop196189196340%_
                                (lambda (_%hd196187196343%_
                                         _%rand196193196345%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196187196343%_))
                                      (let ((_%e196190196348%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196187196343%_))))
                                        (let ((_%lp-tl196192196353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196190196348%_)))
                                              (_%lp-hd196191196351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196190196348%_))))
                                          (_%loop196189196340%_
                                           _%lp-tl196192196353%_
                                           (cons _%lp-hd196191196351%_
                                                 _%rand196193196345%_))))
                                      (let ((_%rand196194196356%_
                                             (reverse _%rand196193196345%_)))
                                        (_%__kont196655196656%_
                                         _%rand196194196356%_
                                         _%hd196184196330%_))))))
                        (_%loop196189196340%_ _%target196186196335%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196653196654%_))
                  (let ((_%e196174196303%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196653196654%_))))
                    (let ((_%tl196176196308%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196174196303%_)))
                          (_%hd196175196306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196174196303%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196176196308%_))
                          (let ((_%e196177196311%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196176196308%_))))
                            (let ((_%tl196179196316%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196177196311%_)))
                                  (_%hd196178196314%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196177196311%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196178196314%_))
                                  (let ((_%e196180196319%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196178196314%_))))
                                    (let ((_%tl196182196324%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196180196319%_)))
                                          (_%hd196181196322%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196180196319%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196181196322%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196181196322%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196182196324%_))
                                                  (let ((_%e196183196327%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196182196324%_))))
                                                    (let ((_%tl196185196332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196183196327%_)))
                                                          (_%hd196184196330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196183196327%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196185196332%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl196179196316%_))
                      (let ((_%__splice196657196658%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196179196316%_
                                '0))))
                        (let ((_%tl196188196337%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196657196658%_ '1)))
                              (_%target196186196335%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196657196658%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196188196337%_))
                              (_%__match196700196701%_
                               _%e196174196303%_
                               _%hd196175196306%_
                               _%tl196176196308%_
                               _%e196177196311%_
                               _%hd196178196314%_
                               _%tl196179196316%_
                               _%e196180196319%_
                               _%hd196181196322%_
                               _%tl196182196324%_
                               _%e196183196327%_
                               _%hd196184196330%_
                               _%tl196185196332%_
                               _%__splice196657196658%_
                               _%target196186196335%_
                               _%tl196188196337%_)
                              (let ()
                                (declare (not safe))
                                (_%g196170196216%_)))))
                      (let () (declare (not safe)) (_%g196170196216%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl196179196316%_))
                      (let ((_%__splice196661196662%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl196179196316%_
                                '0))))
                        (let ((_%tl196205196239%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196661196662%_ '1)))
                              (_%target196203196237%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196661196662%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196205196239%_))
                              (_%__match196720196721%_
                               _%e196174196303%_
                               _%hd196175196306%_
                               _%tl196176196308%_
                               _%e196177196311%_
                               _%hd196178196314%_
                               _%tl196179196316%_
                               _%__splice196661196662%_
                               _%target196203196237%_
                               _%tl196205196239%_)
                              (let ()
                                (declare (not safe))
                                (_%g196170196216%_)))))
                      (let () (declare (not safe)) (_%g196170196216%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196179196316%_))
                                                      (let ((_%__splice196661196662%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl196179196316%_ '0))))
                (let ((_%tl196205196239%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196661196662%_ '1)))
                      (_%target196203196237%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196661196662%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196205196239%_))
                      (_%__match196720196721%_
                       _%e196174196303%_
                       _%hd196175196306%_
                       _%tl196176196308%_
                       _%e196177196311%_
                       _%hd196178196314%_
                       _%tl196179196316%_
                       _%__splice196661196662%_
                       _%target196203196237%_
                       _%tl196205196239%_)
                      (let () (declare (not safe)) (_%g196170196216%_)))))
              (let () (declare (not safe)) (_%g196170196216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl196179196316%_))
                                                  (let ((_%__splice196661196662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl196179196316%_
                                                            '0))))
                                                    (let ((_%tl196205196239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196661196662%_
                                                              '1)))
                                                          (_%target196203196237%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196661196662%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196205196239%_))
                                                          (_%__match196720196721%_
                                                           _%e196174196303%_
                                                           _%hd196175196306%_
                                                           _%tl196176196308%_
                                                           _%e196177196311%_
                                                           _%hd196178196314%_
                                                           _%tl196179196316%_
                                                           _%__splice196661196662%_
                                                           _%target196203196237%_
                                                           _%tl196205196239%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196170196216%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g196170196216%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl196179196316%_))
                                              (let ((_%__splice196661196662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl196179196316%_
                                                        '0))))
                                                (let ((_%tl196205196239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196661196662%_
                                                          '1)))
                                                      (_%target196203196237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196661196662%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196205196239%_))
                                                      (_%__match196720196721%_
                                                       _%e196174196303%_
                                                       _%hd196175196306%_
                                                       _%tl196176196308%_
                                                       _%e196177196311%_
                                                       _%hd196178196314%_
                                                       _%tl196179196316%_
                                                       _%__splice196661196662%_
                                                       _%target196203196237%_
                                                       _%tl196205196239%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196170196216%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g196170196216%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196179196316%_))
                                      (let ((_%__splice196661196662%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196179196316%_
                                                '0))))
                                        (let ((_%tl196205196239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196661196662%_
                                                  '1)))
                                              (_%target196203196237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196661196662%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196205196239%_))
                                              (_%__match196720196721%_
                                               _%e196174196303%_
                                               _%hd196175196306%_
                                               _%tl196176196308%_
                                               _%e196177196311%_
                                               _%hd196178196314%_
                                               _%tl196179196316%_
                                               _%__splice196661196662%_
                                               _%target196203196237%_
                                               _%tl196205196239%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g196170196216%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196170196216%_))))))
                          (let () (declare (not safe)) (_%g196170196216%_)))))
                  (let () (declare (not safe)) (_%g196170196216%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self192545196126%_ _%ctx196128%_ _%stx196129%_ _%args196130%_)
        (let* ((_%self196132%_ _%self192545196126%_)
               (_%self196134%_ _%self196132%_))
          (if (let ((__method197302
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self196134%_ 'check-arguments))))
                (if __method197302
                    (let ()
                      (declare (not safe))
                      (__method197302
                       _%self196134%_
                       _%ctx196128%_
                       _%stx196129%_
                       _%args196130%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self196134%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature196144%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196134%_ '2 '#f '#f)))
                     (_%signature196146%_ _%signature196144%_)
                     (_%$e196156%_
                      (if _%signature196146%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196146%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e196156%_
                    ((lambda (_%unchecked196159%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked196159%_))
                           (let ((__tmp197324
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked196159%_
                                                          '()))
                                              (map (lambda (_%g196160196162%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx196128%_
                                                        _%g196160196162%_)))
                                                   _%args196130%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp197324
                              _%stx196129%_
                              _%ctx196128%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx196128%_ _%stx196129%_))))
                     _%$e196156%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx196128%_ _%stx196129%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx196128%_ _%stx196129%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass196586 __method-table196587)
        (let ((__check-arguments196588
               (let ((__tmp197325
                      (lambda ()
                        (let ((__method196589
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196587
                                  'check-arguments
                                  '#f))))
                          (if __method196589
                              __method196589
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197325))))
          (lambda (_%self192545196126%_
                   _%ctx196128%_
                   _%stx196129%_
                   _%args196130%_)
            (let* ((_%self196132%_ _%self192545196126%_)
                   (_%self196134%_ _%self196132%_))
              (if ((force __check-arguments196588)
                   _%self196134%_
                   _%ctx196128%_
                   _%stx196129%_
                   _%args196130%_)
                  (let* ((_%signature196144%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self196134%_
                             '2
                             '#f
                             '#f)))
                         (_%signature196146%_ _%signature196144%_)
                         (_%$e196156%_
                          (if _%signature196146%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature196146%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e196156%_
                        ((lambda (_%unchecked196159%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked196159%_))
                               (let ((__tmp197326
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked196159%_
                                                              '()))
                                                  (map (lambda (_%g196160196162%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx196128%_
                                                            _%g196160196162%_)))
                                                       _%args196130%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp197326
                                  _%stx196129%_
                                  _%ctx196128%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx196128%_
                                  _%stx196129%_))))
                         _%$e196156%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx196128%_ _%stx196129%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx196128%_ _%stx196129%_))))))))
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
      (lambda (_%self192546195875%_ _%ctx195877%_ _%stx195878%_ _%args195879%_)
        (let* ((_%self195881%_ _%self192546195875%_)
               (_%self195883%_ _%self195881%_)
               (_%signature195892195894%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195883%_ '2 '#f '#f))))
          (if _%signature195892195894%_
              (let* ((_%signature195897%_ _%signature195892195894%_)
                     (_%argument-types195898195900%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature195897%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types195898195900%_
                    (let* ((_%argument-types195903%_
                            _%argument-types195898195900%_)
                           (_%argument-types195908%_
                            (let ((__tmp197327
                                   (lambda (_%t195906%_)
                                     (if _%t195906%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195878%_
                                            _%t195906%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp197327
                               _%argument-types195903%_))))
                      (let _%loop195910%_ ((_%rest-args195912%_ _%args195879%_)
                                           (_%rest-types195913%_
                                            _%argument-types195908%_)
                                           (_%result195914%_ '#t))
                        (let* ((_%rest-args195915195923%_ _%rest-args195912%_)
                               (_%else195917195931%_
                                (lambda () _%result195914%_))
                               (_%K195919195992%_
                                (lambda (_%rest-args195934%_ _%arg195935%_)
                                  (let* ((_%rest-types195936195947%_
                                          _%rest-types195913%_)
                                         (_%E195940195951%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types195936195947%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K195943195980%_
                                           (lambda (_%rest-types195977%_
                                                    _%type195978%_)
                                             (_%loop195910%_
                                              _%rest-args195934%_
                                              _%rest-types195977%_
                                              (if (gxc#check-expression-type!
                                                   _%stx195878%_
                                                   _%arg195935%_
                                                   _%type195978%_)
                                                  _%result195914%_
                                                  '#f))))
                                          (_%K195942195971%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx195878%_
                                                _%argument-types195908%_))))
                                          (_%K195941195961%_
                                           (lambda (_%tail-type195955%_)
                                             (if (let ((__tmp197328
                                                        (lambda (_%g195956195958%_)
                                                          (gxc#check-expression-type!
                                                           _%stx195878%_
                                                           _%g195956195958%_
                                                           _%tail-type195955%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp197328
                                                    _%rest-args195934%_))
                                                 _%result195914%_
                                                 '#f))))
                                      (let ((_%try-match195938195974%_
                                             (lambda ()
                                               (if (null? _%rest-types195936195947%_)
                                                   (_%K195942195971%_)
                                                   (let ((_%tail-type195964%_
                                                          _%rest-types195936195947%_))
                                                     (_%K195941195961%_
                                                      _%tail-type195964%_))))))
                                        (if (pair? _%rest-types195936195947%_)
                                            (let ((_%tl195945195985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types195936195947%_)))
                                                  (_%hd195944195983%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types195936195947%_))))
                                              (let ((_%type195988%_
                                                     _%hd195944195983%_)
                                                    (_%rest-types195990%_
                                                     _%tl195945195985%_))
                                                (_%K195943195980%_
                                                 _%rest-types195990%_
                                                 _%type195988%_)))
                                            (_%try-match195938195974%_))))))))
                          (if (pair? _%rest-args195915195923%_)
                              (let ((_%hd195920195995%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args195915195923%_)))
                                    (_%tl195921195997%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args195915195923%_))))
                                (let* ((_%arg196000%_ _%hd195920195995%_)
                                       (_%rest-args196002%_
                                        _%tl195921195997%_))
                                  (_%K195919195992%_
                                   _%rest-args196002%_
                                   _%arg196000%_)))
                              (_%else195917195931%_)))))
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
      (lambda (_%self192547195684%_ _%ctx195686%_ _%stx195687%_ _%args195688%_)
        (let* ((_%self195690%_ _%self192547195684%_)
               (_%self195692%_ _%self195690%_)
               (_%g195702195712%_
                (lambda (_%g195703195709%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195703195709%_))))
               (_%g195701195750%_
                (lambda (_%g195703195715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195703195715%_))
                      (let ((_%e195705195717%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195703195715%_))))
                        (let ((_%hd195706195720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195705195717%_)))
                              (_%tl195707195722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195705195717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195707195722%_))
                              ((lambda (_%L195725%_)
                                 (let* ((_%klass195737%_
                                         (let ((__tmp197329
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195692%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195687%_
                                            __tmp197329)))
                                        (_%object195739%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195686%_
                                            _%L195725%_)))
                                        (_%instance?195744%_
                                         (let ((_%$e195741%_
                                                (gxc#expression-type?
                                                 _%object195739%_
                                                 _%klass195737%_)))
                                           (if _%$e195741%_
                                               _%$e195741%_
                                               (gxc#expression-type?
                                                _%L195725%_
                                                _%klass195737%_)))))
                                   (if _%instance?195744%_
                                       (let ((__tmp197330
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195739%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195725%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195739%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197330
                                          _%stx195687%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx195686%_
                                          _%stx195687%_)))))
                               _%hd195706195720%_)
                              (_%g195702195712%_ _%g195703195715%_))))
                      (_%g195702195712%_ _%g195703195715%_)))))
          (_%g195701195750%_ _%args195688%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self192548195478%_ _%ctx195480%_ _%stx195481%_ _%args195482%_)
        (let* ((_%self195484%_ _%self192548195478%_)
               (_%self195486%_ _%self195484%_)
               (_%g195496195506%_
                (lambda (_%g195497195503%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195497195503%_))))
               (_%g195495195559%_
                (lambda (_%g195497195509%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195497195509%_))
                      (let ((_%e195499195511%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195497195509%_))))
                        (let ((_%hd195500195514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195499195511%_)))
                              (_%tl195501195516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195499195511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195501195516%_))
                              ((lambda (_%L195519%_)
                                 (let* ((_%klass195531%_
                                         (let ((__tmp197331
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195486%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195481%_
                                            __tmp197331)))
                                        (_%object195533%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195480%_
                                            _%L195519%_)))
                                        (_%instance?195538%_
                                         (let ((_%$e195535%_
                                                (gxc#expression-type?
                                                 _%object195533%_
                                                 _%klass195531%_)))
                                           (if _%$e195535%_
                                               _%$e195535%_
                                               (gxc#expression-type?
                                                _%L195519%_
                                                _%klass195531%_))))
                                        (_%klass195541%_ _%klass195531%_))
                                   (if _%instance?195538%_
                                       (let ((__tmp197332
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195533%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195519%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195533%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197332
                                          _%stx195481%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195541%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197333
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass195541%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object195533%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197333
                                              _%stx195481%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195541%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197334
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass195541%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object195533%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197334
                                                  _%stx195481%_))
                                               (let ((__tmp197335
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self195486%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object195533%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197335
                                                  _%stx195481%_)))))))
                               _%hd195500195514%_)
                              (_%g195496195506%_ _%g195497195509%_))))
                      (_%g195496195506%_ _%g195497195509%_)))))
          (_%g195495195559%_ _%args195482%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx195141%_)
        (let* ((_%__stx196730196731%_ _%stx195141%_)
               (_%g195146195187%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196730196731%_)))))
          (let ((_%__kont196732196733%_ (lambda () '#t))
                (_%__kont196734196735%_ (lambda () '#t))
                (_%__kont196736196737%_
                 (lambda (_%L195255%_ _%L195256%_)
                   (let ((_%rator-type195277195279%_
                          (let ((__tmp197336
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L195256%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp197336))))
                     (if _%rator-type195277195279%_
                         (let* ((_%rator-type195282%_
                                 _%rator-type195277195279%_)
                                (_%rator-signature195283195285%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type195282%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type195282%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature195283195285%_
                               (let* ((_%rator-signature195288%_
                                       _%rator-signature195283195285%_)
                                      (_%rator-effect195289195291%_
                                       (if _%rator-signature195288%_
                                           (##direct-structure-ref
                                            _%rator-signature195288%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect195289195291%_
                                     (let ((_%rator-effect195294%_
                                            _%rator-effect195289195291%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect195294%_)
                                               (equal? '(alloc)
                                                       _%rator-effect195294%_))
                                           (let ((__tmp197337
                                                  (let ((__tmp197338
                                                         (lambda (_%g195299195302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g195300195304%_)
                   (cons _%g195299195302%_ _%g195300195304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp197338
                                                     '()
                                                     _%L195255%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp197337))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont196740196741%_ (lambda () '#f)))
            (let ((_%__match196819196820%_
                   (lambda (_%e195162195199%_
                            _%hd195163195202%_
                            _%tl195164195204%_
                            _%e195165195207%_
                            _%hd195166195210%_
                            _%tl195167195212%_
                            _%e195168195215%_
                            _%hd195169195218%_
                            _%tl195170195220%_
                            _%e195171195223%_
                            _%hd195172195226%_
                            _%tl195173195228%_
                            _%__splice196738196739%_
                            _%target195174195231%_
                            _%tl195176195233%_)
                     (letrec ((_%loop195177195236%_
                               (lambda (_%hd195175195239%_
                                        _%rand195181195241%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195175195239%_))
                                     (let ((_%e195178195244%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195175195239%_))))
                                       (let ((_%lp-tl195180195249%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195178195244%_)))
                                             (_%lp-hd195179195247%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195178195244%_))))
                                         (_%loop195177195236%_
                                          _%lp-tl195180195249%_
                                          (cons _%lp-hd195179195247%_
                                                _%rand195181195241%_))))
                                     (let ((_%rand195182195252%_
                                            (reverse _%rand195181195241%_)))
                                       (_%__kont196736196737%_
                                        _%rand195182195252%_
                                        _%hd195172195226%_))))))
                       (_%loop195177195236%_ _%target195174195231%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196730196731%_))
                  (let ((_%e195148195335%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196730196731%_))))
                    (let ((_%tl195150195340%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195148195335%_)))
                          (_%hd195149195338%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195148195335%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd195149195338%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd195149195338%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195150195340%_))
                                  (let ((_%e195151195343%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195150195340%_))))
                                    (let ((_%tl195153195348%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195151195343%_)))
                                          (_%hd195152195346%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195151195343%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195153195348%_))
                                          (_%__kont196732196733%_)
                                          (_%__kont196740196741%_))))
                                  (_%__kont196740196741%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd195149195338%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195150195340%_))
                                      (let ((_%e195157195320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195150195340%_))))
                                        (let ((_%tl195159195325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195157195320%_)))
                                              (_%hd195158195323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195157195320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195159195325%_))
                                              (_%__kont196734196735%_)
                                              (_%__kont196740196741%_))))
                                      (_%__kont196740196741%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd195149195338%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195150195340%_))
                                          (let ((_%e195165195207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl195150195340%_))))
                                            (let ((_%tl195167195212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195165195207%_)))
                                                  (_%hd195166195210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195165195207%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd195166195210%_))
                                                  (let ((_%e195168195215%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd195166195210%_))))
                                                    (let ((_%tl195170195220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195168195215%_)))
                                                          (_%hd195169195218%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195168195215%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd195169195218%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd195169195218%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195170195220%_))
                          (let ((_%e195171195223%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195170195220%_))))
                            (let ((_%tl195173195228%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195171195223%_)))
                                  (_%hd195172195226%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195171195223%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195173195228%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195167195212%_))
                                      (let ((_%__splice196738196739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195167195212%_
                                                '0))))
                                        (let ((_%tl195176195233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196738196739%_
                                                  '1)))
                                              (_%target195174195231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196738196739%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195176195233%_))
                                              (_%__match196819196820%_
                                               _%e195148195335%_
                                               _%hd195149195338%_
                                               _%tl195150195340%_
                                               _%e195165195207%_
                                               _%hd195166195210%_
                                               _%tl195167195212%_
                                               _%e195168195215%_
                                               _%hd195169195218%_
                                               _%tl195170195220%_
                                               _%e195171195223%_
                                               _%hd195172195226%_
                                               _%tl195173195228%_
                                               _%__splice196738196739%_
                                               _%target195174195231%_
                                               _%tl195176195233%_)
                                              (_%__kont196740196741%_))))
                                      (_%__kont196740196741%_))
                                  (_%__kont196740196741%_))))
                          (_%__kont196740196741%_))
                      (_%__kont196740196741%_))
                  (_%__kont196740196741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont196740196741%_))))
                                          (_%__kont196740196741%_))
                                      (_%__kont196740196741%_))))
                          (_%__kont196740196741%_))))
                  (_%__kont196740196741%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx195136%_ _%klass195137%_)
        (let ((_%expr-type195139%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx195136%_))))
          (if _%expr-type195139%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type195139%_ _%klass195137%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx195114%_ _%expr195115%_ _%type195116%_)
        (if (not _%type195116%_)
            '#f
            (let ((_%$e195119%_
                   (eq? (##structure-ref _%type195116%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e195119%_
                  _%$e195119%_
                  (let ((_%expr-type195123%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr195115%_))))
                    (if (not _%expr-type195123%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type195123%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e195127%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type195123%_
                                      'gxc#!abort::t))))
                              (if _%$e195127%_
                                  _%$e195127%_
                                  (let ((_%$e195130%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type195123%_
                                            _%type195116%_))))
                                    (if _%$e195130%_
                                        _%$e195130%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type195116%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type195116%_
                                                   _%expr-type195123%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx195114%_
                                                   _%expr195115%_
                                                   _%expr-type195123%_
                                                   _%type195116%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self192549194926%_ _%ctx194928%_ _%stx194929%_ _%args194930%_)
        (let* ((_%self194932%_ _%self192549194926%_)
               (_%self194934%_ _%self194932%_)
               (_%klass194944%_
                (let ((__tmp197339
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194934%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx194929%_ __tmp197339)))
               (_%fields194946%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass194944%_
                           '5
                           '#f
                           '#f))))
               (_%args194952%_
                (map (lambda (_%g194947194949%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx194928%_ _%g194947194949%_)))
                     _%args194930%_))
               (_%inline-make-object194954%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self194934%_
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
                           _%self194934%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields194946%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass194957%_ _%klass194944%_)
               (_%$e194971%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass194957%_ '6 '#f '#f))))
          (if _%$e194971%_
              ((lambda (_%ctor194974%_)
                 (let ((_%$obj194976%_
                        (let ((__tmp197340
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp197340)))
                       (_%ctor-impl194977%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass194957%_
                           _%ctor194974%_))))
                   (let ((__tmp197341
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj194976%_ '())
                                                  (cons _%inline-make-object194954%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl194977%_
                                                            (let ((__tmp197342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl194977%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj194976%_ '()))
                                             _%args194952%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp197342
                       _%stx194929%_
                       _%ctx194928%_))
                    (let ((_%$ctor194979%_
                           (let ((__tmp197343
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197343))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor194979%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194934%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj194976%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor194974%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor194979%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor194979%_ '()))
                              (cons (cons '%#ref (cons _%$obj194976%_ '()))
                                    _%args194952%_)))
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
                             _%self194934%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor194974%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj194976%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp197341 _%stx194929%_))))
               _%$e194971%_)
              (let ((_%$e194981%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass194957%_
                        '10
                        '#f
                        '#f))))
                (if _%$e194981%_
                    ((lambda (_%metaclass194984%_)
                       (let* ((_%$obj194986%_
                               (let ((__tmp197344
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197344)))
                              (_%metakons194988%_
                               (let ((__tmp197345
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx194929%_
                                         _%metaclass194984%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp197345
                                  'instance-init!)))
                              (__tmp197346
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj194986%_
                                                             '())
                                                       (cons _%inline-make-object194954%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons194988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp197347
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons194988%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self194934%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj194986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args194952%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp197347
                            _%stx194929%_
                            _%ctx194928%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self194934%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj194986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args194952%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj194986%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp197346 _%stx194929%_)))
                     _%$e194981%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass194957%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp197348
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args194952%_))))
                              (declare (not safe))
                              (##fx= __tmp197348 _%fields194946%_))
                            (let ((__tmp197349
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self194934%_
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
                                              _%self194934%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args194952%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp197349
                               _%stx194929%_))
                            (let ((__tmp197351
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self194934%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp197350
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass194957%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx194929%_
                               __tmp197351
                               __tmp197350)))
                        (let ((_%$obj194993%_
                               (let ((__tmp197352
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197352))))
                          (let _%lp194995%_ ((_%rest194997%_ _%args194952%_)
                                             (_%initializers194998%_ '()))
                            (let* ((_%__stx196822196823%_ _%rest194997%_)
                                   (_%g195002195023%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx196822196823%_)))))
                              (let ((_%__kont196824196825%_
                                     (lambda (_%L195077%_
                                              _%L195078%_
                                              _%L195079%_)
                                       (let* ((_%slot195106%_
                                               (let ((__tmp197353
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L195079%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp197353)))
                                              (_%off195108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass194957%_
                                                  _%slot195106%_))))
                                         (if _%off195108%_
                                             (_%lp194995%_
                                              _%L195077%_
                                              (cons (cons _%off195108%_
                                                          _%L195078%_)
                                                    _%initializers194998%_))
                                             (let ((__tmp197354
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194934%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx194929%_
                                                __tmp197354
                                                _%slot195106%_))))))
                                    (_%__kont196826196827%_
                                     (lambda ()
                                       (let ((__tmp197355
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj194993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object194954%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp197358
                                     (cons (cons '%#ref
                                                 (cons _%$obj194993%_ '()))
                                           '()))
                                    (__tmp197356
                                     (let ((__tmp197357
                                            (lambda (_%i195037%_ _%r195038%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self194934%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i195037%_) '()))
                              (cons (cons '%#ref (cons _%$obj194993%_ '()))
                                    (cons (cdr _%i195037%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r195038%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp197357
                                        '()
                                        _%initializers194998%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp197358 __tmp197356)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197355
                                          _%stx194929%_))))
                                    (_%__kont196828196829%_
                                     (lambda ()
                                       (let ((__tmp197359
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj194993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object194954%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args194952%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj194993%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197359
                                          _%stx194929%_)))))
                                (let* ((_%g195000195040%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx196822196823%_))
                                              (_%__kont196826196827%_)
                                              (_%__kont196828196829%_))))
                                       (_%__match196859196860%_
                                        (lambda (_%e195007195045%_
                                                 _%hd195008195048%_
                                                 _%tl195009195050%_
                                                 _%e195010195053%_
                                                 _%hd195011195056%_
                                                 _%tl195012195058%_
                                                 _%e195013195061%_
                                                 _%hd195014195064%_
                                                 _%tl195015195066%_
                                                 _%e195016195069%_
                                                 _%hd195017195072%_
                                                 _%tl195018195074%_)
                                          (let ((_%L195077%_
                                                 _%tl195018195074%_)
                                                (_%L195078%_
                                                 _%hd195017195072%_)
                                                (_%L195079%_
                                                 _%hd195014195064%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L195079%_))
                                                (_%__kont196824196825%_
                                                 _%L195077%_
                                                 _%L195078%_
                                                 _%L195079%_)
                                                (_%__kont196828196829%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx196822196823%_))
                                      (let ((_%e195007195045%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx196822196823%_))))
                                        (let ((_%tl195009195050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195007195045%_)))
                                              (_%hd195008195048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195007195045%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd195008195048%_))
                                              (let ((_%e195010195053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd195008195048%_))))
                                                (let ((_%tl195012195058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195010195053%_)))
                                                      (_%hd195011195056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195010195053%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd195011195056%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd195011195056%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl195012195058%_))
                      (let ((_%e195013195061%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl195012195058%_))))
                        (let ((_%tl195015195066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195013195061%_)))
                              (_%hd195014195064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195013195061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195015195066%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195009195050%_))
                                  (let ((_%e195016195069%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195009195050%_))))
                                    (let ((_%tl195018195074%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195016195069%_)))
                                          (_%hd195017195072%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195016195069%_))))
                                      (_%__match196859196860%_
                                       _%e195007195045%_
                                       _%hd195008195048%_
                                       _%tl195009195050%_
                                       _%e195010195053%_
                                       _%hd195011195056%_
                                       _%tl195012195058%_
                                       _%e195013195061%_
                                       _%hd195014195064%_
                                       _%tl195015195066%_
                                       _%e195016195069%_
                                       _%hd195017195072%_
                                       _%tl195018195074%_)))
                                  (_%__kont196828196829%_))
                              (_%__kont196828196829%_))))
                      (_%__kont196828196829%_))
                  (_%__kont196828196829%_))
              (_%__kont196828196829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont196828196829%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g195000195040%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self192550194707%_ _%ctx194709%_ _%stx194710%_ _%args194711%_)
        (let* ((_%self194713%_ _%self192550194707%_)
               (_%self194715%_ _%self194713%_)
               (_%arguments-ok?194725%_
                (let ((__method197303
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194715%_ 'check-arguments))))
                  (if __method197303
                      (let ()
                        (declare (not safe))
                        (__method197303
                         _%self194715%_
                         _%ctx194709%_
                         _%stx194710%_
                         _%args194711%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194715%_
                                 'check-arguments))
                        '#!void))))
               (_%g194727194737%_
                (lambda (_%g194728194734%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194728194734%_))))
               (_%g194726194801%_
                (lambda (_%g194728194740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194728194740%_))
                      (let ((_%e194730194742%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194728194740%_))))
                        (let ((_%hd194731194745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194730194742%_)))
                              (_%tl194732194747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194730194742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194732194747%_))
                              ((lambda (_%L194750%_)
                                 (let* ((_%klass194763%_
                                         (let ((__tmp197360
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194715%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194710%_
                                            __tmp197360)))
                                        (_%field194765%_
                                         (let ((__tmp197361
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194715%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass194763%_
                                            __tmp197361)))
                                        (_%object194767%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194709%_
                                            _%L194750%_)))
                                        (_%klass194770%_ _%klass194763%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass194770%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp197362
                                              (cons (if (or _%arguments-ok?194725%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194715%_
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
                                 _%self194715%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field194765%_ '()))
                        (cons _%object194767%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp197362
                                          _%stx194710%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194770%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp197363
                                                  (cons (if (or _%arguments-ok?194725%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194715%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194715%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194765%_ '()))
                            (cons _%object194767%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197363
                                              _%stx194710%_))
                                           (let ((_%$e194789%_
                                                  (let ((__tmp197364
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194715%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass194770%_
                                                     __tmp197364))))
                                             (if _%$e194789%_
                                                 ((lambda (_%klass194792%_)
                                                    (let ((__tmp197365
                                                           (cons (if (or _%arguments-ok?194725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194715%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self194715%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field194765%_ '()))
                                     (cons _%object194767%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp197365 _%stx194710%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e194789%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self194715%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp197366
                                                            (let ((_%$obj194798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp197367
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp197367))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj194798%_ '())
                                              (cons _%object194767%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass194770%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj194798%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194715%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194765%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194798%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?194725%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194798%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194715%_
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
                                                             _%self194715%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj194798%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self194715%_
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
               (gxc#xform-wrap-source __tmp197366 _%stx194710%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp197368
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object194767%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194715%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp197368 _%stx194710%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd194731194745%_)
                              (_%g194727194737%_ _%g194728194740%_))))
                      (_%g194727194737%_ _%g194728194740%_)))))
          (_%g194726194801%_ _%args194711%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass196590 __method-table196591)
        (let ((__check-arguments196592
               (let ((__tmp197369
                      (lambda ()
                        (let ((__method196593
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196591
                                  'check-arguments
                                  '#f))))
                          (if __method196593
                              __method196593
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197369)))
              (__slot196594
               (let ((__slot196595
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass196590 'slot))))
                 (if __slot196595
                     __slot196595
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self192550194707%_
                   _%ctx194709%_
                   _%stx194710%_
                   _%args194711%_)
            (let* ((_%self194713%_ _%self192550194707%_)
                   (_%self194715%_ _%self194713%_)
                   (_%arguments-ok?194725%_
                    ((force __check-arguments196592)
                     _%self194715%_
                     _%ctx194709%_
                     _%stx194710%_
                     _%args194711%_))
                   (_%g194727194737%_
                    (lambda (_%g194728194734%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194728194734%_))))
                   (_%g194726194801%_
                    (lambda (_%g194728194740%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194728194740%_))
                          (let ((_%e194730194742%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194728194740%_))))
                            (let ((_%hd194731194745%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194730194742%_)))
                                  (_%tl194732194747%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194730194742%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194732194747%_))
                                  ((lambda (_%L194750%_)
                                     (let* ((_%klass194763%_
                                             (let ((__tmp197370
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194715%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx194710%_
                                                __tmp197370)))
                                            (_%field194765%_
                                             (let ((__tmp197371
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194715%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass194763%_
                                                __tmp197371)))
                                            (_%object194767%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx194709%_
                                                _%L194750%_)))
                                            (_%klass194770%_ _%klass194763%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194770%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp197372
                                                  (cons (if (or _%arguments-ok?194725%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194715%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194715%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194765%_ '()))
                            (cons _%object194767%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197372
                                              _%stx194710%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194770%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197373
                                                      (cons (if (or _%arguments-ok?194725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194715%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194715%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194765%_ '()))
                                (cons _%object194767%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197373
                                                  _%stx194710%_))
                                               (let ((_%$e194789%_
                                                      (let ((__tmp197374
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self194715%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass194770%_ __tmp197374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e194789%_
                                                     ((lambda (_%klass194792%_)
                                                        (let ((__tmp197375
                                                               (cons (if (or _%arguments-ok?194725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194715%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self194715%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field194765%_ '()))
                                         (cons _%object194767%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp197375 _%stx194710%_)))
              _%$e194789%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194715%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp197376
                                                                (let ((_%$obj194798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp197377
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp197377))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj194798%_ '())
                                                  (cons _%object194767%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass194770%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj194798%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194715%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194765%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194798%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?194725%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194798%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194715%_
                               __slot196594
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
                        (##unchecked-structure-ref _%self194715%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj194798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194715%_
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
                   (gxc#xform-wrap-source __tmp197376 _%stx194710%_))
                 (let ((__tmp197378
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object194767%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194715%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp197378 _%stx194710%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd194731194745%_)
                                  (_%g194727194737%_ _%g194728194740%_))))
                          (_%g194727194737%_ _%g194728194740%_)))))
              (_%g194726194801%_ _%args194711%_))))))
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
      (lambda (_%self192551194469%_ _%ctx194471%_ _%stx194472%_ _%args194473%_)
        (let* ((_%self194475%_ _%self192551194469%_)
               (_%self194477%_ _%self194475%_)
               (_%arguments-ok?194487%_
                (let ((__method197304
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194477%_ 'check-arguments))))
                  (if __method197304
                      (let ()
                        (declare (not safe))
                        (__method197304
                         _%self194477%_
                         _%ctx194471%_
                         _%stx194472%_
                         _%args194473%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194477%_
                                 'check-arguments))
                        '#!void))))
               (_%g194489194503%_
                (lambda (_%g194490194500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194490194500%_))))
               (_%g194488194582%_
                (lambda (_%g194490194506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194490194506%_))
                      (let ((_%e194493194508%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194490194506%_))))
                        (let ((_%hd194494194511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194493194508%_)))
                              (_%tl194495194513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194493194508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194495194513%_))
                              (let ((_%e194496194516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194495194513%_))))
                                (let ((_%hd194497194519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194496194516%_)))
                                      (_%tl194498194521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194496194516%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194498194521%_))
                                      ((lambda (_%L194524%_ _%L194525%_)
                                         (let* ((_%klass194541%_
                                                 (let ((__tmp197379
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194477%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx194472%_
                                                    __tmp197379)))
                                                (_%field194543%_
                                                 (let ((__tmp197380
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194477%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass194541%_
                                                    __tmp197380)))
                                                (_%object194545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194471%_
                                                    _%L194525%_)))
                                                (_%value194547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx194471%_
                                                    _%L194524%_)))
                                                (_%klass194550%_
                                                 _%klass194541%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194550%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp197381
                                                      (cons (if (or _%arguments-ok?194487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194477%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194477%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194543%_ '()))
                                (cons _%object194545%_
                                      (cons _%value194547%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp197381
                                                  _%stx194472%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194550%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197382
                                                          (cons (if (or _%arguments-ok?194487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194477%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194477%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194543%_ '()))
                                    (cons _%object194545%_
                                          (cons _%value194547%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197382
                                                      _%stx194472%_))
                                                   (let ((_%$e194570%_
                                                          (let ((__tmp197383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194477%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass194550%_
                     __tmp197383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e194570%_
                                                         ((lambda (_%klass194573%_)
                                                            (let ((__tmp197384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?194487%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194477%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self194477%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field194543%_ '()))
                                             (cons _%object194545%_
                                                   (cons _%value194547%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197384 _%stx194472%_)))
                  _%$e194570%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self194477%_ '4 '#f '#f))
                     (let ((__tmp197385
                            (let ((_%$obj194579%_
                                   (let ((__tmp197386
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp197386))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj194579%_ '())
                                                      (cons _%object194545%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass194550%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj194579%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194477%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field194543%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194579%_
                                                              '()))
                                                  (cons _%value194547%_
                                                        '())))))
                          (cons (if _%arguments-ok?194487%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self194477%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value194547%_ '())))))
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
                             _%self194477%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj194579%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194477%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value194547%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp197385 _%stx194472%_))
                     (let ((__tmp197387
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object194545%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194477%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value194547%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp197387
                        _%stx194472%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd194497194519%_
                                       _%hd194494194511%_)
                                      (_%g194489194503%_ _%g194490194506%_))))
                              (_%g194489194503%_ _%g194490194506%_))))
                      (_%g194489194503%_ _%g194490194506%_)))))
          (_%g194488194582%_ _%args194473%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass196596 __method-table196597)
        (let ((__check-arguments196598
               (let ((__tmp197388
                      (lambda ()
                        (let ((__method196599
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196597
                                  'check-arguments
                                  '#f))))
                          (if __method196599
                              __method196599
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp197388))))
          (lambda (_%self192551194469%_
                   _%ctx194471%_
                   _%stx194472%_
                   _%args194473%_)
            (let* ((_%self194475%_ _%self192551194469%_)
                   (_%self194477%_ _%self194475%_)
                   (_%arguments-ok?194487%_
                    ((force __check-arguments196598)
                     _%self194477%_
                     _%ctx194471%_
                     _%stx194472%_
                     _%args194473%_))
                   (_%g194489194503%_
                    (lambda (_%g194490194500%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194490194500%_))))
                   (_%g194488194582%_
                    (lambda (_%g194490194506%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194490194506%_))
                          (let ((_%e194493194508%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194490194506%_))))
                            (let ((_%hd194494194511%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194493194508%_)))
                                  (_%tl194495194513%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194493194508%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194495194513%_))
                                  (let ((_%e194496194516%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194495194513%_))))
                                    (let ((_%hd194497194519%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194496194516%_)))
                                          (_%tl194498194521%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194496194516%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194498194521%_))
                                          ((lambda (_%L194524%_ _%L194525%_)
                                             (let* ((_%klass194541%_
                                                     (let ((__tmp197389
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194477%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx194472%_
                                                        __tmp197389)))
                                                    (_%field194543%_
                                                     (let ((__tmp197390
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194477%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass194541%_
                                                        __tmp197390)))
                                                    (_%object194545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194471%_
                                                        _%L194525%_)))
                                                    (_%value194547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194471%_
                                                        _%L194524%_)))
                                                    (_%klass194550%_
                                                     _%klass194541%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass194550%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp197391
                                                          (cons (if (or _%arguments-ok?194487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self194477%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194477%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194543%_ '()))
                                    (cons _%object194545%_
                                          (cons _%value194547%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp197391
                                                      _%stx194472%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass194550%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp197392
                                                              (cons (if (or _%arguments-ok?194487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self194477%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194477%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194543%_ '()))
                                        (cons _%object194545%_
                                              (cons _%value194547%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp197392 _%stx194472%_))
               (let ((_%$e194570%_
                      (let ((__tmp197393
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194477%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass194550%_
                         __tmp197393))))
                 (if _%$e194570%_
                     ((lambda (_%klass194573%_)
                        (let ((__tmp197394
                               (cons (if (or _%arguments-ok?194487%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self194477%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self194477%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field194543%_
                                                             '()))
                                                 (cons _%object194545%_
                                                       (cons _%value194547%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp197394 _%stx194472%_)))
                      _%$e194570%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194477%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp197395
                                (let ((_%$obj194579%_
                                       (let ((__tmp197396
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp197396))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj194579%_
                                                                '())
                                                          (cons _%object194545%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass194550%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194579%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self194477%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field194543%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value194547%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?194487%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj194579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self194477%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value194547%_ '())))))
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
                                 _%self194477%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj194579%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194477%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value194547%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp197395 _%stx194472%_))
                         (let ((__tmp197397
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object194545%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194477%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value194547%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp197397
                            _%stx194472%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd194497194519%_
                                           _%hd194494194511%_)
                                          (_%g194489194503%_
                                           _%g194490194506%_))))
                                  (_%g194489194503%_ _%g194490194506%_))))
                          (_%g194489194503%_ _%g194490194506%_)))))
              (_%g194488194582%_ _%args194473%_))))))
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
      (lambda (_%self192552194282%_ _%ctx194284%_ _%stx194285%_ _%args194286%_)
        (let* ((_%self194288%_ _%self192552194282%_)
               (_%self194290%_ _%self194288%_)
               (_%self194299194309%_ _%self194290%_)
               (_%E194301194313%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194299194309%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K194302194323%_
                (lambda (_%inline194316%_ _%dispatch194317%_ _%arity194318%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self194290%_
                         _%args194286%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx194285%_
                         _%arity194318%_)))
                  (if _%inline194316%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp197398 (_%inline194316%_ _%stx194285%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp197398
                           _%stx194285%_
                           _%ctx194284%_)))
                      (if (and _%dispatch194317%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch194317%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch194317%_))
                            (let ((__tmp197399
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch194317%_
                                                           '()))
                                               _%args194286%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp197399
                               _%stx194285%_
                               _%ctx194284%_)))
                          (gxc#!procedure::optimize-call
                           _%self194290%_
                           _%ctx194284%_
                           _%stx194285%_
                           _%args194286%_)))))
               (_%e194303194326%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194299194309%_ '1 '#f '#f)))
               (_%e194304194329%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194299194309%_ '2 '#f '#f)))
               (_%e194305194332%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194299194309%_ '3 '#f '#f)))
               (_%arity194335%_ _%e194305194332%_)
               (_%e194306194337%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194299194309%_ '4 '#f '#f)))
               (_%dispatch194340%_ _%e194306194337%_)
               (_%e194307194342%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194299194309%_ '5 '#f '#f)))
               (_%inline194345%_ _%e194307194342%_))
          (_%K194302194323%_
           _%inline194345%_
           _%dispatch194340%_
           _%arity194335%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self192553194132%_ _%ctx194134%_ _%stx194135%_ _%args194136%_)
        (let* ((_%self194138%_ _%self192553194132%_)
               (_%self194140%_ _%self194138%_)
               (_%$e194154%_
                (let ((__tmp197401
                       (lambda (_%g194149194151%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g194149194151%_
                            _%args194136%_))))
                      (__tmp197400
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194140%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp197401 __tmp197400))))
          (if _%$e194154%_
              ((lambda (_%clause194157%_)
                 (let ((__method197305
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause194157%_ 'optimize-call))))
                   (if __method197305
                       (let ()
                         (declare (not safe))
                         (__method197305
                          _%clause194157%_
                          _%ctx194134%_
                          _%stx194135%_
                          _%args194136%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause194157%_
                                  'optimize-call))
                         '#!void))))
               _%$e194154%_)
              (let ((__tmp197402
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194140%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx194135%_
                 __tmp197402))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self192554193870%_ _%ctx193872%_ _%stx193873%_ _%args193874%_)
        (let* ((_%self193876%_ _%self192554193870%_)
               (_%self193878%_ _%self193876%_)
               (_%self193887193896%_ _%self193878%_)
               (_%E193889193900%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193887193896%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K193890193991%_
                (lambda (_%dispatch193903%_ _%table193904%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch193903%_))
                      (let* ((_%g193905193915%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch193903%_)))
                             (_%else193907193923%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch193903%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx193872%_
                                   _%stx193873%_))))
                             (_%K193909193972%_
                              (lambda (_%main193926%_ _%keys193927%_)
                                (let ((_g197403_
                                       (gxc#!kw-lambda-split-args
                                        _%stx193873%_
                                        _%args193874%_)))
                                  (begin
                                    (let ((_g197404_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g197403_)
                                                 (##vector-length _g197403_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g197404_ 2)))
                                          (error "Context expects 2 values"
                                                 _g197404_)))
                                    (let ((_%pargs193929%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g197403_ 0)))
                                          (_%kwargs193930%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g197403_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main193926%_))
                                        (if _%table193904%_
                                            (let ((_%xargs193938%_
                                                   (map (lambda (_%key193932%_)
                                                          (let ((_%$e193934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key193932%_ _%kwargs193930%_))))
                    (if _%$e193934%_ _%$e193934%_ '(%#ref absent-value))))
                _%keys193927%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw193940%_)
                                                 (if (memq (car _%kw193940%_)
                                                           _%keys193927%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx193873%_
                                                        _%keys193927%_
                                                        _%kw193940%_))))
                                               _%kwargs193930%_)
                                              (let ((__tmp197405
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main193926%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs193929%_
                                  _%xargs193938%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp197405
                                                 _%stx193873%_
                                                 _%ctx193872%_)))
                                            (let* ((_%kwt193942%_
                                                    (let ((__tmp197406
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp197406)))
                                                   (_%kwvars193946%_
                                                    (map (lambda (_%_193944%_)
                                                           (let ((__tmp197407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp197407)))
                 _%kwargs193930%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind193951%_
                                                    (map (lambda (_%kw193948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193949%_)
                   (cons (cons _%kwvar193949%_ '())
                         (cons (cdr _%kw193948%_) '())))
                 _%kwargs193930%_
                 _%kwvars193946%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset193956%_
                                                    (map (lambda (_%kw193953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193954%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt193942%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw193953%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar193954%_
                                                             '()))
                                                 '()))))))
                 _%kwargs193930%_
                 _%kwvars193946%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs193961%_
                                                    (map (lambda (_%kw193958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193959%_)
                   (cons (car _%kw193958%_)
                         (cons '%#ref (cons _%kwvar193959%_ '()))))
                 _%kwargs193930%_
                 _%kwvars193946%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs193969%_
                                                    (map (lambda (_%key193963%_)
                                                           (let ((_%$e193965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key193963%_ _%xkwargs193961%_))))
                     (if _%$e193965%_ _%$e193965%_ '(%#ref absent-value))))
                 _%keys193927%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp197408
                                                    (cons '%#let-values
                                                          (cons _%kwbind193951%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt193942%_ '())
                                                      (cons (let ((__tmp197409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs193930%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197409 _%stx193873%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp197410
                                                             (cons (let ((__tmp197411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main193926%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt193942%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs193929%_
                                                       _%xargs193969%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp197411 _%stx193873%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp197410 _%kwset193956%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp197408
                                               _%stx193873%_
                                               _%ctx193872%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g193905193915%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e193910193975%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193905193915%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e193911193978%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193905193915%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e193912193981%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193905193915%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys193984%_ _%e193912193981%_)
                                   (_%e193913193986%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193905193915%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main193989%_ _%e193913193986%_))
                              (_%K193909193972%_
                               _%main193989%_
                               _%keys193984%_))
                            (_%else193907193923%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx193872%_ _%stx193873%_)))))
               (_%e193891193994%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193887193896%_ '1 '#f '#f)))
               (_%e193892193997%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193887193896%_ '2 '#f '#f)))
               (_%e193893194000%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193887193896%_ '3 '#f '#f)))
               (_%table194003%_ _%e193893194000%_)
               (_%e193894194005%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193887193896%_ '4 '#f '#f)))
               (_%dispatch194008%_ _%e193894194005%_))
          (_%K193890193991%_ _%dispatch194008%_ _%table194003%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx193483%_ _%args193484%_)
        (let _%lp193486%_ ((_%rest193488%_ _%args193484%_)
                           (_%pargs193489%_ '())
                           (_%kwargs193490%_ '()))
          (let* ((_%__stx196864196865%_ _%rest193488%_)
                 (_%g193496193548%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx196864196865%_)))))
            (let ((_%__kont196866196867%_
                   (lambda (_%L193727%_ _%L193728%_)
                     (_%lp193486%_
                      _%L193727%_
                      (cons _%L193728%_ _%pargs193489%_)
                      _%kwargs193490%_)))
                  (_%__kont196868196869%_
                   (lambda (_%L193673%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L193673%_ _%pargs193489%_))
                             (reverse _%kwargs193490%_))))
                  (_%__kont196870196871%_
                   (lambda (_%L193620%_ _%L193621%_ _%L193622%_)
                     (let ((_%kw193639%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L193622%_))))
                       (if (assq _%kw193639%_ _%kwargs193490%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx193483%_
                              _%kw193639%_))
                           (_%lp193486%_
                            _%L193620%_
                            _%pargs193489%_
                            (cons (cons _%kw193639%_ _%L193621%_)
                                  _%kwargs193490%_))))))
                  (_%__kont196872196873%_
                   (lambda (_%L193568%_ _%L193569%_)
                     (_%lp193486%_
                      _%L193568%_
                      (cons _%L193569%_ _%pargs193489%_)
                      _%kwargs193490%_)))
                  (_%__kont196874196875%_
                   (lambda ()
                     (values (reverse _%pargs193489%_)
                             (reverse _%kwargs193490%_)))))
              (let ((_%__match196971196972%_
                     (lambda (_%e193527193588%_
                              _%hd193528193591%_
                              _%tl193529193593%_
                              _%e193530193596%_
                              _%hd193531193599%_
                              _%tl193532193601%_
                              _%e193533193604%_
                              _%hd193534193607%_
                              _%tl193535193609%_
                              _%e193536193612%_
                              _%hd193537193615%_
                              _%tl193538193617%_)
                       (let ((_%L193620%_ _%tl193538193617%_)
                             (_%L193621%_ _%hd193537193615%_)
                             (_%L193622%_ _%hd193534193607%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L193622%_))
                             (_%__kont196870196871%_
                              _%L193620%_
                              _%L193621%_
                              _%L193622%_)
                             (_%__kont196872196873%_
                              _%tl193529193593%_
                              _%hd193528193591%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx196864196865%_))
                    (let ((_%e193500193692%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx196864196865%_))))
                      (let ((_%tl193502193697%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193500193692%_)))
                            (_%hd193501193695%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193500193692%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193501193695%_))
                            (let ((_%e193503193700%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193501193695%_))))
                              (let ((_%tl193505193705%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193503193700%_)))
                                    (_%hd193504193703%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193503193700%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193504193703%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193504193703%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193505193705%_))
                                            (let ((_%e193506193708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193505193705%_))))
                                              (let ((_%tl193508193713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193506193708%_)))
                                                    (_%hd193507193711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193506193708%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd193507193711%_))
                                                    (let ((_%e193509193716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd193507193711%_))))
                                                      (if (equal? _%e193509193716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193508193713%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193502193697%_))
                          (let ((_%e193510193719%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193502193697%_))))
                            (let ((_%tl193512193724%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193510193719%_)))
                                  (_%hd193511193722%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193510193719%_))))
                              (_%__kont196866196867%_
                               _%tl193512193724%_
                               _%hd193511193722%_)))
                          (_%__kont196872196873%_
                           _%tl193502193697%_
                           _%hd193501193695%_))
                      (_%__kont196872196873%_
                       _%tl193502193697%_
                       _%hd193501193695%_))
                  (if (equal? _%e193509193716%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193508193713%_))
                          (_%__kont196868196869%_ _%tl193502193697%_)
                          (_%__kont196872196873%_
                           _%tl193502193697%_
                           _%hd193501193695%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193508193713%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193502193697%_))
                              (let ((_%e193536193612%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193502193697%_))))
                                (let ((_%tl193538193617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193536193612%_)))
                                      (_%hd193537193615%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193536193612%_))))
                                  (_%__match196971196972%_
                                   _%e193500193692%_
                                   _%hd193501193695%_
                                   _%tl193502193697%_
                                   _%e193503193700%_
                                   _%hd193504193703%_
                                   _%tl193505193705%_
                                   _%e193506193708%_
                                   _%hd193507193711%_
                                   _%tl193508193713%_
                                   _%e193536193612%_
                                   _%hd193537193615%_
                                   _%tl193538193617%_)))
                              (_%__kont196872196873%_
                               _%tl193502193697%_
                               _%hd193501193695%_))
                          (_%__kont196872196873%_
                           _%tl193502193697%_
                           _%hd193501193695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193508193713%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193502193697%_))
                                                            (let ((_%e193536193612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193502193697%_))))
                      (let ((_%tl193538193617%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193536193612%_)))
                            (_%hd193537193615%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193536193612%_))))
                        (_%__match196971196972%_
                         _%e193500193692%_
                         _%hd193501193695%_
                         _%tl193502193697%_
                         _%e193503193700%_
                         _%hd193504193703%_
                         _%tl193505193705%_
                         _%e193506193708%_
                         _%hd193507193711%_
                         _%tl193508193713%_
                         _%e193536193612%_
                         _%hd193537193615%_
                         _%tl193538193617%_)))
                    (_%__kont196872196873%_
                     _%tl193502193697%_
                     _%hd193501193695%_))
                (_%__kont196872196873%_
                 _%tl193502193697%_
                 _%hd193501193695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont196872196873%_
                                             _%tl193502193697%_
                                             _%hd193501193695%_))
                                        (_%__kont196872196873%_
                                         _%tl193502193697%_
                                         _%hd193501193695%_))
                                    (_%__kont196872196873%_
                                     _%tl193502193697%_
                                     _%hd193501193695%_))))
                            (_%__kont196872196873%_
                             _%tl193502193697%_
                             _%hd193501193695%_))))
                    (_%__kont196874196875%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self192555193465%_ _%ctx193467%_ _%stx193468%_ _%args193469%_)
        (let* ((_%self193471%_ _%self192555193465%_)
               (_%self193473%_ _%self193471%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx193467%_ _%stx193468%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self193153%_ _%stx193154%_)
        (let* ((_%__stx196980196981%_ _%stx193154%_)
               (_%g193157193197%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196980196981%_)))))
          (let ((_%__kont196982196983%_
                 (lambda (_%L193303%_ _%L193304%_)
                   (let ((_%$e193331%_
                          (member 'return:
                                  (let ((__tmp197412
                                         (lambda (_%g193323193326%_
                                                  _%g193324193328%_)
                                           (cons _%g193323193326%_
                                                 _%g193324193328%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp197412 '() _%L193304%_))
                                  gx#stx-eq?)))
                     (if _%$e193331%_
                         ((lambda (_%tail193334%_)
                            (let ((_%type193336%_
                                   (let ((__tmp197413
                                          (let ((__tmp197414
                                                 (cadr _%tail193334%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp197414))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx193154%_
                                      __tmp197413))))
                              (gxc#check-return-type!
                               _%stx193154%_
                               _%L193303%_
                               _%type193336%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self193153%_
                                 _%L193303%_))))
                          _%$e193331%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self193153%_ _%L193303%_))))))
                (_%__kont196986196987%_
                 (lambda (_%L193226%_ _%L193227%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self193153%_ _%L193226%_)))))
            (let ((_%__match197017197018%_
                   (lambda (_%e193161193247%_
                            _%hd193162193250%_
                            _%tl193163193252%_
                            _%e193164193255%_
                            _%hd193165193258%_
                            _%tl193166193260%_
                            _%e193167193263%_
                            _%hd193168193266%_
                            _%tl193169193268%_
                            _%__splice196984196985%_
                            _%target193170193271%_
                            _%tl193172193273%_)
                     (letrec ((_%loop193173193276%_
                               (lambda (_%hd193171193279%_
                                        _%signature193177193281%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193171193279%_))
                                     (let ((_%e193174193284%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193171193279%_))))
                                       (let ((_%lp-tl193176193289%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193174193284%_)))
                                             (_%lp-hd193175193287%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193174193284%_))))
                                         (_%loop193173193276%_
                                          _%lp-tl193176193289%_
                                          (cons _%lp-hd193175193287%_
                                                _%signature193177193281%_))))
                                     (let ((_%signature193178193292%_
                                            (reverse _%signature193177193281%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl193166193260%_))
                                           (let ((_%e193179193295%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl193166193260%_))))
                                             (let ((_%tl193181193300%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e193179193295%_)))
                                                   (_%hd193180193298%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e193179193295%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl193181193300%_))
                                                   (_%__kont196982196983%_
                                                    _%hd193180193298%_
                                                    _%signature193178193292%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g193157193197%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g193157193197%_))))))))
                       (_%loop193173193276%_ _%target193170193271%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196980196981%_))
                  (let ((_%e193161193247%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196980196981%_))))
                    (let ((_%tl193163193252%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193161193247%_)))
                          (_%hd193162193250%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193161193247%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193163193252%_))
                          (let ((_%e193164193255%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193163193252%_))))
                            (let ((_%tl193166193260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193164193255%_)))
                                  (_%hd193165193258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193164193255%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193165193258%_))
                                  (let ((_%e193167193263%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193165193258%_))))
                                    (let ((_%tl193169193268%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193167193263%_)))
                                          (_%hd193168193266%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193167193263%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193168193266%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd193168193266%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl193169193268%_))
                                                  (let ((_%__splice196984196985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl193169193268%_
                                                            '0))))
                                                    (let ((_%tl193172193273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196984196985%_
                                                              '1)))
                                                          (_%target193170193271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196984196985%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193172193273%_))
                                                          (_%__match197017197018%_
                                                           _%e193161193247%_
                                                           _%hd193162193250%_
                                                           _%tl193163193252%_
                                                           _%e193164193255%_
                                                           _%hd193165193258%_
                                                           _%tl193166193260%_
                                                           _%e193167193263%_
                                                           _%hd193168193266%_
                                                           _%tl193169193268%_
                                                           _%__splice196984196985%_
                                                           _%target193170193271%_
                                                           _%tl193172193273%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193166193260%_))
                      (let ((_%e193190193218%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193166193260%_))))
                        (let ((_%tl193192193223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193190193218%_)))
                              (_%hd193191193221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193190193218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193192193223%_))
                              (_%__kont196986196987%_
                               _%hd193191193221%_
                               _%hd193165193258%_)
                              (let ()
                                (declare (not safe))
                                (_%g193157193197%_)))))
                      (let () (declare (not safe)) (_%g193157193197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193166193260%_))
                                                      (let ((_%e193190193218%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193166193260%_))))
                (let ((_%tl193192193223%_
                       (let () (declare (not safe)) (##cdr _%e193190193218%_)))
                      (_%hd193191193221%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193190193218%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193192193223%_))
                      (_%__kont196986196987%_
                       _%hd193191193221%_
                       _%hd193165193258%_)
                      (let () (declare (not safe)) (_%g193157193197%_)))))
              (let () (declare (not safe)) (_%g193157193197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193166193260%_))
                                                  (let ((_%e193190193218%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193166193260%_))))
                                                    (let ((_%tl193192193223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193190193218%_)))
                                                          (_%hd193191193221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193190193218%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193192193223%_))
                                                          (_%__kont196986196987%_
                                                           _%hd193191193221%_
                                                           _%hd193165193258%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193157193197%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193157193197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193166193260%_))
                                              (let ((_%e193190193218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193166193260%_))))
                                                (let ((_%tl193192193223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193190193218%_)))
                                                      (_%hd193191193221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193190193218%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193192193223%_))
                                                      (_%__kont196986196987%_
                                                       _%hd193191193221%_
                                                       _%hd193165193258%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193157193197%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193157193197%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193166193260%_))
                                      (let ((_%e193190193218%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193166193260%_))))
                                        (let ((_%tl193192193223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193190193218%_)))
                                              (_%hd193191193221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193190193218%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193192193223%_))
                                              (_%__kont196986196987%_
                                               _%hd193191193221%_
                                               _%hd193165193258%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g193157193197%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193157193197%_))))))
                          (let () (declare (not safe)) (_%g193157193197%_)))))
                  (let () (declare (not safe)) (_%g193157193197%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx193131%_ _%expr193132%_ _%type193133%_)
        (let ((_%$e193135%_ (not _%type193133%_)))
          (if _%$e193135%_
              _%$e193135%_
              (let ((_%$e193138%_
                     (eq? (##structure-ref _%type193133%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e193138%_
                    _%$e193138%_
                    (let ((_%expr-type193142%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr193132%_))))
                      (if (not _%expr-type193142%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx193131%_
                             _%type193133%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type193142%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx193131%_
                                 _%type193133%_
                                 _%expr-type193142%_))
                              (let ((_%$e193146%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type193142%_
                                        'gxc#!abort::t))))
                                (if _%$e193146%_
                                    _%$e193146%_
                                    (let ((_%$e193149%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type193142%_
                                              _%type193133%_))))
                                      (if _%$e193149%_
                                          _%$e193149%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx193131%_
                                             _%type193133%_
                                             _%expr-type193142%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self192557%_ _%stx192558%_)
        (let* ((_%__stx197062197063%_ _%stx192558%_)
               (_%g192563192673%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197062197063%_)))))
          (let ((_%__kont197064197065%_
                 (lambda (_%L193105%_ _%L193106%_ _%L193107%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L193107%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192557%_ _%L193106%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self192557%_ _%L193105%_)))))
                (_%__kont197066197067%_
                 (lambda (_%L192931%_ _%L192932%_ _%L192933%_ _%L192934%_)
                   (let ((_%$e192966%_
                          (let ((__tmp197415
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L192934%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp197415))))
                     (if _%$e192966%_
                         ((lambda (_%pred-type192969%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type192969%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type192969%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test192974%_
                                        (let ((__tmp197416
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L192934%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L192933%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp197416
                                           _%stx192558%_
                                           _%self192557%_)))
                                       (_%K192978%_
                                        (let ((__tmp197417
                                               (lambda ()
                                                 (let ((__tmp197420
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self192557%_
                                                             _%L192932%_))))
                                                       (__tmp197418
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L192933%_))
                            (let ((__tmp197419
                                   (##structure-ref
                                    _%pred-type192969%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx192558%_
                               __tmp197419)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp197420
                                                    gxc#current-compile-path-type
                                                    __tmp197418)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197417)))
                                       (_%E192981%_
                                        (let ((__tmp197421
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self192557%_
                                                    _%L192931%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp197421)))
                                       (_%__stx197040197041%_ _%test192974%_)
                                       (_%g192985192999%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx197040197041%_)))))
                                  (let ((_%__kont197042197043%_
                                         (lambda (_%L193027%_ _%L193028%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L193027%_))
                                               (force _%K192978%_)
                                               (force _%E192981%_))))
                                        (_%__kont197044197045%_
                                         (lambda ()
                                           (let ((__tmp197422
                                                  (cons '%#if
                                                        (cons _%test192974%_
                                                              (cons (force _%K192978%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E192981%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp197422
                                              _%stx192558%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx197040197041%_))
                                        (let ((_%e192989193011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx197040197041%_))))
                                          (let ((_%tl192991193016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192989193011%_)))
                                                (_%hd192990193014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192989193011%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192991193016%_))
                                                (let ((_%e192992193019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192991193016%_))))
                                                  (let ((_%tl192994193024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192992193019%_)))
                                                        (_%hd192993193022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192992193019%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192994193024%_))
                                                        (_%__kont197042197043%_
                                                         _%hd192993193022%_
                                                         _%hd192990193014%_)
                                                        (_%__kont197044197045%_))))
                                                (_%__kont197044197045%_))))
                                        (_%__kont197044197045%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self192557%_
                                   _%stx192558%_))))
                          _%$e192966%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self192557%_
                            _%stx192558%_))))))
                (_%__kont197068197069%_
                 (lambda (_%L192807%_ _%L192808%_ _%L192809%_ _%L192810%_)
                   (gxc#optimize-if%
                    _%self192557%_
                    (let ((__tmp197423
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L192809%_
                                       (cons _%L192807%_
                                             (cons _%L192808%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp197423 _%stx192558%_)))))
                (_%__kont197070197071%_
                 (lambda (_%L192710%_ _%L192711%_ _%L192712%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self192557%_ _%stx192558%_)))))
            (let ((_%__match197269197270%_
                   (lambda (_%e192627192735%_
                            _%hd192628192738%_
                            _%tl192629192740%_
                            _%e192630192743%_
                            _%hd192631192746%_
                            _%tl192632192748%_
                            _%e192633192751%_
                            _%hd192634192754%_
                            _%tl192635192756%_
                            _%e192636192759%_
                            _%hd192637192762%_
                            _%tl192638192764%_
                            _%e192639192767%_
                            _%hd192640192770%_
                            _%tl192641192772%_
                            _%e192642192775%_
                            _%hd192643192778%_
                            _%tl192644192780%_
                            _%e192645192783%_
                            _%hd192646192786%_
                            _%tl192647192788%_
                            _%e192648192791%_
                            _%hd192649192794%_
                            _%tl192650192796%_
                            _%e192651192799%_
                            _%hd192652192802%_
                            _%tl192653192804%_)
                     (let ((_%L192807%_ _%hd192652192802%_)
                           (_%L192808%_ _%hd192649192794%_)
                           (_%L192809%_ _%hd192646192786%_)
                           (_%L192810%_ _%hd192643192778%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L192810%_ 'not))
                           (_%__kont197068197069%_
                            _%L192807%_
                            _%L192808%_
                            _%L192809%_
                            _%L192810%_)
                           (_%__kont197070197071%_
                            _%hd192652192802%_
                            _%hd192649192794%_
                            _%hd192631192746%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197062197063%_))
                  (let ((_%e192568193057%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197062197063%_))))
                    (let ((_%tl192570193062%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192568193057%_)))
                          (_%hd192569193060%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192568193057%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192570193062%_))
                          (let ((_%e192571193065%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192570193062%_))))
                            (let ((_%tl192573193070%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192571193065%_)))
                                  (_%hd192572193068%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192571193065%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192572193068%_))
                                  (let ((_%e192574193073%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192572193068%_))))
                                    (let ((_%tl192576193078%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192574193073%_)))
                                          (_%hd192575193076%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192574193073%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192575193076%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd192575193076%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192576193078%_))
                                                  (let ((_%e192577193081%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192576193078%_))))
                                                    (let ((_%tl192579193086%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192577193081%_)))
                                                          (_%hd192578193084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192577193081%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192579193086%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192573193070%_))
                      (let ((_%e192580193089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192573193070%_))))
                        (let ((_%tl192582193094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192580193089%_)))
                              (_%hd192581193092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192580193089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192582193094%_))
                              (let ((_%e192583193097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192582193094%_))))
                                (let ((_%tl192585193102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192583193097%_)))
                                      (_%hd192584193100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192583193097%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192585193102%_))
                                      (_%__kont197064197065%_
                                       _%hd192584193100%_
                                       _%hd192581193092%_
                                       _%hd192578193084%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192563192673%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192563192673%_)))))
                      (let () (declare (not safe)) (_%g192563192673%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192573193070%_))
                      (let ((_%e192663192694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192573193070%_))))
                        (let ((_%tl192665192699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192663192694%_)))
                              (_%hd192664192697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192663192694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192665192699%_))
                              (let ((_%e192666192702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192665192699%_))))
                                (let ((_%tl192668192707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192666192702%_)))
                                      (_%hd192667192705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192666192702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192668192707%_))
                                      (_%__kont197070197071%_
                                       _%hd192667192705%_
                                       _%hd192664192697%_
                                       _%hd192572193068%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g192563192673%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g192563192673%_)))))
                      (let () (declare (not safe)) (_%g192563192673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192573193070%_))
                                                      (let ((_%e192663192694%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192573193070%_))))
                (let ((_%tl192665192699%_
                       (let () (declare (not safe)) (##cdr _%e192663192694%_)))
                      (_%hd192664192697%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192663192694%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192665192699%_))
                      (let ((_%e192666192702%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192665192699%_))))
                        (let ((_%tl192668192707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192666192702%_)))
                              (_%hd192667192705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192666192702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192668192707%_))
                              (_%__kont197070197071%_
                               _%hd192667192705%_
                               _%hd192664192697%_
                               _%hd192572193068%_)
                              (let ()
                                (declare (not safe))
                                (_%g192563192673%_)))))
                      (let () (declare (not safe)) (_%g192563192673%_)))))
              (let () (declare (not safe)) (_%g192563192673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd192575193076%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192576193078%_))
                                                      (let ((_%e192599192867%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192576193078%_))))
                (let ((_%tl192601192872%_
                       (let () (declare (not safe)) (##cdr _%e192599192867%_)))
                      (_%hd192600192870%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192599192867%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192600192870%_))
                      (let ((_%e192602192875%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192600192870%_))))
                        (let ((_%tl192604192880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192602192875%_)))
                              (_%hd192603192878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192602192875%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192603192878%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192603192878%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192604192880%_))
                                      (let ((_%e192605192883%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192604192880%_))))
                                        (let ((_%tl192607192888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192605192883%_)))
                                              (_%hd192606192886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192605192883%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192607192888%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192601192872%_))
                                                  (let ((_%e192608192891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192601192872%_))))
                                                    (let ((_%tl192610192896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192608192891%_)))
                                                          (_%hd192609192894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192608192891%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192609192894%_))
                                                          (let ((_%e192611192899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192609192894%_))))
                    (let ((_%tl192613192904%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192611192899%_)))
                          (_%hd192612192902%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192611192899%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192612192902%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd192612192902%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192613192904%_))
                                  (let ((_%e192614192907%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192613192904%_))))
                                    (let ((_%tl192616192912%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192614192907%_)))
                                          (_%hd192615192910%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192614192907%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192616192912%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192610192896%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192573193070%_))
                                                  (let ((_%e192617192915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192573193070%_))))
                                                    (let ((_%tl192619192920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192617192915%_)))
                                                          (_%hd192618192918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192617192915%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192619192920%_))
                                                          (let ((_%e192620192923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192619192920%_))))
                    (let ((_%tl192622192928%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192620192923%_)))
                          (_%hd192621192926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192620192923%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192622192928%_))
                          (_%__kont197066197067%_
                           _%hd192621192926%_
                           _%hd192618192918%_
                           _%hd192615192910%_
                           _%hd192606192886%_)
                          (let () (declare (not safe)) (_%g192563192673%_)))))
                  (let () (declare (not safe)) (_%g192563192673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192573193070%_))
                                                  (let ((_%e192663192694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192573193070%_))))
                                                    (let ((_%tl192665192699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192663192694%_)))
                                                          (_%hd192664192697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192663192694%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192665192699%_))
                                                          (let ((_%e192666192702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192665192699%_))))
                    (let ((_%tl192668192707%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192666192702%_)))
                          (_%hd192667192705%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192666192702%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192668192707%_))
                          (_%__kont197070197071%_
                           _%hd192667192705%_
                           _%hd192664192697%_
                           _%hd192572193068%_)
                          (let () (declare (not safe)) (_%g192563192673%_)))))
                  (let () (declare (not safe)) (_%g192563192673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192610192896%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192573193070%_))
                                                  (let ((_%e192648192791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192573193070%_))))
                                                    (let ((_%tl192650192796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192648192791%_)))
                                                          (_%hd192649192794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192648192791%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192650192796%_))
                                                          (let ((_%e192651192799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192650192796%_))))
                    (let ((_%tl192653192804%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192651192799%_)))
                          (_%hd192652192802%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192651192799%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192653192804%_))
                          (_%__match197269197270%_
                           _%e192568193057%_
                           _%hd192569193060%_
                           _%tl192570193062%_
                           _%e192571193065%_
                           _%hd192572193068%_
                           _%tl192573193070%_
                           _%e192574193073%_
                           _%hd192575193076%_
                           _%tl192576193078%_
                           _%e192599192867%_
                           _%hd192600192870%_
                           _%tl192601192872%_
                           _%e192602192875%_
                           _%hd192603192878%_
                           _%tl192604192880%_
                           _%e192605192883%_
                           _%hd192606192886%_
                           _%tl192607192888%_
                           _%e192608192891%_
                           _%hd192609192894%_
                           _%tl192610192896%_
                           _%e192648192791%_
                           _%hd192649192794%_
                           _%tl192650192796%_
                           _%e192651192799%_
                           _%hd192652192802%_
                           _%tl192653192804%_)
                          (let () (declare (not safe)) (_%g192563192673%_)))))
                  (let () (declare (not safe)) (_%g192563192673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192573193070%_))
                                                  (let ((_%e192663192694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192573193070%_))))
                                                    (let ((_%tl192665192699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192663192694%_)))
                                                          (_%hd192664192697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192663192694%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192665192699%_))
                                                          (let ((_%e192666192702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192665192699%_))))
                    (let ((_%tl192668192707%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192666192702%_)))
                          (_%hd192667192705%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192666192702%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192668192707%_))
                          (_%__kont197070197071%_
                           _%hd192667192705%_
                           _%hd192664192697%_
                           _%hd192572193068%_)
                          (let () (declare (not safe)) (_%g192563192673%_)))))
                  (let () (declare (not safe)) (_%g192563192673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192610192896%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192573193070%_))
                                          (let ((_%e192648192791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192573193070%_))))
                                            (let ((_%tl192650192796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192648192791%_)))
                                                  (_%hd192649192794%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192648192791%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192650192796%_))
                                                  (let ((_%e192651192799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192650192796%_))))
                                                    (let ((_%tl192653192804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192651192799%_)))
                                                          (_%hd192652192802%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192651192799%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192653192804%_))
                                                          (_%__match197269197270%_
                                                           _%e192568193057%_
                                                           _%hd192569193060%_
                                                           _%tl192570193062%_
                                                           _%e192571193065%_
                                                           _%hd192572193068%_
                                                           _%tl192573193070%_
                                                           _%e192574193073%_
                                                           _%hd192575193076%_
                                                           _%tl192576193078%_
                                                           _%e192599192867%_
                                                           _%hd192600192870%_
                                                           _%tl192601192872%_
                                                           _%e192602192875%_
                                                           _%hd192603192878%_
                                                           _%tl192604192880%_
                                                           _%e192605192883%_
                                                           _%hd192606192886%_
                                                           _%tl192607192888%_
                                                           _%e192608192891%_
                                                           _%hd192609192894%_
                                                           _%tl192610192896%_
                                                           _%e192648192791%_
                                                           _%hd192649192794%_
                                                           _%tl192650192796%_
                                                           _%e192651192799%_
                                                           _%hd192652192802%_
                                                           _%tl192653192804%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192563192673%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192563192673%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192573193070%_))
                                          (let ((_%e192663192694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192573193070%_))))
                                            (let ((_%tl192665192699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192663192694%_)))
                                                  (_%hd192664192697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192663192694%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192665192699%_))
                                                  (let ((_%e192666192702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192665192699%_))))
                                                    (let ((_%tl192668192707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192666192702%_)))
                                                          (_%hd192667192705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192666192702%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192668192707%_))
                                                          (_%__kont197070197071%_
                                                           _%hd192667192705%_
                                                           _%hd192664192697%_
                                                           _%hd192572193068%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192563192673%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192563192673%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192610192896%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192573193070%_))
                                      (let ((_%e192648192791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192573193070%_))))
                                        (let ((_%tl192650192796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192648192791%_)))
                                              (_%hd192649192794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192648192791%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192650192796%_))
                                              (let ((_%e192651192799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192650192796%_))))
                                                (let ((_%tl192653192804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192651192799%_)))
                                                      (_%hd192652192802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192651192799%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192653192804%_))
                                                      (_%__match197269197270%_
                                                       _%e192568193057%_
                                                       _%hd192569193060%_
                                                       _%tl192570193062%_
                                                       _%e192571193065%_
                                                       _%hd192572193068%_
                                                       _%tl192573193070%_
                                                       _%e192574193073%_
                                                       _%hd192575193076%_
                                                       _%tl192576193078%_
                                                       _%e192599192867%_
                                                       _%hd192600192870%_
                                                       _%tl192601192872%_
                                                       _%e192602192875%_
                                                       _%hd192603192878%_
                                                       _%tl192604192880%_
                                                       _%e192605192883%_
                                                       _%hd192606192886%_
                                                       _%tl192607192888%_
                                                       _%e192608192891%_
                                                       _%hd192609192894%_
                                                       _%tl192610192896%_
                                                       _%e192648192791%_
                                                       _%hd192649192794%_
                                                       _%tl192650192796%_
                                                       _%e192651192799%_
                                                       _%hd192652192802%_
                                                       _%tl192653192804%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192563192673%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192563192673%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192563192673%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192573193070%_))
                                      (let ((_%e192663192694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192573193070%_))))
                                        (let ((_%tl192665192699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192663192694%_)))
                                              (_%hd192664192697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192663192694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192665192699%_))
                                              (let ((_%e192666192702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192665192699%_))))
                                                (let ((_%tl192668192707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192666192702%_)))
                                                      (_%hd192667192705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192666192702%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192668192707%_))
                                                      (_%__kont197070197071%_
                                                       _%hd192667192705%_
                                                       _%hd192664192697%_
                                                       _%hd192572193068%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192563192673%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192563192673%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192563192673%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192610192896%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192573193070%_))
                                  (let ((_%e192648192791%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192573193070%_))))
                                    (let ((_%tl192650192796%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192648192791%_)))
                                          (_%hd192649192794%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192648192791%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192650192796%_))
                                          (let ((_%e192651192799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192650192796%_))))
                                            (let ((_%tl192653192804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192651192799%_)))
                                                  (_%hd192652192802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192651192799%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192653192804%_))
                                                  (_%__match197269197270%_
                                                   _%e192568193057%_
                                                   _%hd192569193060%_
                                                   _%tl192570193062%_
                                                   _%e192571193065%_
                                                   _%hd192572193068%_
                                                   _%tl192573193070%_
                                                   _%e192574193073%_
                                                   _%hd192575193076%_
                                                   _%tl192576193078%_
                                                   _%e192599192867%_
                                                   _%hd192600192870%_
                                                   _%tl192601192872%_
                                                   _%e192602192875%_
                                                   _%hd192603192878%_
                                                   _%tl192604192880%_
                                                   _%e192605192883%_
                                                   _%hd192606192886%_
                                                   _%tl192607192888%_
                                                   _%e192608192891%_
                                                   _%hd192609192894%_
                                                   _%tl192610192896%_
                                                   _%e192648192791%_
                                                   _%hd192649192794%_
                                                   _%tl192650192796%_
                                                   _%e192651192799%_
                                                   _%hd192652192802%_
                                                   _%tl192653192804%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192563192673%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192563192673%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192573193070%_))
                                  (let ((_%e192663192694%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192573193070%_))))
                                    (let ((_%tl192665192699%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192663192694%_)))
                                          (_%hd192664192697%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192663192694%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192665192699%_))
                                          (let ((_%e192666192702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192665192699%_))))
                                            (let ((_%tl192668192707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192666192702%_)))
                                                  (_%hd192667192705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192666192702%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192668192707%_))
                                                  (_%__kont197070197071%_
                                                   _%hd192667192705%_
                                                   _%hd192664192697%_
                                                   _%hd192572193068%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192563192673%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192563192673%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192610192896%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192573193070%_))
                          (let ((_%e192648192791%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192573193070%_))))
                            (let ((_%tl192650192796%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192648192791%_)))
                                  (_%hd192649192794%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192648192791%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192650192796%_))
                                  (let ((_%e192651192799%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192650192796%_))))
                                    (let ((_%tl192653192804%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192651192799%_)))
                                          (_%hd192652192802%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192651192799%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192653192804%_))
                                          (_%__match197269197270%_
                                           _%e192568193057%_
                                           _%hd192569193060%_
                                           _%tl192570193062%_
                                           _%e192571193065%_
                                           _%hd192572193068%_
                                           _%tl192573193070%_
                                           _%e192574193073%_
                                           _%hd192575193076%_
                                           _%tl192576193078%_
                                           _%e192599192867%_
                                           _%hd192600192870%_
                                           _%tl192601192872%_
                                           _%e192602192875%_
                                           _%hd192603192878%_
                                           _%tl192604192880%_
                                           _%e192605192883%_
                                           _%hd192606192886%_
                                           _%tl192607192888%_
                                           _%e192608192891%_
                                           _%hd192609192894%_
                                           _%tl192610192896%_
                                           _%e192648192791%_
                                           _%hd192649192794%_
                                           _%tl192650192796%_
                                           _%e192651192799%_
                                           _%hd192652192802%_
                                           _%tl192653192804%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192563192673%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192563192673%_)))))
                          (let () (declare (not safe)) (_%g192563192673%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192573193070%_))
                          (let ((_%e192663192694%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192573193070%_))))
                            (let ((_%tl192665192699%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192663192694%_)))
                                  (_%hd192664192697%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192663192694%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192665192699%_))
                                  (let ((_%e192666192702%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192665192699%_))))
                                    (let ((_%tl192668192707%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192666192702%_)))
                                          (_%hd192667192705%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192666192702%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192668192707%_))
                                          (_%__kont197070197071%_
                                           _%hd192667192705%_
                                           _%hd192664192697%_
                                           _%hd192572193068%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192563192673%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192563192673%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g192563192673%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192573193070%_))
                                                      (let ((_%e192663192694%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192573193070%_))))
                (let ((_%tl192665192699%_
                       (let () (declare (not safe)) (##cdr _%e192663192694%_)))
                      (_%hd192664192697%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192663192694%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192665192699%_))
                      (let ((_%e192666192702%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192665192699%_))))
                        (let ((_%tl192668192707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192666192702%_)))
                              (_%hd192667192705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192666192702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192668192707%_))
                              (_%__kont197070197071%_
                               _%hd192667192705%_
                               _%hd192664192697%_
                               _%hd192572193068%_)
                              (let ()
                                (declare (not safe))
                                (_%g192563192673%_)))))
                      (let () (declare (not safe)) (_%g192563192673%_)))))
              (let () (declare (not safe)) (_%g192563192673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192573193070%_))
                                                  (let ((_%e192663192694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192573193070%_))))
                                                    (let ((_%tl192665192699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192663192694%_)))
                                                          (_%hd192664192697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192663192694%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192665192699%_))
                                                          (let ((_%e192666192702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192665192699%_))))
                    (let ((_%tl192668192707%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192666192702%_)))
                          (_%hd192667192705%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192666192702%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192668192707%_))
                          (_%__kont197070197071%_
                           _%hd192667192705%_
                           _%hd192664192697%_
                           _%hd192572193068%_)
                          (let () (declare (not safe)) (_%g192563192673%_)))))
                  (let () (declare (not safe)) (_%g192563192673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192573193070%_))
                                          (let ((_%e192663192694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192573193070%_))))
                                            (let ((_%tl192665192699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192663192694%_)))
                                                  (_%hd192664192697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192663192694%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192665192699%_))
                                                  (let ((_%e192666192702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192665192699%_))))
                                                    (let ((_%tl192668192707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192666192702%_)))
                                                          (_%hd192667192705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192666192702%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192668192707%_))
                                                          (_%__kont197070197071%_
                                                           _%hd192667192705%_
                                                           _%hd192664192697%_
                                                           _%hd192572193068%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192563192673%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192563192673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192573193070%_))
                                      (let ((_%e192663192694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192573193070%_))))
                                        (let ((_%tl192665192699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192663192694%_)))
                                              (_%hd192664192697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192663192694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192665192699%_))
                                              (let ((_%e192666192702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192665192699%_))))
                                                (let ((_%tl192668192707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192666192702%_)))
                                                      (_%hd192667192705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192666192702%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192668192707%_))
                                                      (_%__kont197070197071%_
                                                       _%hd192667192705%_
                                                       _%hd192664192697%_
                                                       _%hd192572193068%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192563192673%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192563192673%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192563192673%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192573193070%_))
                                  (let ((_%e192663192694%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192573193070%_))))
                                    (let ((_%tl192665192699%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192663192694%_)))
                                          (_%hd192664192697%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192663192694%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192665192699%_))
                                          (let ((_%e192666192702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192665192699%_))))
                                            (let ((_%tl192668192707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192666192702%_)))
                                                  (_%hd192667192705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192666192702%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192668192707%_))
                                                  (_%__kont197070197071%_
                                                   _%hd192667192705%_
                                                   _%hd192664192697%_
                                                   _%hd192572193068%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192563192673%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g192563192673%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192563192673%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192573193070%_))
                          (let ((_%e192663192694%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192573193070%_))))
                            (let ((_%tl192665192699%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192663192694%_)))
                                  (_%hd192664192697%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192663192694%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192665192699%_))
                                  (let ((_%e192666192702%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192665192699%_))))
                                    (let ((_%tl192668192707%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192666192702%_)))
                                          (_%hd192667192705%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192666192702%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192668192707%_))
                                          (_%__kont197070197071%_
                                           _%hd192667192705%_
                                           _%hd192664192697%_
                                           _%hd192572193068%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g192563192673%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g192563192673%_)))))
                          (let () (declare (not safe)) (_%g192563192673%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl192573193070%_))
                  (let ((_%e192663192694%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192573193070%_))))
                    (let ((_%tl192665192699%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192663192694%_)))
                          (_%hd192664192697%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192663192694%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192665192699%_))
                          (let ((_%e192666192702%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192665192699%_))))
                            (let ((_%tl192668192707%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192666192702%_)))
                                  (_%hd192667192705%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192666192702%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192668192707%_))
                                  (_%__kont197070197071%_
                                   _%hd192667192705%_
                                   _%hd192664192697%_
                                   _%hd192572193068%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g192563192673%_)))))
                          (let () (declare (not safe)) (_%g192563192673%_)))))
                  (let () (declare (not safe)) (_%g192563192673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192573193070%_))
                                                      (let ((_%e192663192694%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192573193070%_))))
                (let ((_%tl192665192699%_
                       (let () (declare (not safe)) (##cdr _%e192663192694%_)))
                      (_%hd192664192697%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192663192694%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192665192699%_))
                      (let ((_%e192666192702%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192665192699%_))))
                        (let ((_%tl192668192707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192666192702%_)))
                              (_%hd192667192705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192666192702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192668192707%_))
                              (_%__kont197070197071%_
                               _%hd192667192705%_
                               _%hd192664192697%_
                               _%hd192572193068%_)
                              (let ()
                                (declare (not safe))
                                (_%g192563192673%_)))))
                      (let () (declare (not safe)) (_%g192563192673%_)))))
              (let () (declare (not safe)) (_%g192563192673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192573193070%_))
                                              (let ((_%e192663192694%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192573193070%_))))
                                                (let ((_%tl192665192699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192663192694%_)))
                                                      (_%hd192664192697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192663192694%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192665192699%_))
                                                      (let ((_%e192666192702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192665192699%_))))
                (let ((_%tl192668192707%_
                       (let () (declare (not safe)) (##cdr _%e192666192702%_)))
                      (_%hd192667192705%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192666192702%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192668192707%_))
                      (_%__kont197070197071%_
                       _%hd192667192705%_
                       _%hd192664192697%_
                       _%hd192572193068%_)
                      (let () (declare (not safe)) (_%g192563192673%_)))))
              (let () (declare (not safe)) (_%g192563192673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g192563192673%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192573193070%_))
                                      (let ((_%e192663192694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192573193070%_))))
                                        (let ((_%tl192665192699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192663192694%_)))
                                              (_%hd192664192697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192663192694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192665192699%_))
                                              (let ((_%e192666192702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192665192699%_))))
                                                (let ((_%tl192668192707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192666192702%_)))
                                                      (_%hd192667192705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192666192702%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192668192707%_))
                                                      (_%__kont197070197071%_
                                                       _%hd192667192705%_
                                                       _%hd192664192697%_
                                                       _%hd192572193068%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192563192673%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192563192673%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192563192673%_))))))
                          (let () (declare (not safe)) (_%g192563192673%_)))))
                  (let () (declare (not safe)) (_%g192563192673%_))))))))))
