(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712949848)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp194306 (list gxc#::basic-xform::t))
            (__tmp194305 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp194306
         '()
         __tmp194305
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args193583%_
        (apply make-instance gxc#::optimize-call::t _%$args193583%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp194307
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
        (__make-promise __tmp194307)))
    (define gxc#apply-optimize-call
      (lambda (_%stx193575%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self193578%_
                (let ((__obj194297
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj194297))
               (__tmp194308
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193578%_ _%stx193575%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194308
           gxc#current-compile-method
           _%self193578%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp194310 (list gxc#::void::t))
            (__tmp194309 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp194310
         '()
         __tmp194309
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args193572%_
        (apply make-instance gxc#::check-return-type::t _%$args193572%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp194311
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
        (__make-promise __tmp194311)))
    (define gxc#apply-check-return-type
      (lambda (_%stx193564%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self193567%_
                (let ((__obj194299
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj194299))
               (__tmp194312
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193567%_ _%stx193564%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194312
           gxc#current-compile-method
           _%self193567%_))))
    (define gxc#optimize-call%
      (lambda (_%self193165%_ _%stx193166%_)
        (let* ((_%__stx193652193653%_ _%stx193166%_)
               (_%g193169193215%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193652193653%_)))))
          (let ((_%__kont193654193655%_
                 (lambda (_%L193358%_ _%L193359%_)
                   (let* ((_%rator-id193379%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L193359%_)))
                          (_%rator-type193381%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id193379%_))))
                     (if (or (not _%rator-type193381%_)
                             (eq? (##structure-ref
                                   _%rator-type193381%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self193165%_ _%stx193166%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type193381%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp194313
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type193381%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id193379%_
                                  '" => "
                                  _%rator-type193381%_
                                  '" "
                                  __tmp194313))
                               (let* ((_%optimized193396%_
                                       (let ((__method194300
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type193381%_
                                                 'optimize-call))))
                                         (if __method194300
                                             (let ((__tmp194314
                                                    (let ((__tmp194315
                                                           (lambda (_%g193388193391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g193389193393%_)
                     (cons _%g193388193391%_ _%g193389193393%_))))
              (declare (not safe))
              (__foldr1 __tmp194315 '() _%L193358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method194300
                                                _%rator-type193381%_
                                                _%self193165%_
                                                _%stx193166%_
                                                __tmp194314))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type193381%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx193600193601%_
                                       _%optimized193396%_)
                                      (_%g193399193428%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx193600193601%_)))))
                                 (let ((_%__kont193602193603%_
                                        (lambda (_%L193496%_ _%L193497%_)
                                          (let* ((_%optimized-rator-id193524%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L193497%_)))
                                                 (_%rator-type193529%_
                                                  (let ((_%$e193526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id193524%_))))
                                                    (if _%$e193526%_
                                                        _%$e193526%_
                                                        _%rator-type193381%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type193529%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id193524%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type193529%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type193529%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized193396%_
                                                (let ((__tmp194316
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L193497%_ '()))
                           (let ((__tmp194317
                                  (lambda (_%g193537193540%_ _%g193538193542%_)
                                    (cons _%g193537193540%_
                                          _%g193538193542%_))))
                             (declare (not safe))
                             (__foldr1 __tmp194317 '() _%L193496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp194316
                                                   _%stx193166%_))))))
                                       (_%__kont193606193607%_
                                        (lambda () _%optimized193396%_)))
                                   (let ((_%__match193649193650%_
                                          (lambda (_%e193403193440%_
                                                   _%hd193404193443%_
                                                   _%tl193405193445%_
                                                   _%e193406193448%_
                                                   _%hd193407193451%_
                                                   _%tl193408193453%_
                                                   _%e193409193456%_
                                                   _%hd193410193459%_
                                                   _%tl193411193461%_
                                                   _%e193412193464%_
                                                   _%hd193413193467%_
                                                   _%tl193414193469%_
                                                   _%__splice193604193605%_
                                                   _%target193415193472%_
                                                   _%tl193417193474%_)
                                            (letrec ((_%loop193418193477%_
                                                      (lambda (_%hd193416193480%_
                                                               _%arg193422193482%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd193416193480%_))
                                                            (let ((_%e193419193485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd193416193480%_))))
                      (let ((_%lp-tl193421193490%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193419193485%_)))
                            (_%lp-hd193420193488%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193419193485%_))))
                        (_%loop193418193477%_
                         _%lp-tl193421193490%_
                         (cons _%lp-hd193420193488%_ _%arg193422193482%_))))
                    (let ((_%arg193423193493%_ (reverse _%arg193422193482%_)))
                      (_%__kont193602193603%_
                       _%arg193423193493%_
                       _%hd193413193467%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop193418193477%_
                                               _%target193415193472%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx193600193601%_))
                                         (let ((_%e193403193440%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx193600193601%_))))
                                           (let ((_%tl193405193445%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e193403193440%_)))
                                                 (_%hd193404193443%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e193403193440%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd193404193443%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd193404193443%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl193405193445%_))
                                                         (let ((_%e193406193448%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl193405193445%_))))
                   (let ((_%tl193408193453%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e193406193448%_)))
                         (_%hd193407193451%_
                          (let ()
                            (declare (not safe))
                            (##car _%e193406193448%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd193407193451%_))
                         (let ((_%e193409193456%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd193407193451%_))))
                           (let ((_%tl193411193461%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e193409193456%_)))
                                 (_%hd193410193459%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e193409193456%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd193410193459%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd193410193459%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl193411193461%_))
                                         (let ((_%e193412193464%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl193411193461%_))))
                                           (let ((_%tl193414193469%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e193412193464%_)))
                                                 (_%hd193413193467%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e193412193464%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl193414193469%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl193408193453%_))
                                                     (let ((_%__splice193604193605%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl193408193453%_
                                                               '0))))
                                                       (let ((_%tl193417193474%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice193604193605%_ '1)))
                     (_%target193415193472%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice193604193605%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl193417193474%_))
                     (_%__match193649193650%_
                      _%e193403193440%_
                      _%hd193404193443%_
                      _%tl193405193445%_
                      _%e193406193448%_
                      _%hd193407193451%_
                      _%tl193408193453%_
                      _%e193409193456%_
                      _%hd193410193459%_
                      _%tl193411193461%_
                      _%e193412193464%_
                      _%hd193413193467%_
                      _%tl193414193469%_
                      _%__splice193604193605%_
                      _%target193415193472%_
                      _%tl193417193474%_)
                     (_%__kont193606193607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont193606193607%_))
                                                 (_%__kont193606193607%_))))
                                         (_%__kont193606193607%_))
                                     (_%__kont193606193607%_))
                                 (_%__kont193606193607%_))))
                         (_%__kont193606193607%_))))
                 (_%__kont193606193607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont193606193607%_))
                                                 (_%__kont193606193607%_))))
                                         (_%__kont193606193607%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type193381%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type193381%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp194318
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L193359%_
                                                                '()))
                                                    (map (lambda (_%g193548193550%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self193165%_
                                                              _%g193548193550%_)))
                                                         (let ((__tmp194319
                                                                (lambda (_%g193552193555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g193553193557%_)
                          (cons _%g193552193555%_ _%g193553193557%_))))
                   (declare (not safe))
                   (__foldr1 __tmp194319 '() _%L193358%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp194318
                                    _%stx193166%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx193166%_
                                    _%rator-type193381%_))))))))
                (_%__kont193658193659%_
                 (lambda (_%L193260%_ _%L193261%_)
                   (let ((_%rator-type193278%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L193261%_))))
                     (if (and _%rator-type193278%_
                              (eq? (##structure-ref
                                    _%rator-type193278%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type193278%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type193278%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type193278%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp194320
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self193165%_
                                               _%L193261%_))
                                            (map (lambda (_%g193280193282%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self193165%_
                                                      _%g193280193282%_)))
                                                 (let ((__tmp194321
                                                        (lambda (_%g193284193287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g193285193289%_)
                  (cons _%g193284193287%_ _%g193285193289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp194321
                                                    '()
                                                    _%L193260%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp194320 _%stx193166%_))
                         (if (or (not _%rator-type193278%_)
                                 (let ((__tmp194322
                                        (##structure-ref
                                         _%rator-type193278%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp194322 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self193165%_ _%stx193166%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx193166%_
                                _%rator-type193278%_))))))))
            (let* ((_%__match193719193720%_
                    (lambda (_%e193196193220%_
                             _%hd193197193223%_
                             _%tl193198193225%_
                             _%e193199193228%_
                             _%hd193200193231%_
                             _%tl193201193233%_
                             _%__splice193660193661%_
                             _%target193202193236%_
                             _%tl193204193238%_)
                      (letrec ((_%loop193205193241%_
                                (lambda (_%hd193203193244%_
                                         _%rand193209193246%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193203193244%_))
                                      (let ((_%e193206193249%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd193203193244%_))))
                                        (let ((_%lp-tl193208193254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193206193249%_)))
                                              (_%lp-hd193207193252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193206193249%_))))
                                          (_%loop193205193241%_
                                           _%lp-tl193208193254%_
                                           (cons _%lp-hd193207193252%_
                                                 _%rand193209193246%_))))
                                      (let ((_%rand193210193257%_
                                             (reverse _%rand193209193246%_)))
                                        (_%__kont193658193659%_
                                         _%rand193210193257%_
                                         _%hd193200193231%_))))))
                        (_%loop193205193241%_ _%target193202193236%_ '()))))
                   (_%__match193699193700%_
                    (lambda (_%e193173193302%_
                             _%hd193174193305%_
                             _%tl193175193307%_
                             _%e193176193310%_
                             _%hd193177193313%_
                             _%tl193178193315%_
                             _%e193179193318%_
                             _%hd193180193321%_
                             _%tl193181193323%_
                             _%e193182193326%_
                             _%hd193183193329%_
                             _%tl193184193331%_
                             _%__splice193656193657%_
                             _%target193185193334%_
                             _%tl193187193336%_)
                      (letrec ((_%loop193188193339%_
                                (lambda (_%hd193186193342%_
                                         _%rand193192193344%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193186193342%_))
                                      (let ((_%e193189193347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd193186193342%_))))
                                        (let ((_%lp-tl193191193352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193189193347%_)))
                                              (_%lp-hd193190193350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193189193347%_))))
                                          (_%loop193188193339%_
                                           _%lp-tl193191193352%_
                                           (cons _%lp-hd193190193350%_
                                                 _%rand193192193344%_))))
                                      (let ((_%rand193193193355%_
                                             (reverse _%rand193192193344%_)))
                                        (_%__kont193654193655%_
                                         _%rand193193193355%_
                                         _%hd193183193329%_))))))
                        (_%loop193188193339%_ _%target193185193334%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193652193653%_))
                  (let ((_%e193173193302%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193652193653%_))))
                    (let ((_%tl193175193307%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193173193302%_)))
                          (_%hd193174193305%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193173193302%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193175193307%_))
                          (let ((_%e193176193310%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193175193307%_))))
                            (let ((_%tl193178193315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193176193310%_)))
                                  (_%hd193177193313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193176193310%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193177193313%_))
                                  (let ((_%e193179193318%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193177193313%_))))
                                    (let ((_%tl193181193323%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193179193318%_)))
                                          (_%hd193180193321%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193179193318%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193180193321%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193180193321%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193181193323%_))
                                                  (let ((_%e193182193326%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193181193323%_))))
                                                    (let ((_%tl193184193331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193182193326%_)))
                                                          (_%hd193183193329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193182193326%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193184193331%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl193178193315%_))
                      (let ((_%__splice193656193657%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl193178193315%_
                                '0))))
                        (let ((_%tl193187193336%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice193656193657%_ '1)))
                              (_%target193185193334%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice193656193657%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193187193336%_))
                              (_%__match193699193700%_
                               _%e193173193302%_
                               _%hd193174193305%_
                               _%tl193175193307%_
                               _%e193176193310%_
                               _%hd193177193313%_
                               _%tl193178193315%_
                               _%e193179193318%_
                               _%hd193180193321%_
                               _%tl193181193323%_
                               _%e193182193326%_
                               _%hd193183193329%_
                               _%tl193184193331%_
                               _%__splice193656193657%_
                               _%target193185193334%_
                               _%tl193187193336%_)
                              (let ()
                                (declare (not safe))
                                (_%g193169193215%_)))))
                      (let () (declare (not safe)) (_%g193169193215%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl193178193315%_))
                      (let ((_%__splice193660193661%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl193178193315%_
                                '0))))
                        (let ((_%tl193204193238%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice193660193661%_ '1)))
                              (_%target193202193236%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice193660193661%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193204193238%_))
                              (_%__match193719193720%_
                               _%e193173193302%_
                               _%hd193174193305%_
                               _%tl193175193307%_
                               _%e193176193310%_
                               _%hd193177193313%_
                               _%tl193178193315%_
                               _%__splice193660193661%_
                               _%target193202193236%_
                               _%tl193204193238%_)
                              (let ()
                                (declare (not safe))
                                (_%g193169193215%_)))))
                      (let () (declare (not safe)) (_%g193169193215%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl193178193315%_))
                                                      (let ((_%__splice193660193661%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl193178193315%_ '0))))
                (let ((_%tl193204193238%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice193660193661%_ '1)))
                      (_%target193202193236%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice193660193661%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193204193238%_))
                      (_%__match193719193720%_
                       _%e193173193302%_
                       _%hd193174193305%_
                       _%tl193175193307%_
                       _%e193176193310%_
                       _%hd193177193313%_
                       _%tl193178193315%_
                       _%__splice193660193661%_
                       _%target193202193236%_
                       _%tl193204193238%_)
                      (let () (declare (not safe)) (_%g193169193215%_)))))
              (let () (declare (not safe)) (_%g193169193215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl193178193315%_))
                                                  (let ((_%__splice193660193661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl193178193315%_
                                                            '0))))
                                                    (let ((_%tl193204193238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice193660193661%_
                                                              '1)))
                                                          (_%target193202193236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice193660193661%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193204193238%_))
                                                          (_%__match193719193720%_
                                                           _%e193173193302%_
                                                           _%hd193174193305%_
                                                           _%tl193175193307%_
                                                           _%e193176193310%_
                                                           _%hd193177193313%_
                                                           _%tl193178193315%_
                                                           _%__splice193660193661%_
                                                           _%target193202193236%_
                                                           _%tl193204193238%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193169193215%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193169193215%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl193178193315%_))
                                              (let ((_%__splice193660193661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl193178193315%_
                                                        '0))))
                                                (let ((_%tl193204193238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice193660193661%_
                                                          '1)))
                                                      (_%target193202193236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice193660193661%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193204193238%_))
                                                      (_%__match193719193720%_
                                                       _%e193173193302%_
                                                       _%hd193174193305%_
                                                       _%tl193175193307%_
                                                       _%e193176193310%_
                                                       _%hd193177193313%_
                                                       _%tl193178193315%_
                                                       _%__splice193660193661%_
                                                       _%target193202193236%_
                                                       _%tl193204193238%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193169193215%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193169193215%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl193178193315%_))
                                      (let ((_%__splice193660193661%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl193178193315%_
                                                '0))))
                                        (let ((_%tl193204193238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice193660193661%_
                                                  '1)))
                                              (_%target193202193236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice193660193661%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193204193238%_))
                                              (_%__match193719193720%_
                                               _%e193173193302%_
                                               _%hd193174193305%_
                                               _%tl193175193307%_
                                               _%e193176193310%_
                                               _%hd193177193313%_
                                               _%tl193178193315%_
                                               _%__splice193660193661%_
                                               _%target193202193236%_
                                               _%tl193204193238%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g193169193215%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193169193215%_))))))
                          (let () (declare (not safe)) (_%g193169193215%_)))))
                  (let () (declare (not safe)) (_%g193169193215%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189544193125%_ _%ctx193127%_ _%stx193128%_ _%args193129%_)
        (let* ((_%self193131%_ _%self189544193125%_)
               (_%self193133%_ _%self193131%_))
          (if (let ((__method194301
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self193133%_ 'check-arguments))))
                (if __method194301
                    (let ()
                      (declare (not safe))
                      (__method194301
                       _%self193133%_
                       _%ctx193127%_
                       _%stx193128%_
                       _%args193129%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self193133%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature193143%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193133%_ '2 '#f '#f)))
                     (_%signature193145%_ _%signature193143%_)
                     (_%$e193155%_
                      (if _%signature193145%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature193145%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e193155%_
                    ((lambda (_%unchecked193158%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked193158%_))
                           (let ((__tmp194323
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked193158%_
                                                          '()))
                                              (map (lambda (_%g193159193161%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx193127%_
                                                        _%g193159193161%_)))
                                                   _%args193129%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp194323
                              _%stx193128%_
                              _%ctx193127%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx193127%_ _%stx193128%_))))
                     _%$e193155%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx193127%_ _%stx193128%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx193127%_ _%stx193128%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass193585 __method-table193586)
        (let ((__check-arguments193587
               (let ((__tmp194324
                      (lambda ()
                        (let ((__method193588
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table193586
                                  'check-arguments
                                  '#f))))
                          (if __method193588
                              __method193588
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp194324))))
          (lambda (_%self189544193125%_
                   _%ctx193127%_
                   _%stx193128%_
                   _%args193129%_)
            (let* ((_%self193131%_ _%self189544193125%_)
                   (_%self193133%_ _%self193131%_))
              (if ((force __check-arguments193587)
                   _%self193133%_
                   _%ctx193127%_
                   _%stx193128%_
                   _%args193129%_)
                  (let* ((_%signature193143%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self193133%_
                             '2
                             '#f
                             '#f)))
                         (_%signature193145%_ _%signature193143%_)
                         (_%$e193155%_
                          (if _%signature193145%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature193145%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e193155%_
                        ((lambda (_%unchecked193158%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked193158%_))
                               (let ((__tmp194325
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked193158%_
                                                              '()))
                                                  (map (lambda (_%g193159193161%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx193127%_
                                                            _%g193159193161%_)))
                                                       _%args193129%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp194325
                                  _%stx193128%_
                                  _%ctx193127%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx193127%_
                                  _%stx193128%_))))
                         _%$e193155%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx193127%_ _%stx193128%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx193127%_ _%stx193128%_))))))))
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
      (lambda (_%self189545192874%_ _%ctx192876%_ _%stx192877%_ _%args192878%_)
        (let* ((_%self192880%_ _%self189545192874%_)
               (_%self192882%_ _%self192880%_)
               (_%signature192891192893%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192882%_ '2 '#f '#f))))
          (if _%signature192891192893%_
              (let* ((_%signature192896%_ _%signature192891192893%_)
                     (_%argument-types192897192899%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature192896%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types192897192899%_
                    (let* ((_%argument-types192902%_
                            _%argument-types192897192899%_)
                           (_%argument-types192907%_
                            (let ((__tmp194326
                                   (lambda (_%t192905%_)
                                     (if _%t192905%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx192877%_
                                            _%t192905%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp194326
                               _%argument-types192902%_))))
                      (let _%loop192909%_ ((_%rest-args192911%_ _%args192878%_)
                                           (_%rest-types192912%_
                                            _%argument-types192907%_)
                                           (_%result192913%_ '#t))
                        (let* ((_%rest-args192914192922%_ _%rest-args192911%_)
                               (_%else192916192930%_
                                (lambda () _%result192913%_))
                               (_%K192918192991%_
                                (lambda (_%rest-args192933%_ _%arg192934%_)
                                  (let* ((_%rest-types192935192946%_
                                          _%rest-types192912%_)
                                         (_%E192939192950%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types192935192946%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K192942192979%_
                                           (lambda (_%rest-types192976%_
                                                    _%type192977%_)
                                             (_%loop192909%_
                                              _%rest-args192933%_
                                              _%rest-types192976%_
                                              (if (gxc#check-expression-type!
                                                   _%stx192877%_
                                                   _%arg192934%_
                                                   _%type192977%_)
                                                  _%result192913%_
                                                  '#f))))
                                          (_%K192941192970%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx192877%_
                                                _%argument-types192907%_))))
                                          (_%K192940192960%_
                                           (lambda (_%tail-type192954%_)
                                             (if (let ((__tmp194327
                                                        (lambda (_%g192955192957%_)
                                                          (gxc#check-expression-type!
                                                           _%stx192877%_
                                                           _%g192955192957%_
                                                           _%tail-type192954%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp194327
                                                    _%rest-args192933%_))
                                                 _%result192913%_
                                                 '#f))))
                                      (let ((_%try-match192937192973%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types192935192946%_))
                                                   (_%K192941192970%_)
                                                   (let ((_%tail-type192963%_
                                                          _%rest-types192935192946%_))
                                                     (_%K192940192960%_
                                                      _%tail-type192963%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types192935192946%_))
                                            (let ((_%tl192944192984%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types192935192946%_)))
                                                  (_%hd192943192982%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types192935192946%_))))
                                              (let ((_%type192987%_
                                                     _%hd192943192982%_)
                                                    (_%rest-types192989%_
                                                     _%tl192944192984%_))
                                                (_%K192942192979%_
                                                 _%rest-types192989%_
                                                 _%type192987%_)))
                                            (_%try-match192937192973%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args192914192922%_))
                              (let ((_%hd192919192994%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args192914192922%_)))
                                    (_%tl192920192996%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args192914192922%_))))
                                (let* ((_%arg192999%_ _%hd192919192994%_)
                                       (_%rest-args193001%_
                                        _%tl192920192996%_))
                                  (_%K192918192991%_
                                   _%rest-args193001%_
                                   _%arg192999%_)))
                              (_%else192916192930%_)))))
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
      (lambda (_%self189546192683%_ _%ctx192685%_ _%stx192686%_ _%args192687%_)
        (let* ((_%self192689%_ _%self189546192683%_)
               (_%self192691%_ _%self192689%_)
               (_%g192701192711%_
                (lambda (_%g192702192708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192702192708%_))))
               (_%g192700192749%_
                (lambda (_%g192702192714%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192702192714%_))
                      (let ((_%e192704192716%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192702192714%_))))
                        (let ((_%hd192705192719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192704192716%_)))
                              (_%tl192706192721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192704192716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192706192721%_))
                              ((lambda (_%L192724%_)
                                 (let* ((_%klass192736%_
                                         (let ((__tmp194328
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192691%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx192686%_
                                            __tmp194328)))
                                        (_%object192738%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx192685%_
                                            _%L192724%_)))
                                        (_%instance?192743%_
                                         (let ((_%$e192740%_
                                                (gxc#expression-type?
                                                 _%object192738%_
                                                 _%klass192736%_)))
                                           (if _%$e192740%_
                                               _%$e192740%_
                                               (gxc#expression-type?
                                                _%L192724%_
                                                _%klass192736%_)))))
                                   (if _%instance?192743%_
                                       (let ((__tmp194329
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object192738%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L192724%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object192738%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194329
                                          _%stx192686%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx192685%_
                                          _%stx192686%_)))))
                               _%hd192705192719%_)
                              (_%g192701192711%_ _%g192702192714%_))))
                      (_%g192701192711%_ _%g192702192714%_)))))
          (_%g192700192749%_ _%args192687%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self189547192477%_ _%ctx192479%_ _%stx192480%_ _%args192481%_)
        (let* ((_%self192483%_ _%self189547192477%_)
               (_%self192485%_ _%self192483%_)
               (_%g192495192505%_
                (lambda (_%g192496192502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192496192502%_))))
               (_%g192494192558%_
                (lambda (_%g192496192508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192496192508%_))
                      (let ((_%e192498192510%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192496192508%_))))
                        (let ((_%hd192499192513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192498192510%_)))
                              (_%tl192500192515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192498192510%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192500192515%_))
                              ((lambda (_%L192518%_)
                                 (let* ((_%klass192530%_
                                         (let ((__tmp194330
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192485%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx192480%_
                                            __tmp194330)))
                                        (_%object192532%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx192479%_
                                            _%L192518%_)))
                                        (_%instance?192537%_
                                         (let ((_%$e192534%_
                                                (gxc#expression-type?
                                                 _%object192532%_
                                                 _%klass192530%_)))
                                           (if _%$e192534%_
                                               _%$e192534%_
                                               (gxc#expression-type?
                                                _%L192518%_
                                                _%klass192530%_))))
                                        (_%klass192540%_ _%klass192530%_))
                                   (if _%instance?192537%_
                                       (let ((__tmp194331
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object192532%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L192518%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object192532%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194331
                                          _%stx192480%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass192540%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp194332
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass192540%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object192532%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp194332
                                              _%stx192480%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192540%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp194333
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass192540%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object192532%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp194333
                                                  _%stx192480%_))
                                               (let ((__tmp194334
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self192485%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object192532%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp194334
                                                  _%stx192480%_)))))))
                               _%hd192499192513%_)
                              (_%g192495192505%_ _%g192496192508%_))))
                      (_%g192495192505%_ _%g192496192508%_)))))
          (_%g192494192558%_ _%args192481%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx192140%_)
        (let* ((_%__stx193729193730%_ _%stx192140%_)
               (_%g192145192186%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193729193730%_)))))
          (let ((_%__kont193731193732%_ (lambda () '#t))
                (_%__kont193733193734%_ (lambda () '#t))
                (_%__kont193735193736%_
                 (lambda (_%L192254%_ _%L192255%_)
                   (let ((_%rator-type192276192278%_
                          (let ((__tmp194335
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L192255%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp194335))))
                     (if _%rator-type192276192278%_
                         (let* ((_%rator-type192281%_
                                 _%rator-type192276192278%_)
                                (_%rator-signature192282192284%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type192281%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type192281%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature192282192284%_
                               (let* ((_%rator-signature192287%_
                                       _%rator-signature192282192284%_)
                                      (_%rator-effect192288192290%_
                                       (if _%rator-signature192287%_
                                           (##direct-structure-ref
                                            _%rator-signature192287%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect192288192290%_
                                     (let ((_%rator-effect192293%_
                                            _%rator-effect192288192290%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect192293%_)
                                               (equal? '(alloc)
                                                       _%rator-effect192293%_))
                                           (let ((__tmp194336
                                                  (let ((__tmp194337
                                                         (lambda (_%g192298192301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g192299192303%_)
                   (cons _%g192298192301%_ _%g192299192303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp194337
                                                     '()
                                                     _%L192254%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp194336))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont193739193740%_ (lambda () '#f)))
            (let ((_%__match193818193819%_
                   (lambda (_%e192161192198%_
                            _%hd192162192201%_
                            _%tl192163192203%_
                            _%e192164192206%_
                            _%hd192165192209%_
                            _%tl192166192211%_
                            _%e192167192214%_
                            _%hd192168192217%_
                            _%tl192169192219%_
                            _%e192170192222%_
                            _%hd192171192225%_
                            _%tl192172192227%_
                            _%__splice193737193738%_
                            _%target192173192230%_
                            _%tl192175192232%_)
                     (letrec ((_%loop192176192235%_
                               (lambda (_%hd192174192238%_
                                        _%rand192180192240%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd192174192238%_))
                                     (let ((_%e192177192243%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd192174192238%_))))
                                       (let ((_%lp-tl192179192248%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e192177192243%_)))
                                             (_%lp-hd192178192246%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e192177192243%_))))
                                         (_%loop192176192235%_
                                          _%lp-tl192179192248%_
                                          (cons _%lp-hd192178192246%_
                                                _%rand192180192240%_))))
                                     (let ((_%rand192181192251%_
                                            (reverse _%rand192180192240%_)))
                                       (_%__kont193735193736%_
                                        _%rand192181192251%_
                                        _%hd192171192225%_))))))
                       (_%loop192176192235%_ _%target192173192230%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193729193730%_))
                  (let ((_%e192147192334%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193729193730%_))))
                    (let ((_%tl192149192339%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192147192334%_)))
                          (_%hd192148192337%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192147192334%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192148192337%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192148192337%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192149192339%_))
                                  (let ((_%e192150192342%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192149192339%_))))
                                    (let ((_%tl192152192347%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192150192342%_)))
                                          (_%hd192151192345%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192150192342%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192152192347%_))
                                          (_%__kont193731193732%_)
                                          (_%__kont193739193740%_))))
                                  (_%__kont193739193740%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192148192337%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192149192339%_))
                                      (let ((_%e192156192319%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192149192339%_))))
                                        (let ((_%tl192158192324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192156192319%_)))
                                              (_%hd192157192322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192156192319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192158192324%_))
                                              (_%__kont193733193734%_)
                                              (_%__kont193739193740%_))))
                                      (_%__kont193739193740%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd192148192337%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192149192339%_))
                                          (let ((_%e192164192206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192149192339%_))))
                                            (let ((_%tl192166192211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192164192206%_)))
                                                  (_%hd192165192209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192164192206%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd192165192209%_))
                                                  (let ((_%e192167192214%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd192165192209%_))))
                                                    (let ((_%tl192169192219%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192167192214%_)))
                                                          (_%hd192168192217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192167192214%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd192168192217%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd192168192217%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192169192219%_))
                          (let ((_%e192170192222%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192169192219%_))))
                            (let ((_%tl192172192227%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192170192222%_)))
                                  (_%hd192171192225%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192170192222%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192172192227%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl192166192211%_))
                                      (let ((_%__splice193737193738%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl192166192211%_
                                                '0))))
                                        (let ((_%tl192175192232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice193737193738%_
                                                  '1)))
                                              (_%target192173192230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice193737193738%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192175192232%_))
                                              (_%__match193818193819%_
                                               _%e192147192334%_
                                               _%hd192148192337%_
                                               _%tl192149192339%_
                                               _%e192164192206%_
                                               _%hd192165192209%_
                                               _%tl192166192211%_
                                               _%e192167192214%_
                                               _%hd192168192217%_
                                               _%tl192169192219%_
                                               _%e192170192222%_
                                               _%hd192171192225%_
                                               _%tl192172192227%_
                                               _%__splice193737193738%_
                                               _%target192173192230%_
                                               _%tl192175192232%_)
                                              (_%__kont193739193740%_))))
                                      (_%__kont193739193740%_))
                                  (_%__kont193739193740%_))))
                          (_%__kont193739193740%_))
                      (_%__kont193739193740%_))
                  (_%__kont193739193740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193739193740%_))))
                                          (_%__kont193739193740%_))
                                      (_%__kont193739193740%_))))
                          (_%__kont193739193740%_))))
                  (_%__kont193739193740%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx192135%_ _%klass192136%_)
        (let ((_%expr-type192138%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx192135%_))))
          (if _%expr-type192138%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type192138%_ _%klass192136%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx192113%_ _%expr192114%_ _%type192115%_)
        (if (not _%type192115%_)
            '#f
            (let ((_%$e192118%_
                   (eq? (##structure-ref _%type192115%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e192118%_
                  _%$e192118%_
                  (let ((_%expr-type192122%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr192114%_))))
                    (if (not _%expr-type192122%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type192122%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e192126%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type192122%_
                                      'gxc#!abort::t))))
                              (if _%$e192126%_
                                  _%$e192126%_
                                  (let ((_%$e192129%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type192122%_
                                            _%type192115%_))))
                                    (if _%$e192129%_
                                        _%$e192129%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type192115%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type192115%_
                                                   _%expr-type192122%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx192113%_
                                                   _%expr192114%_
                                                   _%expr-type192122%_
                                                   _%type192115%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self189548191925%_ _%ctx191927%_ _%stx191928%_ _%args191929%_)
        (let* ((_%self191931%_ _%self189548191925%_)
               (_%self191933%_ _%self191931%_)
               (_%klass191943%_
                (let ((__tmp194338
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191933%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx191928%_ __tmp194338)))
               (_%fields191945%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass191943%_
                           '5
                           '#f
                           '#f))))
               (_%args191951%_
                (map (lambda (_%g191946191948%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx191927%_ _%g191946191948%_)))
                     _%args191929%_))
               (_%inline-make-object191953%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self191933%_
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
                           _%self191933%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields191945%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass191956%_ _%klass191943%_)
               (_%$e191970%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass191956%_ '6 '#f '#f))))
          (if _%$e191970%_
              ((lambda (_%ctor191973%_)
                 (let ((_%$obj191975%_
                        (let ((__tmp194339
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp194339)))
                       (_%ctor-impl191976%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass191956%_
                           _%ctor191973%_))))
                   (let ((__tmp194340
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj191975%_ '())
                                                  (cons _%inline-make-object191953%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl191976%_
                                                            (let ((__tmp194341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl191976%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj191975%_ '()))
                                             _%args191951%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp194341
                       _%stx191928%_
                       _%ctx191927%_))
                    (let ((_%$ctor191978%_
                           (let ((__tmp194342
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp194342))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor191978%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191933%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj191975%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor191973%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor191978%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor191978%_ '()))
                              (cons (cons '%#ref (cons _%$obj191975%_ '()))
                                    _%args191951%_)))
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
                             _%self191933%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor191973%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj191975%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp194340 _%stx191928%_))))
               _%$e191970%_)
              (let ((_%$e191980%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass191956%_
                        '10
                        '#f
                        '#f))))
                (if _%$e191980%_
                    ((lambda (_%metaclass191983%_)
                       (let* ((_%$obj191985%_
                               (let ((__tmp194343
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp194343)))
                              (_%metakons191987%_
                               (let ((__tmp194344
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx191928%_
                                         _%metaclass191983%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp194344
                                  'instance-init!)))
                              (__tmp194345
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj191985%_
                                                             '())
                                                       (cons _%inline-make-object191953%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons191987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp194346
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons191987%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self191933%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj191985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args191951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp194346
                            _%stx191928%_
                            _%ctx191927%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self191933%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj191985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args191951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj191985%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp194345 _%stx191928%_)))
                     _%$e191980%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass191956%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp194347
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args191951%_))))
                              (declare (not safe))
                              (##fx= __tmp194347 _%fields191945%_))
                            (let ((__tmp194348
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self191933%_
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
                                              _%self191933%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args191951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp194348
                               _%stx191928%_))
                            (let ((__tmp194350
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self191933%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp194349
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass191956%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx191928%_
                               __tmp194350
                               __tmp194349)))
                        (let ((_%$obj191992%_
                               (let ((__tmp194351
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp194351))))
                          (let _%lp191994%_ ((_%rest191996%_ _%args191951%_)
                                             (_%initializers191997%_ '()))
                            (let* ((_%__stx193821193822%_ _%rest191996%_)
                                   (_%g192001192022%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx193821193822%_)))))
                              (let ((_%__kont193823193824%_
                                     (lambda (_%L192076%_
                                              _%L192077%_
                                              _%L192078%_)
                                       (let* ((_%slot192105%_
                                               (let ((__tmp194352
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L192078%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp194352)))
                                              (_%off192107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass191956%_
                                                  _%slot192105%_))))
                                         (if _%off192107%_
                                             (_%lp191994%_
                                              _%L192076%_
                                              (cons (cons _%off192107%_
                                                          _%L192077%_)
                                                    _%initializers191997%_))
                                             (let ((__tmp194353
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self191933%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx191928%_
                                                __tmp194353
                                                _%slot192105%_))))))
                                    (_%__kont193825193826%_
                                     (lambda ()
                                       (let ((__tmp194354
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj191992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object191953%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp194357
                                     (cons (cons '%#ref
                                                 (cons _%$obj191992%_ '()))
                                           '()))
                                    (__tmp194355
                                     (let ((__tmp194356
                                            (lambda (_%i192036%_ _%r192037%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self191933%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i192036%_) '()))
                              (cons (cons '%#ref (cons _%$obj191992%_ '()))
                                    (cons (cdr _%i192036%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r192037%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp194356
                                        '()
                                        _%initializers191997%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp194357 __tmp194355)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194354
                                          _%stx191928%_))))
                                    (_%__kont193827193828%_
                                     (lambda ()
                                       (let ((__tmp194358
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj191992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object191953%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj191992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args191951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj191992%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194358
                                          _%stx191928%_)))))
                                (let* ((_%g191999192039%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx193821193822%_))
                                              (_%__kont193825193826%_)
                                              (_%__kont193827193828%_))))
                                       (_%__match193858193859%_
                                        (lambda (_%e192006192044%_
                                                 _%hd192007192047%_
                                                 _%tl192008192049%_
                                                 _%e192009192052%_
                                                 _%hd192010192055%_
                                                 _%tl192011192057%_
                                                 _%e192012192060%_
                                                 _%hd192013192063%_
                                                 _%tl192014192065%_
                                                 _%e192015192068%_
                                                 _%hd192016192071%_
                                                 _%tl192017192073%_)
                                          (let ((_%L192076%_
                                                 _%tl192017192073%_)
                                                (_%L192077%_
                                                 _%hd192016192071%_)
                                                (_%L192078%_
                                                 _%hd192013192063%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L192078%_))
                                                (_%__kont193823193824%_
                                                 _%L192076%_
                                                 _%L192077%_
                                                 _%L192078%_)
                                                (_%__kont193827193828%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx193821193822%_))
                                      (let ((_%e192006192044%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx193821193822%_))))
                                        (let ((_%tl192008192049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192006192044%_)))
                                              (_%hd192007192047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192006192044%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd192007192047%_))
                                              (let ((_%e192009192052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd192007192047%_))))
                                                (let ((_%tl192011192057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192009192052%_)))
                                                      (_%hd192010192055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192009192052%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd192010192055%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd192010192055%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192011192057%_))
                      (let ((_%e192012192060%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192011192057%_))))
                        (let ((_%tl192014192065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192012192060%_)))
                              (_%hd192013192063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192012192060%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192014192065%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192008192049%_))
                                  (let ((_%e192015192068%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192008192049%_))))
                                    (let ((_%tl192017192073%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192015192068%_)))
                                          (_%hd192016192071%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192015192068%_))))
                                      (_%__match193858193859%_
                                       _%e192006192044%_
                                       _%hd192007192047%_
                                       _%tl192008192049%_
                                       _%e192009192052%_
                                       _%hd192010192055%_
                                       _%tl192011192057%_
                                       _%e192012192060%_
                                       _%hd192013192063%_
                                       _%tl192014192065%_
                                       _%e192015192068%_
                                       _%hd192016192071%_
                                       _%tl192017192073%_)))
                                  (_%__kont193827193828%_))
                              (_%__kont193827193828%_))))
                      (_%__kont193827193828%_))
                  (_%__kont193827193828%_))
              (_%__kont193827193828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193827193828%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191999192039%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self189549191706%_ _%ctx191708%_ _%stx191709%_ _%args191710%_)
        (let* ((_%self191712%_ _%self189549191706%_)
               (_%self191714%_ _%self191712%_)
               (_%arguments-ok?191724%_
                (let ((__method194302
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self191714%_ 'check-arguments))))
                  (if __method194302
                      (let ()
                        (declare (not safe))
                        (__method194302
                         _%self191714%_
                         _%ctx191708%_
                         _%stx191709%_
                         _%args191710%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self191714%_
                                 'check-arguments))
                        '#!void))))
               (_%g191726191736%_
                (lambda (_%g191727191733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191727191733%_))))
               (_%g191725191800%_
                (lambda (_%g191727191739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191727191739%_))
                      (let ((_%e191729191741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191727191739%_))))
                        (let ((_%hd191730191744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191729191741%_)))
                              (_%tl191731191746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191729191741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191731191746%_))
                              ((lambda (_%L191749%_)
                                 (let* ((_%klass191762%_
                                         (let ((__tmp194359
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self191714%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx191709%_
                                            __tmp194359)))
                                        (_%field191764%_
                                         (let ((__tmp194360
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self191714%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass191762%_
                                            __tmp194360)))
                                        (_%object191766%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx191708%_
                                            _%L191749%_)))
                                        (_%klass191769%_ _%klass191762%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass191769%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp194361
                                              (cons (if (or _%arguments-ok?191724%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self191714%_
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
                                 _%self191714%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field191764%_ '()))
                        (cons _%object191766%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp194361
                                          _%stx191709%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass191769%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp194362
                                                  (cons (if (or _%arguments-ok?191724%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self191714%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191714%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field191764%_ '()))
                            (cons _%object191766%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp194362
                                              _%stx191709%_))
                                           (let ((_%$e191788%_
                                                  (let ((__tmp194363
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self191714%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass191769%_
                                                     __tmp194363))))
                                             (if _%$e191788%_
                                                 ((lambda (_%klass191791%_)
                                                    (let ((__tmp194364
                                                           (cons (if (or _%arguments-ok?191724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self191714%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self191714%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field191764%_ '()))
                                     (cons _%object191766%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp194364 _%stx191709%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e191788%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self191714%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp194365
                                                            (let ((_%$obj191797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp194366
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp194366))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj191797%_ '())
                                              (cons _%object191766%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass191769%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj191797%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191714%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field191764%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj191797%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?191724%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj191797%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191714%_
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
                                                             _%self191714%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj191797%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self191714%_
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
               (gxc#xform-wrap-source __tmp194365 _%stx191709%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp194367
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object191766%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self191714%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp194367 _%stx191709%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd191730191744%_)
                              (_%g191726191736%_ _%g191727191739%_))))
                      (_%g191726191736%_ _%g191727191739%_)))))
          (_%g191725191800%_ _%args191710%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass193589 __method-table193590)
        (let ((__check-arguments193591
               (let ((__tmp194368
                      (lambda ()
                        (let ((__method193592
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table193590
                                  'check-arguments
                                  '#f))))
                          (if __method193592
                              __method193592
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp194368)))
              (__slot193593
               (let ((__slot193594
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass193589 'slot))))
                 (if __slot193594
                     __slot193594
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self189549191706%_
                   _%ctx191708%_
                   _%stx191709%_
                   _%args191710%_)
            (let* ((_%self191712%_ _%self189549191706%_)
                   (_%self191714%_ _%self191712%_)
                   (_%arguments-ok?191724%_
                    ((force __check-arguments193591)
                     _%self191714%_
                     _%ctx191708%_
                     _%stx191709%_
                     _%args191710%_))
                   (_%g191726191736%_
                    (lambda (_%g191727191733%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g191727191733%_))))
                   (_%g191725191800%_
                    (lambda (_%g191727191739%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g191727191739%_))
                          (let ((_%e191729191741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g191727191739%_))))
                            (let ((_%hd191730191744%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191729191741%_)))
                                  (_%tl191731191746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191729191741%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191731191746%_))
                                  ((lambda (_%L191749%_)
                                     (let* ((_%klass191762%_
                                             (let ((__tmp194369
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self191714%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx191709%_
                                                __tmp194369)))
                                            (_%field191764%_
                                             (let ((__tmp194370
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self191714%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass191762%_
                                                __tmp194370)))
                                            (_%object191766%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx191708%_
                                                _%L191749%_)))
                                            (_%klass191769%_ _%klass191762%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass191769%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp194371
                                                  (cons (if (or _%arguments-ok?191724%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self191714%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191714%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field191764%_ '()))
                            (cons _%object191766%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp194371
                                              _%stx191709%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass191769%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp194372
                                                      (cons (if (or _%arguments-ok?191724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self191714%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self191714%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field191764%_ '()))
                                (cons _%object191766%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp194372
                                                  _%stx191709%_))
                                               (let ((_%$e191788%_
                                                      (let ((__tmp194373
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self191714%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass191769%_ __tmp194373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e191788%_
                                                     ((lambda (_%klass191791%_)
                                                        (let ((__tmp194374
                                                               (cons (if (or _%arguments-ok?191724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191714%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self191714%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field191764%_ '()))
                                         (cons _%object191766%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp194374 _%stx191709%_)))
              _%$e191788%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self191714%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp194375
                                                                (let ((_%$obj191797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp194376
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp194376))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj191797%_ '())
                                                  (cons _%object191766%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass191769%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj191797%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self191714%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field191764%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj191797%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?191724%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj191797%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191714%_
                               __slot193593
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
                        (##unchecked-structure-ref _%self191714%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj191797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191714%_
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
                   (gxc#xform-wrap-source __tmp194375 _%stx191709%_))
                 (let ((__tmp194377
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object191766%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self191714%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp194377 _%stx191709%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd191730191744%_)
                                  (_%g191726191736%_ _%g191727191739%_))))
                          (_%g191726191736%_ _%g191727191739%_)))))
              (_%g191725191800%_ _%args191710%_))))))
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
      (lambda (_%self189550191468%_ _%ctx191470%_ _%stx191471%_ _%args191472%_)
        (let* ((_%self191474%_ _%self189550191468%_)
               (_%self191476%_ _%self191474%_)
               (_%arguments-ok?191486%_
                (let ((__method194303
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self191476%_ 'check-arguments))))
                  (if __method194303
                      (let ()
                        (declare (not safe))
                        (__method194303
                         _%self191476%_
                         _%ctx191470%_
                         _%stx191471%_
                         _%args191472%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self191476%_
                                 'check-arguments))
                        '#!void))))
               (_%g191488191502%_
                (lambda (_%g191489191499%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191489191499%_))))
               (_%g191487191581%_
                (lambda (_%g191489191505%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191489191505%_))
                      (let ((_%e191492191507%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191489191505%_))))
                        (let ((_%hd191493191510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191492191507%_)))
                              (_%tl191494191512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191492191507%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191494191512%_))
                              (let ((_%e191495191515%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191494191512%_))))
                                (let ((_%hd191496191518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191495191515%_)))
                                      (_%tl191497191520%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191495191515%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191497191520%_))
                                      ((lambda (_%L191523%_ _%L191524%_)
                                         (let* ((_%klass191540%_
                                                 (let ((__tmp194378
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self191476%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx191471%_
                                                    __tmp194378)))
                                                (_%field191542%_
                                                 (let ((__tmp194379
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self191476%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass191540%_
                                                    __tmp194379)))
                                                (_%object191544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx191470%_
                                                    _%L191524%_)))
                                                (_%value191546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx191470%_
                                                    _%L191523%_)))
                                                (_%klass191549%_
                                                 _%klass191540%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass191549%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp194380
                                                      (cons (if (or _%arguments-ok?191486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self191476%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self191476%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field191542%_ '()))
                                (cons _%object191544%_
                                      (cons _%value191546%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp194380
                                                  _%stx191471%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass191549%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp194381
                                                          (cons (if (or _%arguments-ok?191486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self191476%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191476%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field191542%_ '()))
                                    (cons _%object191544%_
                                          (cons _%value191546%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp194381
                                                      _%stx191471%_))
                                                   (let ((_%$e191569%_
                                                          (let ((__tmp194382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self191476%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass191549%_
                     __tmp194382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e191569%_
                                                         ((lambda (_%klass191572%_)
                                                            (let ((__tmp194383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?191486%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self191476%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self191476%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field191542%_ '()))
                                             (cons _%object191544%_
                                                   (cons _%value191546%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp194383 _%stx191471%_)))
                  _%$e191569%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self191476%_ '4 '#f '#f))
                     (let ((__tmp194384
                            (let ((_%$obj191578%_
                                   (let ((__tmp194385
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp194385))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj191578%_ '())
                                                      (cons _%object191544%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass191549%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj191578%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self191476%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field191542%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj191578%_
                                                              '()))
                                                  (cons _%value191546%_
                                                        '())))))
                          (cons (if _%arguments-ok?191486%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj191578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self191476%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value191546%_ '())))))
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
                             _%self191476%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj191578%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self191476%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value191546%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp194384 _%stx191471%_))
                     (let ((__tmp194386
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object191544%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191476%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value191546%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp194386
                        _%stx191471%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd191496191518%_
                                       _%hd191493191510%_)
                                      (_%g191488191502%_ _%g191489191505%_))))
                              (_%g191488191502%_ _%g191489191505%_))))
                      (_%g191488191502%_ _%g191489191505%_)))))
          (_%g191487191581%_ _%args191472%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass193595 __method-table193596)
        (let ((__check-arguments193597
               (let ((__tmp194387
                      (lambda ()
                        (let ((__method193598
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table193596
                                  'check-arguments
                                  '#f))))
                          (if __method193598
                              __method193598
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp194387))))
          (lambda (_%self189550191468%_
                   _%ctx191470%_
                   _%stx191471%_
                   _%args191472%_)
            (let* ((_%self191474%_ _%self189550191468%_)
                   (_%self191476%_ _%self191474%_)
                   (_%arguments-ok?191486%_
                    ((force __check-arguments193597)
                     _%self191476%_
                     _%ctx191470%_
                     _%stx191471%_
                     _%args191472%_))
                   (_%g191488191502%_
                    (lambda (_%g191489191499%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g191489191499%_))))
                   (_%g191487191581%_
                    (lambda (_%g191489191505%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g191489191505%_))
                          (let ((_%e191492191507%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g191489191505%_))))
                            (let ((_%hd191493191510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191492191507%_)))
                                  (_%tl191494191512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191492191507%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191494191512%_))
                                  (let ((_%e191495191515%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191494191512%_))))
                                    (let ((_%hd191496191518%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191495191515%_)))
                                          (_%tl191497191520%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191495191515%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191497191520%_))
                                          ((lambda (_%L191523%_ _%L191524%_)
                                             (let* ((_%klass191540%_
                                                     (let ((__tmp194388
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self191476%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx191471%_
                                                        __tmp194388)))
                                                    (_%field191542%_
                                                     (let ((__tmp194389
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self191476%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass191540%_
                                                        __tmp194389)))
                                                    (_%object191544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx191470%_
                                                        _%L191524%_)))
                                                    (_%value191546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx191470%_
                                                        _%L191523%_)))
                                                    (_%klass191549%_
                                                     _%klass191540%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass191549%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp194390
                                                          (cons (if (or _%arguments-ok?191486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self191476%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191476%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field191542%_ '()))
                                    (cons _%object191544%_
                                          (cons _%value191546%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp194390
                                                      _%stx191471%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass191549%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp194391
                                                              (cons (if (or _%arguments-ok?191486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self191476%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self191476%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field191542%_ '()))
                                        (cons _%object191544%_
                                              (cons _%value191546%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp194391 _%stx191471%_))
               (let ((_%$e191569%_
                      (let ((__tmp194392
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self191476%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass191549%_
                         __tmp194392))))
                 (if _%$e191569%_
                     ((lambda (_%klass191572%_)
                        (let ((__tmp194393
                               (cons (if (or _%arguments-ok?191486%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self191476%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self191476%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field191542%_
                                                             '()))
                                                 (cons _%object191544%_
                                                       (cons _%value191546%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp194393 _%stx191471%_)))
                      _%$e191569%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self191476%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp194394
                                (let ((_%$obj191578%_
                                       (let ((__tmp194395
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp194395))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj191578%_
                                                                '())
                                                          (cons _%object191544%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass191549%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj191578%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self191476%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field191542%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj191578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value191546%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?191486%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj191578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self191476%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value191546%_ '())))))
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
                                 _%self191476%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj191578%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self191476%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value191546%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp194394 _%stx191471%_))
                         (let ((__tmp194396
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object191544%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191476%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value191546%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp194396
                            _%stx191471%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd191496191518%_
                                           _%hd191493191510%_)
                                          (_%g191488191502%_
                                           _%g191489191505%_))))
                                  (_%g191488191502%_ _%g191489191505%_))))
                          (_%g191488191502%_ _%g191489191505%_)))))
              (_%g191487191581%_ _%args191472%_))))))
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
      (lambda (_%self189551191281%_ _%ctx191283%_ _%stx191284%_ _%args191285%_)
        (let* ((_%self191287%_ _%self189551191281%_)
               (_%self191289%_ _%self191287%_)
               (_%self191298191308%_ _%self191289%_)
               (_%E191300191312%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191298191308%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K191301191322%_
                (lambda (_%inline191315%_ _%dispatch191316%_ _%arity191317%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self191289%_
                         _%args191285%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx191284%_
                         _%arity191317%_)))
                  (if _%inline191315%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp194397 (_%inline191315%_ _%stx191284%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp194397
                           _%stx191284%_
                           _%ctx191283%_)))
                      (if (and _%dispatch191316%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch191316%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch191316%_))
                            (let ((__tmp194398
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch191316%_
                                                           '()))
                                               _%args191285%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp194398
                               _%stx191284%_
                               _%ctx191283%_)))
                          (gxc#!procedure::optimize-call
                           _%self191289%_
                           _%ctx191283%_
                           _%stx191284%_
                           _%args191285%_)))))
               (_%e191302191325%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191298191308%_ '1 '#f '#f)))
               (_%e191303191328%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191298191308%_ '2 '#f '#f)))
               (_%e191304191331%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191298191308%_ '3 '#f '#f)))
               (_%arity191334%_ _%e191304191331%_)
               (_%e191305191336%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191298191308%_ '4 '#f '#f)))
               (_%dispatch191339%_ _%e191305191336%_)
               (_%e191306191341%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191298191308%_ '5 '#f '#f)))
               (_%inline191344%_ _%e191306191341%_))
          (_%K191301191322%_
           _%inline191344%_
           _%dispatch191339%_
           _%arity191334%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self189552191131%_ _%ctx191133%_ _%stx191134%_ _%args191135%_)
        (let* ((_%self191137%_ _%self189552191131%_)
               (_%self191139%_ _%self191137%_)
               (_%$e191153%_
                (let ((__tmp194400
                       (lambda (_%g191148191150%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g191148191150%_
                            _%args191135%_))))
                      (__tmp194399
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191139%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp194400 __tmp194399))))
          (if _%$e191153%_
              ((lambda (_%clause191156%_)
                 (let ((__method194304
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause191156%_ 'optimize-call))))
                   (if __method194304
                       (let ()
                         (declare (not safe))
                         (__method194304
                          _%clause191156%_
                          _%ctx191133%_
                          _%stx191134%_
                          _%args191135%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause191156%_
                                  'optimize-call))
                         '#!void))))
               _%$e191153%_)
              (let ((__tmp194401
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191139%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx191134%_
                 __tmp194401))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self189553190869%_ _%ctx190871%_ _%stx190872%_ _%args190873%_)
        (let* ((_%self190875%_ _%self189553190869%_)
               (_%self190877%_ _%self190875%_)
               (_%self190886190895%_ _%self190877%_)
               (_%E190888190899%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self190886190895%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K190889190990%_
                (lambda (_%dispatch190902%_ _%table190903%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch190902%_))
                      (let* ((_%g190904190914%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch190902%_)))
                             (_%else190906190922%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch190902%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx190871%_
                                   _%stx190872%_))))
                             (_%K190908190971%_
                              (lambda (_%main190925%_ _%keys190926%_)
                                (let ((_g194402_
                                       (gxc#!kw-lambda-split-args
                                        _%stx190872%_
                                        _%args190873%_)))
                                  (begin
                                    (let ((_g194403_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194402_)
                                                 (##vector-length _g194402_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194403_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194403_)))
                                    (let ((_%pargs190928%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194402_ 0)))
                                          (_%kwargs190929%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194402_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main190925%_))
                                        (if _%table190903%_
                                            (let ((_%xargs190937%_
                                                   (map (lambda (_%key190931%_)
                                                          (let ((_%$e190933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key190931%_ _%kwargs190929%_))))
                    (if _%$e190933%_ _%$e190933%_ '(%#ref absent-value))))
                _%keys190926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw190939%_)
                                                 (if (memq (car _%kw190939%_)
                                                           _%keys190926%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx190872%_
                                                        _%keys190926%_
                                                        _%kw190939%_))))
                                               _%kwargs190929%_)
                                              (let ((__tmp194404
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main190925%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs190928%_
                                  _%xargs190937%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp194404
                                                 _%stx190872%_
                                                 _%ctx190871%_)))
                                            (let* ((_%kwt190941%_
                                                    (let ((__tmp194405
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp194405)))
                                                   (_%kwvars190945%_
                                                    (map (lambda (_%_190943%_)
                                                           (let ((__tmp194406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp194406)))
                 _%kwargs190929%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind190950%_
                                                    (map (lambda (_%kw190947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar190948%_)
                   (cons (cons _%kwvar190948%_ '())
                         (cons (cdr _%kw190947%_) '())))
                 _%kwargs190929%_
                 _%kwvars190945%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset190955%_
                                                    (map (lambda (_%kw190952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar190953%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt190941%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw190952%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar190953%_
                                                             '()))
                                                 '()))))))
                 _%kwargs190929%_
                 _%kwvars190945%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs190960%_
                                                    (map (lambda (_%kw190957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar190958%_)
                   (cons (car _%kw190957%_)
                         (cons '%#ref (cons _%kwvar190958%_ '()))))
                 _%kwargs190929%_
                 _%kwvars190945%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs190968%_
                                                    (map (lambda (_%key190962%_)
                                                           (let ((_%$e190964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key190962%_ _%xkwargs190960%_))))
                     (if _%$e190964%_ _%$e190964%_ '(%#ref absent-value))))
                 _%keys190926%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp194407
                                                    (cons '%#let-values
                                                          (cons _%kwbind190950%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt190941%_ '())
                                                      (cons (let ((__tmp194408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs190929%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp194408 _%stx190872%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp194409
                                                             (cons (let ((__tmp194410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main190925%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt190941%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs190928%_
                                                       _%xargs190968%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp194410 _%stx190872%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp194409 _%kwset190955%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp194407
                                               _%stx190872%_
                                               _%ctx190871%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g190904190914%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e190909190974%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g190904190914%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e190910190977%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g190904190914%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e190911190980%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g190904190914%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys190983%_ _%e190911190980%_)
                                   (_%e190912190985%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g190904190914%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main190988%_ _%e190912190985%_))
                              (_%K190908190971%_
                               _%main190988%_
                               _%keys190983%_))
                            (_%else190906190922%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx190871%_ _%stx190872%_)))))
               (_%e190890190993%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self190886190895%_ '1 '#f '#f)))
               (_%e190891190996%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self190886190895%_ '2 '#f '#f)))
               (_%e190892190999%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self190886190895%_ '3 '#f '#f)))
               (_%table191002%_ _%e190892190999%_)
               (_%e190893191004%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self190886190895%_ '4 '#f '#f)))
               (_%dispatch191007%_ _%e190893191004%_))
          (_%K190889190990%_ _%dispatch191007%_ _%table191002%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx190482%_ _%args190483%_)
        (let _%lp190485%_ ((_%rest190487%_ _%args190483%_)
                           (_%pargs190488%_ '())
                           (_%kwargs190489%_ '()))
          (let* ((_%__stx193863193864%_ _%rest190487%_)
                 (_%g190495190547%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx193863193864%_)))))
            (let ((_%__kont193865193866%_
                   (lambda (_%L190726%_ _%L190727%_)
                     (_%lp190485%_
                      _%L190726%_
                      (cons _%L190727%_ _%pargs190488%_)
                      _%kwargs190489%_)))
                  (_%__kont193867193868%_
                   (lambda (_%L190672%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L190672%_ _%pargs190488%_))
                             (reverse _%kwargs190489%_))))
                  (_%__kont193869193870%_
                   (lambda (_%L190619%_ _%L190620%_ _%L190621%_)
                     (let ((_%kw190638%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L190621%_))))
                       (if (assq _%kw190638%_ _%kwargs190489%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx190482%_
                              _%kw190638%_))
                           (_%lp190485%_
                            _%L190619%_
                            _%pargs190488%_
                            (cons (cons _%kw190638%_ _%L190620%_)
                                  _%kwargs190489%_))))))
                  (_%__kont193871193872%_
                   (lambda (_%L190567%_ _%L190568%_)
                     (_%lp190485%_
                      _%L190567%_
                      (cons _%L190568%_ _%pargs190488%_)
                      _%kwargs190489%_)))
                  (_%__kont193873193874%_
                   (lambda ()
                     (values (reverse _%pargs190488%_)
                             (reverse _%kwargs190489%_)))))
              (let ((_%__match193970193971%_
                     (lambda (_%e190526190587%_
                              _%hd190527190590%_
                              _%tl190528190592%_
                              _%e190529190595%_
                              _%hd190530190598%_
                              _%tl190531190600%_
                              _%e190532190603%_
                              _%hd190533190606%_
                              _%tl190534190608%_
                              _%e190535190611%_
                              _%hd190536190614%_
                              _%tl190537190616%_)
                       (let ((_%L190619%_ _%tl190537190616%_)
                             (_%L190620%_ _%hd190536190614%_)
                             (_%L190621%_ _%hd190533190606%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L190621%_))
                             (_%__kont193869193870%_
                              _%L190619%_
                              _%L190620%_
                              _%L190621%_)
                             (_%__kont193871193872%_
                              _%tl190528190592%_
                              _%hd190527190590%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx193863193864%_))
                    (let ((_%e190499190691%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx193863193864%_))))
                      (let ((_%tl190501190696%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190499190691%_)))
                            (_%hd190500190694%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190499190691%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd190500190694%_))
                            (let ((_%e190502190699%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd190500190694%_))))
                              (let ((_%tl190504190704%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e190502190699%_)))
                                    (_%hd190503190702%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e190502190699%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd190503190702%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd190503190702%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl190504190704%_))
                                            (let ((_%e190505190707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl190504190704%_))))
                                              (let ((_%tl190507190712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e190505190707%_)))
                                                    (_%hd190506190710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e190505190707%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd190506190710%_))
                                                    (let ((_%e190508190715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd190506190710%_))))
                                                      (if (equal? _%e190508190715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190507190712%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190501190696%_))
                          (let ((_%e190509190718%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190501190696%_))))
                            (let ((_%tl190511190723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190509190718%_)))
                                  (_%hd190510190721%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190509190718%_))))
                              (_%__kont193865193866%_
                               _%tl190511190723%_
                               _%hd190510190721%_)))
                          (_%__kont193871193872%_
                           _%tl190501190696%_
                           _%hd190500190694%_))
                      (_%__kont193871193872%_
                       _%tl190501190696%_
                       _%hd190500190694%_))
                  (if (equal? _%e190508190715%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190507190712%_))
                          (_%__kont193867193868%_ _%tl190501190696%_)
                          (_%__kont193871193872%_
                           _%tl190501190696%_
                           _%hd190500190694%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190507190712%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190501190696%_))
                              (let ((_%e190535190611%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190501190696%_))))
                                (let ((_%tl190537190616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190535190611%_)))
                                      (_%hd190536190614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190535190611%_))))
                                  (_%__match193970193971%_
                                   _%e190499190691%_
                                   _%hd190500190694%_
                                   _%tl190501190696%_
                                   _%e190502190699%_
                                   _%hd190503190702%_
                                   _%tl190504190704%_
                                   _%e190505190707%_
                                   _%hd190506190710%_
                                   _%tl190507190712%_
                                   _%e190535190611%_
                                   _%hd190536190614%_
                                   _%tl190537190616%_)))
                              (_%__kont193871193872%_
                               _%tl190501190696%_
                               _%hd190500190694%_))
                          (_%__kont193871193872%_
                           _%tl190501190696%_
                           _%hd190500190694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl190507190712%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl190501190696%_))
                                                            (let ((_%e190535190611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl190501190696%_))))
                      (let ((_%tl190537190616%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190535190611%_)))
                            (_%hd190536190614%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190535190611%_))))
                        (_%__match193970193971%_
                         _%e190499190691%_
                         _%hd190500190694%_
                         _%tl190501190696%_
                         _%e190502190699%_
                         _%hd190503190702%_
                         _%tl190504190704%_
                         _%e190505190707%_
                         _%hd190506190710%_
                         _%tl190507190712%_
                         _%e190535190611%_
                         _%hd190536190614%_
                         _%tl190537190616%_)))
                    (_%__kont193871193872%_
                     _%tl190501190696%_
                     _%hd190500190694%_))
                (_%__kont193871193872%_
                 _%tl190501190696%_
                 _%hd190500190694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont193871193872%_
                                             _%tl190501190696%_
                                             _%hd190500190694%_))
                                        (_%__kont193871193872%_
                                         _%tl190501190696%_
                                         _%hd190500190694%_))
                                    (_%__kont193871193872%_
                                     _%tl190501190696%_
                                     _%hd190500190694%_))))
                            (_%__kont193871193872%_
                             _%tl190501190696%_
                             _%hd190500190694%_))))
                    (_%__kont193873193874%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self189554190464%_ _%ctx190466%_ _%stx190467%_ _%args190468%_)
        (let* ((_%self190470%_ _%self189554190464%_)
               (_%self190472%_ _%self190470%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx190466%_ _%stx190467%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self190152%_ _%stx190153%_)
        (let* ((_%__stx193979193980%_ _%stx190153%_)
               (_%g190156190196%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193979193980%_)))))
          (let ((_%__kont193981193982%_
                 (lambda (_%L190302%_ _%L190303%_)
                   (let ((_%$e190330%_
                          (member 'return:
                                  (let ((__tmp194411
                                         (lambda (_%g190322190325%_
                                                  _%g190323190327%_)
                                           (cons _%g190322190325%_
                                                 _%g190323190327%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp194411 '() _%L190303%_))
                                  gx#stx-eq?)))
                     (if _%$e190330%_
                         ((lambda (_%tail190333%_)
                            (let ((_%type190335%_
                                   (let ((__tmp194412
                                          (let ((__tmp194413
                                                 (cadr _%tail190333%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp194413))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx190153%_
                                      __tmp194412))))
                              (gxc#check-return-type!
                               _%stx190153%_
                               _%L190302%_
                               _%type190335%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self190152%_
                                 _%L190302%_))))
                          _%$e190330%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self190152%_ _%L190302%_))))))
                (_%__kont193985193986%_
                 (lambda (_%L190225%_ _%L190226%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self190152%_ _%L190225%_)))))
            (let ((_%__match194016194017%_
                   (lambda (_%e190160190246%_
                            _%hd190161190249%_
                            _%tl190162190251%_
                            _%e190163190254%_
                            _%hd190164190257%_
                            _%tl190165190259%_
                            _%e190166190262%_
                            _%hd190167190265%_
                            _%tl190168190267%_
                            _%__splice193983193984%_
                            _%target190169190270%_
                            _%tl190171190272%_)
                     (letrec ((_%loop190172190275%_
                               (lambda (_%hd190170190278%_
                                        _%signature190176190280%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd190170190278%_))
                                     (let ((_%e190173190283%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd190170190278%_))))
                                       (let ((_%lp-tl190175190288%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e190173190283%_)))
                                             (_%lp-hd190174190286%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e190173190283%_))))
                                         (_%loop190172190275%_
                                          _%lp-tl190175190288%_
                                          (cons _%lp-hd190174190286%_
                                                _%signature190176190280%_))))
                                     (let ((_%signature190177190291%_
                                            (reverse _%signature190176190280%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl190165190259%_))
                                           (let ((_%e190178190294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl190165190259%_))))
                                             (let ((_%tl190180190299%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e190178190294%_)))
                                                   (_%hd190179190297%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e190178190294%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl190180190299%_))
                                                   (_%__kont193981193982%_
                                                    _%hd190179190297%_
                                                    _%signature190177190291%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g190156190196%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g190156190196%_))))))))
                       (_%loop190172190275%_ _%target190169190270%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193979193980%_))
                  (let ((_%e190160190246%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193979193980%_))))
                    (let ((_%tl190162190251%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190160190246%_)))
                          (_%hd190161190249%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190160190246%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190162190251%_))
                          (let ((_%e190163190254%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190162190251%_))))
                            (let ((_%tl190165190259%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190163190254%_)))
                                  (_%hd190164190257%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190163190254%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190164190257%_))
                                  (let ((_%e190166190262%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190164190257%_))))
                                    (let ((_%tl190168190267%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190166190262%_)))
                                          (_%hd190167190265%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190166190262%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190167190265%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd190167190265%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190168190267%_))
                                                  (let ((_%__splice193983193984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190168190267%_
                                                            '0))))
                                                    (let ((_%tl190171190272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice193983193984%_
                                                              '1)))
                                                          (_%target190169190270%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice193983193984%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190171190272%_))
                                                          (_%__match194016194017%_
                                                           _%e190160190246%_
                                                           _%hd190161190249%_
                                                           _%tl190162190251%_
                                                           _%e190163190254%_
                                                           _%hd190164190257%_
                                                           _%tl190165190259%_
                                                           _%e190166190262%_
                                                           _%hd190167190265%_
                                                           _%tl190168190267%_
                                                           _%__splice193983193984%_
                                                           _%target190169190270%_
                                                           _%tl190171190272%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl190165190259%_))
                      (let ((_%e190189190217%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190165190259%_))))
                        (let ((_%tl190191190222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190189190217%_)))
                              (_%hd190190190220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190189190217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190191190222%_))
                              (_%__kont193985193986%_
                               _%hd190190190220%_
                               _%hd190164190257%_)
                              (let ()
                                (declare (not safe))
                                (_%g190156190196%_)))))
                      (let () (declare (not safe)) (_%g190156190196%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190165190259%_))
                                                      (let ((_%e190189190217%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190165190259%_))))
                (let ((_%tl190191190222%_
                       (let () (declare (not safe)) (##cdr _%e190189190217%_)))
                      (_%hd190190190220%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190189190217%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190191190222%_))
                      (_%__kont193985193986%_
                       _%hd190190190220%_
                       _%hd190164190257%_)
                      (let () (declare (not safe)) (_%g190156190196%_)))))
              (let () (declare (not safe)) (_%g190156190196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190165190259%_))
                                                  (let ((_%e190189190217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190165190259%_))))
                                                    (let ((_%tl190191190222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190189190217%_)))
                                                          (_%hd190190190220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190189190217%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190191190222%_))
                                                          (_%__kont193985193986%_
                                                           _%hd190190190220%_
                                                           _%hd190164190257%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190156190196%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190156190196%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190165190259%_))
                                              (let ((_%e190189190217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190165190259%_))))
                                                (let ((_%tl190191190222%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190189190217%_)))
                                                      (_%hd190190190220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190189190217%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190191190222%_))
                                                      (_%__kont193985193986%_
                                                       _%hd190190190220%_
                                                       _%hd190164190257%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190156190196%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190156190196%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190165190259%_))
                                      (let ((_%e190189190217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190165190259%_))))
                                        (let ((_%tl190191190222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190189190217%_)))
                                              (_%hd190190190220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190189190217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190191190222%_))
                                              (_%__kont193985193986%_
                                               _%hd190190190220%_
                                               _%hd190164190257%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190156190196%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190156190196%_))))))
                          (let () (declare (not safe)) (_%g190156190196%_)))))
                  (let () (declare (not safe)) (_%g190156190196%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx190130%_ _%expr190131%_ _%type190132%_)
        (let ((_%$e190134%_ (not _%type190132%_)))
          (if _%$e190134%_
              _%$e190134%_
              (let ((_%$e190137%_
                     (eq? (##structure-ref _%type190132%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e190137%_
                    _%$e190137%_
                    (let ((_%expr-type190141%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr190131%_))))
                      (if (not _%expr-type190141%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx190130%_
                             _%type190132%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type190141%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx190130%_
                                 _%type190132%_
                                 _%expr-type190141%_))
                              (let ((_%$e190145%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type190141%_
                                        'gxc#!abort::t))))
                                (if _%$e190145%_
                                    _%$e190145%_
                                    (let ((_%$e190148%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type190141%_
                                              _%type190132%_))))
                                      (if _%$e190148%_
                                          _%$e190148%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx190130%_
                                             _%type190132%_
                                             _%expr-type190141%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self189556%_ _%stx189557%_)
        (let* ((_%__stx194061194062%_ _%stx189557%_)
               (_%g189562189672%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194061194062%_)))))
          (let ((_%__kont194063194064%_
                 (lambda (_%L190104%_ _%L190105%_ _%L190106%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L190106%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self189556%_ _%L190105%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self189556%_ _%L190104%_)))))
                (_%__kont194065194066%_
                 (lambda (_%L189930%_ _%L189931%_ _%L189932%_ _%L189933%_)
                   (let ((_%$e189965%_
                          (let ((__tmp194414
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189933%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp194414))))
                     (if _%$e189965%_
                         ((lambda (_%pred-type189968%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type189968%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type189968%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test189973%_
                                        (let ((__tmp194415
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L189933%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L189932%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp194415
                                           _%stx189557%_
                                           _%self189556%_)))
                                       (_%K189977%_
                                        (let ((__tmp194416
                                               (lambda ()
                                                 (let ((__tmp194419
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self189556%_
                                                             _%L189931%_))))
                                                       (__tmp194417
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L189932%_))
                            (let ((__tmp194418
                                   (##structure-ref
                                    _%pred-type189968%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx189557%_
                               __tmp194418)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp194419
                                                    gxc#current-compile-path-type
                                                    __tmp194417)))))
                                          (declare (not safe))
                                          (__make-promise __tmp194416)))
                                       (_%E189980%_
                                        (let ((__tmp194420
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self189556%_
                                                    _%L189930%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp194420)))
                                       (_%__stx194039194040%_ _%test189973%_)
                                       (_%g189984189998%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx194039194040%_)))))
                                  (let ((_%__kont194041194042%_
                                         (lambda (_%L190026%_ _%L190027%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L190026%_))
                                               (force _%K189977%_)
                                               (force _%E189980%_))))
                                        (_%__kont194043194044%_
                                         (lambda ()
                                           (let ((__tmp194421
                                                  (cons '%#if
                                                        (cons _%test189973%_
                                                              (cons (force _%K189977%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E189980%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp194421
                                              _%stx189557%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx194039194040%_))
                                        (let ((_%e189988190010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx194039194040%_))))
                                          (let ((_%tl189990190015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189988190010%_)))
                                                (_%hd189989190013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189988190010%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl189990190015%_))
                                                (let ((_%e189991190018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl189990190015%_))))
                                                  (let ((_%tl189993190023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e189991190018%_)))
                                                        (_%hd189992190021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e189991190018%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189993190023%_))
                                                        (_%__kont194041194042%_
                                                         _%hd189992190021%_
                                                         _%hd189989190013%_)
                                                        (_%__kont194043194044%_))))
                                                (_%__kont194043194044%_))))
                                        (_%__kont194043194044%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self189556%_
                                   _%stx189557%_))))
                          _%$e189965%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self189556%_
                            _%stx189557%_))))))
                (_%__kont194067194068%_
                 (lambda (_%L189806%_ _%L189807%_ _%L189808%_ _%L189809%_)
                   (gxc#optimize-if%
                    _%self189556%_
                    (let ((__tmp194422
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L189808%_
                                       (cons _%L189806%_
                                             (cons _%L189807%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp194422 _%stx189557%_)))))
                (_%__kont194069194070%_
                 (lambda (_%L189709%_ _%L189710%_ _%L189711%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self189556%_ _%stx189557%_)))))
            (let ((_%__match194268194269%_
                   (lambda (_%e189626189734%_
                            _%hd189627189737%_
                            _%tl189628189739%_
                            _%e189629189742%_
                            _%hd189630189745%_
                            _%tl189631189747%_
                            _%e189632189750%_
                            _%hd189633189753%_
                            _%tl189634189755%_
                            _%e189635189758%_
                            _%hd189636189761%_
                            _%tl189637189763%_
                            _%e189638189766%_
                            _%hd189639189769%_
                            _%tl189640189771%_
                            _%e189641189774%_
                            _%hd189642189777%_
                            _%tl189643189779%_
                            _%e189644189782%_
                            _%hd189645189785%_
                            _%tl189646189787%_
                            _%e189647189790%_
                            _%hd189648189793%_
                            _%tl189649189795%_
                            _%e189650189798%_
                            _%hd189651189801%_
                            _%tl189652189803%_)
                     (let ((_%L189806%_ _%hd189651189801%_)
                           (_%L189807%_ _%hd189648189793%_)
                           (_%L189808%_ _%hd189645189785%_)
                           (_%L189809%_ _%hd189642189777%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L189809%_ 'not))
                           (_%__kont194067194068%_
                            _%L189806%_
                            _%L189807%_
                            _%L189808%_
                            _%L189809%_)
                           (_%__kont194069194070%_
                            _%hd189651189801%_
                            _%hd189648189793%_
                            _%hd189630189745%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194061194062%_))
                  (let ((_%e189567190056%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194061194062%_))))
                    (let ((_%tl189569190061%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189567190056%_)))
                          (_%hd189568190059%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189567190056%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189569190061%_))
                          (let ((_%e189570190064%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189569190061%_))))
                            (let ((_%tl189572190069%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189570190064%_)))
                                  (_%hd189571190067%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189570190064%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189571190067%_))
                                  (let ((_%e189573190072%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189571190067%_))))
                                    (let ((_%tl189575190077%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189573190072%_)))
                                          (_%hd189574190075%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189573190072%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189574190075%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd189574190075%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189575190077%_))
                                                  (let ((_%e189576190080%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189575190077%_))))
                                                    (let ((_%tl189578190085%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189576190080%_)))
                                                          (_%hd189577190083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189576190080%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189578190085%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl189572190069%_))
                      (let ((_%e189579190088%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189572190069%_))))
                        (let ((_%tl189581190093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189579190088%_)))
                              (_%hd189580190091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189579190088%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189581190093%_))
                              (let ((_%e189582190096%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189581190093%_))))
                                (let ((_%tl189584190101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189582190096%_)))
                                      (_%hd189583190099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189582190096%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189584190101%_))
                                      (_%__kont194063194064%_
                                       _%hd189583190099%_
                                       _%hd189580190091%_
                                       _%hd189577190083%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g189562189672%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g189562189672%_)))))
                      (let () (declare (not safe)) (_%g189562189672%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl189572190069%_))
                      (let ((_%e189662189693%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189572190069%_))))
                        (let ((_%tl189664189698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189662189693%_)))
                              (_%hd189663189696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189662189693%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189664189698%_))
                              (let ((_%e189665189701%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189664189698%_))))
                                (let ((_%tl189667189706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189665189701%_)))
                                      (_%hd189666189704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189665189701%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189667189706%_))
                                      (_%__kont194069194070%_
                                       _%hd189666189704%_
                                       _%hd189663189696%_
                                       _%hd189571190067%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g189562189672%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g189562189672%_)))))
                      (let () (declare (not safe)) (_%g189562189672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189572190069%_))
                                                      (let ((_%e189662189693%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189572190069%_))))
                (let ((_%tl189664189698%_
                       (let () (declare (not safe)) (##cdr _%e189662189693%_)))
                      (_%hd189663189696%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189662189693%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl189664189698%_))
                      (let ((_%e189665189701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189664189698%_))))
                        (let ((_%tl189667189706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189665189701%_)))
                              (_%hd189666189704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189665189701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189667189706%_))
                              (_%__kont194069194070%_
                               _%hd189666189704%_
                               _%hd189663189696%_
                               _%hd189571190067%_)
                              (let ()
                                (declare (not safe))
                                (_%g189562189672%_)))))
                      (let () (declare (not safe)) (_%g189562189672%_)))))
              (let () (declare (not safe)) (_%g189562189672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd189574190075%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189575190077%_))
                                                      (let ((_%e189598189866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189575190077%_))))
                (let ((_%tl189600189871%_
                       (let () (declare (not safe)) (##cdr _%e189598189866%_)))
                      (_%hd189599189869%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189598189866%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd189599189869%_))
                      (let ((_%e189601189874%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd189599189869%_))))
                        (let ((_%tl189603189879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189601189874%_)))
                              (_%hd189602189877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189601189874%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd189602189877%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189602189877%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189603189879%_))
                                      (let ((_%e189604189882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189603189879%_))))
                                        (let ((_%tl189606189887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189604189882%_)))
                                              (_%hd189605189885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189604189882%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189606189887%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189600189871%_))
                                                  (let ((_%e189607189890%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189600189871%_))))
                                                    (let ((_%tl189609189895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189607189890%_)))
                                                          (_%hd189608189893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189607189890%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd189608189893%_))
                                                          (let ((_%e189610189898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd189608189893%_))))
                    (let ((_%tl189612189903%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189610189898%_)))
                          (_%hd189611189901%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189610189898%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189611189901%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd189611189901%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189612189903%_))
                                  (let ((_%e189613189906%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189612189903%_))))
                                    (let ((_%tl189615189911%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189613189906%_)))
                                          (_%hd189614189909%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189613189906%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189615189911%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189609189895%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189572190069%_))
                                                  (let ((_%e189616189914%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189572190069%_))))
                                                    (let ((_%tl189618189919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189616189914%_)))
                                                          (_%hd189617189917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189616189914%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189618189919%_))
                                                          (let ((_%e189619189922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189618189919%_))))
                    (let ((_%tl189621189927%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189619189922%_)))
                          (_%hd189620189925%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189619189922%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189621189927%_))
                          (_%__kont194065194066%_
                           _%hd189620189925%_
                           _%hd189617189917%_
                           _%hd189614189909%_
                           _%hd189605189885%_)
                          (let () (declare (not safe)) (_%g189562189672%_)))))
                  (let () (declare (not safe)) (_%g189562189672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189572190069%_))
                                                  (let ((_%e189662189693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189572190069%_))))
                                                    (let ((_%tl189664189698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189662189693%_)))
                                                          (_%hd189663189696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189662189693%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189664189698%_))
                                                          (let ((_%e189665189701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189664189698%_))))
                    (let ((_%tl189667189706%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189665189701%_)))
                          (_%hd189666189704%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189665189701%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189667189706%_))
                          (_%__kont194069194070%_
                           _%hd189666189704%_
                           _%hd189663189696%_
                           _%hd189571190067%_)
                          (let () (declare (not safe)) (_%g189562189672%_)))))
                  (let () (declare (not safe)) (_%g189562189672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189609189895%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189572190069%_))
                                                  (let ((_%e189647189790%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189572190069%_))))
                                                    (let ((_%tl189649189795%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189647189790%_)))
                                                          (_%hd189648189793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189647189790%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189649189795%_))
                                                          (let ((_%e189650189798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189649189795%_))))
                    (let ((_%tl189652189803%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189650189798%_)))
                          (_%hd189651189801%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189650189798%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189652189803%_))
                          (_%__match194268194269%_
                           _%e189567190056%_
                           _%hd189568190059%_
                           _%tl189569190061%_
                           _%e189570190064%_
                           _%hd189571190067%_
                           _%tl189572190069%_
                           _%e189573190072%_
                           _%hd189574190075%_
                           _%tl189575190077%_
                           _%e189598189866%_
                           _%hd189599189869%_
                           _%tl189600189871%_
                           _%e189601189874%_
                           _%hd189602189877%_
                           _%tl189603189879%_
                           _%e189604189882%_
                           _%hd189605189885%_
                           _%tl189606189887%_
                           _%e189607189890%_
                           _%hd189608189893%_
                           _%tl189609189895%_
                           _%e189647189790%_
                           _%hd189648189793%_
                           _%tl189649189795%_
                           _%e189650189798%_
                           _%hd189651189801%_
                           _%tl189652189803%_)
                          (let () (declare (not safe)) (_%g189562189672%_)))))
                  (let () (declare (not safe)) (_%g189562189672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189572190069%_))
                                                  (let ((_%e189662189693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189572190069%_))))
                                                    (let ((_%tl189664189698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189662189693%_)))
                                                          (_%hd189663189696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189662189693%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189664189698%_))
                                                          (let ((_%e189665189701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189664189698%_))))
                    (let ((_%tl189667189706%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189665189701%_)))
                          (_%hd189666189704%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189665189701%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189667189706%_))
                          (_%__kont194069194070%_
                           _%hd189666189704%_
                           _%hd189663189696%_
                           _%hd189571190067%_)
                          (let () (declare (not safe)) (_%g189562189672%_)))))
                  (let () (declare (not safe)) (_%g189562189672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189609189895%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189572190069%_))
                                          (let ((_%e189647189790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189572190069%_))))
                                            (let ((_%tl189649189795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189647189790%_)))
                                                  (_%hd189648189793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189647189790%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189649189795%_))
                                                  (let ((_%e189650189798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189649189795%_))))
                                                    (let ((_%tl189652189803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189650189798%_)))
                                                          (_%hd189651189801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189650189798%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189652189803%_))
                                                          (_%__match194268194269%_
                                                           _%e189567190056%_
                                                           _%hd189568190059%_
                                                           _%tl189569190061%_
                                                           _%e189570190064%_
                                                           _%hd189571190067%_
                                                           _%tl189572190069%_
                                                           _%e189573190072%_
                                                           _%hd189574190075%_
                                                           _%tl189575190077%_
                                                           _%e189598189866%_
                                                           _%hd189599189869%_
                                                           _%tl189600189871%_
                                                           _%e189601189874%_
                                                           _%hd189602189877%_
                                                           _%tl189603189879%_
                                                           _%e189604189882%_
                                                           _%hd189605189885%_
                                                           _%tl189606189887%_
                                                           _%e189607189890%_
                                                           _%hd189608189893%_
                                                           _%tl189609189895%_
                                                           _%e189647189790%_
                                                           _%hd189648189793%_
                                                           _%tl189649189795%_
                                                           _%e189650189798%_
                                                           _%hd189651189801%_
                                                           _%tl189652189803%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189562189672%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189562189672%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189572190069%_))
                                          (let ((_%e189662189693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189572190069%_))))
                                            (let ((_%tl189664189698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189662189693%_)))
                                                  (_%hd189663189696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189662189693%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189664189698%_))
                                                  (let ((_%e189665189701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189664189698%_))))
                                                    (let ((_%tl189667189706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189665189701%_)))
                                                          (_%hd189666189704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189665189701%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189667189706%_))
                                                          (_%__kont194069194070%_
                                                           _%hd189666189704%_
                                                           _%hd189663189696%_
                                                           _%hd189571190067%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189562189672%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189562189672%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189609189895%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189572190069%_))
                                      (let ((_%e189647189790%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189572190069%_))))
                                        (let ((_%tl189649189795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189647189790%_)))
                                              (_%hd189648189793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189647189790%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189649189795%_))
                                              (let ((_%e189650189798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189649189795%_))))
                                                (let ((_%tl189652189803%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189650189798%_)))
                                                      (_%hd189651189801%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189650189798%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189652189803%_))
                                                      (_%__match194268194269%_
                                                       _%e189567190056%_
                                                       _%hd189568190059%_
                                                       _%tl189569190061%_
                                                       _%e189570190064%_
                                                       _%hd189571190067%_
                                                       _%tl189572190069%_
                                                       _%e189573190072%_
                                                       _%hd189574190075%_
                                                       _%tl189575190077%_
                                                       _%e189598189866%_
                                                       _%hd189599189869%_
                                                       _%tl189600189871%_
                                                       _%e189601189874%_
                                                       _%hd189602189877%_
                                                       _%tl189603189879%_
                                                       _%e189604189882%_
                                                       _%hd189605189885%_
                                                       _%tl189606189887%_
                                                       _%e189607189890%_
                                                       _%hd189608189893%_
                                                       _%tl189609189895%_
                                                       _%e189647189790%_
                                                       _%hd189648189793%_
                                                       _%tl189649189795%_
                                                       _%e189650189798%_
                                                       _%hd189651189801%_
                                                       _%tl189652189803%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189562189672%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189562189672%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189562189672%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189572190069%_))
                                      (let ((_%e189662189693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189572190069%_))))
                                        (let ((_%tl189664189698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189662189693%_)))
                                              (_%hd189663189696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189662189693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189664189698%_))
                                              (let ((_%e189665189701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189664189698%_))))
                                                (let ((_%tl189667189706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189665189701%_)))
                                                      (_%hd189666189704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189665189701%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189667189706%_))
                                                      (_%__kont194069194070%_
                                                       _%hd189666189704%_
                                                       _%hd189663189696%_
                                                       _%hd189571190067%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189562189672%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189562189672%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189562189672%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189609189895%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189572190069%_))
                                  (let ((_%e189647189790%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189572190069%_))))
                                    (let ((_%tl189649189795%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189647189790%_)))
                                          (_%hd189648189793%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189647189790%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189649189795%_))
                                          (let ((_%e189650189798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189649189795%_))))
                                            (let ((_%tl189652189803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189650189798%_)))
                                                  (_%hd189651189801%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189650189798%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl189652189803%_))
                                                  (_%__match194268194269%_
                                                   _%e189567190056%_
                                                   _%hd189568190059%_
                                                   _%tl189569190061%_
                                                   _%e189570190064%_
                                                   _%hd189571190067%_
                                                   _%tl189572190069%_
                                                   _%e189573190072%_
                                                   _%hd189574190075%_
                                                   _%tl189575190077%_
                                                   _%e189598189866%_
                                                   _%hd189599189869%_
                                                   _%tl189600189871%_
                                                   _%e189601189874%_
                                                   _%hd189602189877%_
                                                   _%tl189603189879%_
                                                   _%e189604189882%_
                                                   _%hd189605189885%_
                                                   _%tl189606189887%_
                                                   _%e189607189890%_
                                                   _%hd189608189893%_
                                                   _%tl189609189895%_
                                                   _%e189647189790%_
                                                   _%hd189648189793%_
                                                   _%tl189649189795%_
                                                   _%e189650189798%_
                                                   _%hd189651189801%_
                                                   _%tl189652189803%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189562189672%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189562189672%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189572190069%_))
                                  (let ((_%e189662189693%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189572190069%_))))
                                    (let ((_%tl189664189698%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189662189693%_)))
                                          (_%hd189663189696%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189662189693%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189664189698%_))
                                          (let ((_%e189665189701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189664189698%_))))
                                            (let ((_%tl189667189706%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189665189701%_)))
                                                  (_%hd189666189704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189665189701%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl189667189706%_))
                                                  (_%__kont194069194070%_
                                                   _%hd189666189704%_
                                                   _%hd189663189696%_
                                                   _%hd189571190067%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189562189672%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189562189672%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189609189895%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189572190069%_))
                          (let ((_%e189647189790%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189572190069%_))))
                            (let ((_%tl189649189795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189647189790%_)))
                                  (_%hd189648189793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189647189790%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189649189795%_))
                                  (let ((_%e189650189798%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189649189795%_))))
                                    (let ((_%tl189652189803%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189650189798%_)))
                                          (_%hd189651189801%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189650189798%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189652189803%_))
                                          (_%__match194268194269%_
                                           _%e189567190056%_
                                           _%hd189568190059%_
                                           _%tl189569190061%_
                                           _%e189570190064%_
                                           _%hd189571190067%_
                                           _%tl189572190069%_
                                           _%e189573190072%_
                                           _%hd189574190075%_
                                           _%tl189575190077%_
                                           _%e189598189866%_
                                           _%hd189599189869%_
                                           _%tl189600189871%_
                                           _%e189601189874%_
                                           _%hd189602189877%_
                                           _%tl189603189879%_
                                           _%e189604189882%_
                                           _%hd189605189885%_
                                           _%tl189606189887%_
                                           _%e189607189890%_
                                           _%hd189608189893%_
                                           _%tl189609189895%_
                                           _%e189647189790%_
                                           _%hd189648189793%_
                                           _%tl189649189795%_
                                           _%e189650189798%_
                                           _%hd189651189801%_
                                           _%tl189652189803%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g189562189672%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189562189672%_)))))
                          (let () (declare (not safe)) (_%g189562189672%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189572190069%_))
                          (let ((_%e189662189693%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189572190069%_))))
                            (let ((_%tl189664189698%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189662189693%_)))
                                  (_%hd189663189696%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189662189693%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189664189698%_))
                                  (let ((_%e189665189701%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189664189698%_))))
                                    (let ((_%tl189667189706%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189665189701%_)))
                                          (_%hd189666189704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189665189701%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189667189706%_))
                                          (_%__kont194069194070%_
                                           _%hd189666189704%_
                                           _%hd189663189696%_
                                           _%hd189571190067%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g189562189672%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189562189672%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g189562189672%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189572190069%_))
                                                      (let ((_%e189662189693%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189572190069%_))))
                (let ((_%tl189664189698%_
                       (let () (declare (not safe)) (##cdr _%e189662189693%_)))
                      (_%hd189663189696%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189662189693%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl189664189698%_))
                      (let ((_%e189665189701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189664189698%_))))
                        (let ((_%tl189667189706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189665189701%_)))
                              (_%hd189666189704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189665189701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189667189706%_))
                              (_%__kont194069194070%_
                               _%hd189666189704%_
                               _%hd189663189696%_
                               _%hd189571190067%_)
                              (let ()
                                (declare (not safe))
                                (_%g189562189672%_)))))
                      (let () (declare (not safe)) (_%g189562189672%_)))))
              (let () (declare (not safe)) (_%g189562189672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189572190069%_))
                                                  (let ((_%e189662189693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189572190069%_))))
                                                    (let ((_%tl189664189698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189662189693%_)))
                                                          (_%hd189663189696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189662189693%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl189664189698%_))
                                                          (let ((_%e189665189701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189664189698%_))))
                    (let ((_%tl189667189706%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189665189701%_)))
                          (_%hd189666189704%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189665189701%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl189667189706%_))
                          (_%__kont194069194070%_
                           _%hd189666189704%_
                           _%hd189663189696%_
                           _%hd189571190067%_)
                          (let () (declare (not safe)) (_%g189562189672%_)))))
                  (let () (declare (not safe)) (_%g189562189672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189572190069%_))
                                          (let ((_%e189662189693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189572190069%_))))
                                            (let ((_%tl189664189698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189662189693%_)))
                                                  (_%hd189663189696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189662189693%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189664189698%_))
                                                  (let ((_%e189665189701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189664189698%_))))
                                                    (let ((_%tl189667189706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189665189701%_)))
                                                          (_%hd189666189704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189665189701%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189667189706%_))
                                                          (_%__kont194069194070%_
                                                           _%hd189666189704%_
                                                           _%hd189663189696%_
                                                           _%hd189571190067%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189562189672%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189562189672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189572190069%_))
                                      (let ((_%e189662189693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189572190069%_))))
                                        (let ((_%tl189664189698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189662189693%_)))
                                              (_%hd189663189696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189662189693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189664189698%_))
                                              (let ((_%e189665189701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189664189698%_))))
                                                (let ((_%tl189667189706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189665189701%_)))
                                                      (_%hd189666189704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189665189701%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189667189706%_))
                                                      (_%__kont194069194070%_
                                                       _%hd189666189704%_
                                                       _%hd189663189696%_
                                                       _%hd189571190067%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189562189672%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189562189672%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189562189672%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189572190069%_))
                                  (let ((_%e189662189693%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189572190069%_))))
                                    (let ((_%tl189664189698%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189662189693%_)))
                                          (_%hd189663189696%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189662189693%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189664189698%_))
                                          (let ((_%e189665189701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189664189698%_))))
                                            (let ((_%tl189667189706%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189665189701%_)))
                                                  (_%hd189666189704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189665189701%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl189667189706%_))
                                                  (_%__kont194069194070%_
                                                   _%hd189666189704%_
                                                   _%hd189663189696%_
                                                   _%hd189571190067%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189562189672%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189562189672%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189562189672%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189572190069%_))
                          (let ((_%e189662189693%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189572190069%_))))
                            (let ((_%tl189664189698%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189662189693%_)))
                                  (_%hd189663189696%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189662189693%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189664189698%_))
                                  (let ((_%e189665189701%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189664189698%_))))
                                    (let ((_%tl189667189706%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189665189701%_)))
                                          (_%hd189666189704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189665189701%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189667189706%_))
                                          (_%__kont194069194070%_
                                           _%hd189666189704%_
                                           _%hd189663189696%_
                                           _%hd189571190067%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g189562189672%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g189562189672%_)))))
                          (let () (declare (not safe)) (_%g189562189672%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl189572190069%_))
                  (let ((_%e189662189693%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl189572190069%_))))
                    (let ((_%tl189664189698%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189662189693%_)))
                          (_%hd189663189696%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189662189693%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189664189698%_))
                          (let ((_%e189665189701%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189664189698%_))))
                            (let ((_%tl189667189706%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189665189701%_)))
                                  (_%hd189666189704%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189665189701%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189667189706%_))
                                  (_%__kont194069194070%_
                                   _%hd189666189704%_
                                   _%hd189663189696%_
                                   _%hd189571190067%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g189562189672%_)))))
                          (let () (declare (not safe)) (_%g189562189672%_)))))
                  (let () (declare (not safe)) (_%g189562189672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189572190069%_))
                                                      (let ((_%e189662189693%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189572190069%_))))
                (let ((_%tl189664189698%_
                       (let () (declare (not safe)) (##cdr _%e189662189693%_)))
                      (_%hd189663189696%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189662189693%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl189664189698%_))
                      (let ((_%e189665189701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189664189698%_))))
                        (let ((_%tl189667189706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189665189701%_)))
                              (_%hd189666189704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189665189701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189667189706%_))
                              (_%__kont194069194070%_
                               _%hd189666189704%_
                               _%hd189663189696%_
                               _%hd189571190067%_)
                              (let ()
                                (declare (not safe))
                                (_%g189562189672%_)))))
                      (let () (declare (not safe)) (_%g189562189672%_)))))
              (let () (declare (not safe)) (_%g189562189672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189572190069%_))
                                              (let ((_%e189662189693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189572190069%_))))
                                                (let ((_%tl189664189698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189662189693%_)))
                                                      (_%hd189663189696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189662189693%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl189664189698%_))
                                                      (let ((_%e189665189701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl189664189698%_))))
                (let ((_%tl189667189706%_
                       (let () (declare (not safe)) (##cdr _%e189665189701%_)))
                      (_%hd189666189704%_
                       (let ()
                         (declare (not safe))
                         (##car _%e189665189701%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189667189706%_))
                      (_%__kont194069194070%_
                       _%hd189666189704%_
                       _%hd189663189696%_
                       _%hd189571190067%_)
                      (let () (declare (not safe)) (_%g189562189672%_)))))
              (let () (declare (not safe)) (_%g189562189672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g189562189672%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189572190069%_))
                                      (let ((_%e189662189693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189572190069%_))))
                                        (let ((_%tl189664189698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189662189693%_)))
                                              (_%hd189663189696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189662189693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl189664189698%_))
                                              (let ((_%e189665189701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl189664189698%_))))
                                                (let ((_%tl189667189706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189665189701%_)))
                                                      (_%hd189666189704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189665189701%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189667189706%_))
                                                      (_%__kont194069194070%_
                                                       _%hd189666189704%_
                                                       _%hd189663189696%_
                                                       _%hd189571190067%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189562189672%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189562189672%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189562189672%_))))))
                          (let () (declare (not safe)) (_%g189562189672%_)))))
                  (let () (declare (not safe)) (_%g189562189672%_))))))))))
