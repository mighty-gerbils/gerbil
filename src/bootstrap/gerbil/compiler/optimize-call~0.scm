(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1771036690)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp437311 (list gxc#::basic-xform::t))
            (__tmp437310 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp437311
         '()
         __tmp437310
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args436588%_
        (apply make-instance gxc#::optimize-call::t _%$args436588%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp437312
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
        (__make-atomic-promise __tmp437312)))
    (define gxc#apply-optimize-call
      (lambda (_%stx436580%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self436583%_
                (let ((__obj437302
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj437302))
               (__tmp437313
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self436583%_ _%stx436580%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp437313
           gxc#current-compile-method
           _%self436583%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp437315 (list gxc#::void::t))
            (__tmp437314 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp437315
         '()
         __tmp437314
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args436577%_
        (apply make-instance gxc#::check-return-type::t _%$args436577%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp437316
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
        (__make-atomic-promise __tmp437316)))
    (define gxc#apply-check-return-type
      (lambda (_%stx436569%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self436572%_
                (let ((__obj437304
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj437304))
               (__tmp437317
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self436572%_ _%stx436569%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp437317
           gxc#current-compile-method
           _%self436572%_))))
    (define gxc#optimize-call%
      (lambda (_%self436176%_ _%stx436177%_)
        (let* ((_%__stx436657436658%_ _%stx436177%_)
               (_%g436180436226%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx436657436658%_)))))
          (let ((_%__kont436659436660%_
                 (lambda (_%g436182436365%_ _%g436183436366%_)
                   (let* ((_%rator-id436386%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g436183436366%_)))
                          (_%rator-type436388%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id436386%_))))
                     (if (or (not _%rator-type436388%_)
                             (eq? (##structure-ref
                                   _%rator-type436388%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self436176%_ _%stx436177%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type436388%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp437318
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type436388%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id436386%_
                                  '" => "
                                  _%rator-type436388%_
                                  '" "
                                  __tmp437318))
                               (let* ((_%optimized436403%_
                                       (let ((__method437305
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type436388%_
                                                 'optimize-call))))
                                         (if __method437305
                                             (let ((__tmp437319
                                                    (let ((__tmp437320
                                                           (lambda (_%g436395436398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g436396436400%_)
                     (cons _%g436395436398%_ _%g436396436400%_))))
              (declare (not safe))
              (foldr__0 __tmp437320 '() _%g436182436365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method437305
                                                _%rator-type436388%_
                                                _%self436176%_
                                                _%stx436177%_
                                                __tmp437319))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type436388%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx436605436606%_
                                       _%optimized436403%_)
                                      (_%g436406436435%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx436605436606%_)))))
                                 (let ((_%__kont436607436608%_
                                        (lambda (_%g436408436501%_
                                                 _%g436409436502%_)
                                          (let* ((_%optimized-rator-id436529%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g436409436502%_)))
                                                 (_%rator-type436534%_
                                                  (let ((_%$e436531%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id436529%_))))
                                                    (if _%$e436531%_
                                                        _%$e436531%_
                                                        _%rator-type436388%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type436534%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id436529%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type436534%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type436534%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized436403%_
                                                (let ((__tmp437321
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g436409436502%_ '()))
                           (let ((__tmp437322
                                  (lambda (_%g436542436545%_ _%g436543436547%_)
                                    (cons _%g436542436545%_
                                          _%g436543436547%_))))
                             (declare (not safe))
                             (foldr__0 __tmp437322 '() _%g436408436501%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp437321
                                                   _%stx436177%_))))))
                                       (_%__kont436611436612%_
                                        (lambda () _%optimized436403%_)))
                                   (let ((_%__match436654436655%_
                                          (lambda (_%e436410436447%_
                                                   _%hd436411436450%_
                                                   _%tl436412436452%_
                                                   _%e436413436455%_
                                                   _%hd436414436458%_
                                                   _%tl436415436460%_
                                                   _%e436416436463%_
                                                   _%hd436417436466%_
                                                   _%tl436418436468%_
                                                   _%e436419436471%_
                                                   _%hd436420436474%_
                                                   _%tl436421436476%_
                                                   _%__splice436609436610%_
                                                   _%target436422436479%_
                                                   _%tl436424436481%_)
                                            (letrec ((_%loop436425436484%_
                                                      (lambda (_%hd436423436487%_
                                                               _%arg436429436489%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd436423436487%_))
                                                            (let ((_%e436426436491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd436423436487%_))))
                      (let ((_%lp-tl436428436496%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e436426436491%_)))
                            (_%lp-hd436427436494%_
                             (let ()
                               (declare (not safe))
                               (##car _%e436426436491%_))))
                        (_%loop436425436484%_
                         _%lp-tl436428436496%_
                         (cons _%lp-hd436427436494%_ _%arg436429436489%_))))
                    (let ((_%arg436430436499%_ (reverse _%arg436429436489%_)))
                      (_%__kont436607436608%_
                       _%arg436430436499%_
                       _%hd436420436474%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop436425436484%_
                                               _%target436422436479%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx436605436606%_))
                                         (let ((_%e436410436447%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx436605436606%_))))
                                           (let ((_%tl436412436452%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e436410436447%_)))
                                                 (_%hd436411436450%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e436410436447%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd436411436450%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd436411436450%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl436412436452%_))
                                                         (let ((_%e436413436455%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl436412436452%_))))
                   (let ((_%tl436415436460%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e436413436455%_)))
                         (_%hd436414436458%_
                          (let ()
                            (declare (not safe))
                            (##car _%e436413436455%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd436414436458%_))
                         (let ((_%e436416436463%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd436414436458%_))))
                           (let ((_%tl436418436468%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e436416436463%_)))
                                 (_%hd436417436466%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e436416436463%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd436417436466%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd436417436466%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl436418436468%_))
                                         (let ((_%e436419436471%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl436418436468%_))))
                                           (let ((_%tl436421436476%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e436419436471%_)))
                                                 (_%hd436420436474%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e436419436471%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl436421436476%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl436415436460%_))
                                                     (let ((_%__splice436609436610%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl436415436460%_
                                                               '0))))
                                                       (let ((_%tl436424436481%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice436609436610%_ '1)))
                     (_%target436422436479%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice436609436610%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl436424436481%_))
                     (_%__match436654436655%_
                      _%e436410436447%_
                      _%hd436411436450%_
                      _%tl436412436452%_
                      _%e436413436455%_
                      _%hd436414436458%_
                      _%tl436415436460%_
                      _%e436416436463%_
                      _%hd436417436466%_
                      _%tl436418436468%_
                      _%e436419436471%_
                      _%hd436420436474%_
                      _%tl436421436476%_
                      _%__splice436609436610%_
                      _%target436422436479%_
                      _%tl436424436481%_)
                     (_%__kont436611436612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont436611436612%_))
                                                 (_%__kont436611436612%_))))
                                         (_%__kont436611436612%_))
                                     (_%__kont436611436612%_))
                                 (_%__kont436611436612%_))))
                         (_%__kont436611436612%_))))
                 (_%__kont436611436612%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont436611436612%_))
                                                 (_%__kont436611436612%_))))
                                         (_%__kont436611436612%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type436388%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type436388%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp437323
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g436183436366%_
                                                                '()))
                                                    (map (lambda (_%g436553436555%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self436176%_
                                                              _%g436553436555%_)))
                                                         (let ((__tmp437324
                                                                (lambda (_%g436557436560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g436558436562%_)
                          (cons _%g436557436560%_ _%g436558436562%_))))
                   (declare (not safe))
                   (foldr__0 __tmp437324 '() _%g436182436365%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp437323
                                    _%stx436177%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx436177%_
                                    _%rator-type436388%_))))))))
                (_%__kont436663436664%_
                 (lambda (_%g436205436269%_ _%g436206436270%_)
                   (let ((_%rator-type436287%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g436206436270%_))))
                     (if (and _%rator-type436287%_
                              (eq? (##structure-ref
                                    _%rator-type436287%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type436287%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type436287%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type436287%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp437325
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self436176%_
                                               _%g436206436270%_))
                                            (map (lambda (_%g436289436291%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self436176%_
                                                      _%g436289436291%_)))
                                                 (let ((__tmp437326
                                                        (lambda (_%g436293436296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g436294436298%_)
                  (cons _%g436293436296%_ _%g436294436298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp437326
                                                    '()
                                                    _%g436205436269%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp437325 _%stx436177%_))
                         (if (or (not _%rator-type436287%_)
                                 (let ((__tmp437327
                                        (##structure-ref
                                         _%rator-type436287%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp437327 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self436176%_ _%stx436177%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx436177%_
                                _%rator-type436287%_))))))))
            (let* ((_%__match436724436725%_
                    (lambda (_%e436207436231%_
                             _%hd436208436234%_
                             _%tl436209436236%_
                             _%e436210436239%_
                             _%hd436211436242%_
                             _%tl436212436244%_
                             _%__splice436665436666%_
                             _%target436213436247%_
                             _%tl436215436249%_)
                      (letrec ((_%loop436216436252%_
                                (lambda (_%hd436214436255%_
                                         _%rand436220436257%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd436214436255%_))
                                      (let ((_%e436217436259%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd436214436255%_))))
                                        (let ((_%lp-tl436219436264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e436217436259%_)))
                                              (_%lp-hd436218436262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e436217436259%_))))
                                          (_%loop436216436252%_
                                           _%lp-tl436219436264%_
                                           (cons _%lp-hd436218436262%_
                                                 _%rand436220436257%_))))
                                      (let ((_%rand436221436267%_
                                             (reverse _%rand436220436257%_)))
                                        (_%__kont436663436664%_
                                         _%rand436221436267%_
                                         _%hd436211436242%_))))))
                        (_%loop436216436252%_ _%target436213436247%_ '()))))
                   (_%__match436704436705%_
                    (lambda (_%e436184436311%_
                             _%hd436185436314%_
                             _%tl436186436316%_
                             _%e436187436319%_
                             _%hd436188436322%_
                             _%tl436189436324%_
                             _%e436190436327%_
                             _%hd436191436330%_
                             _%tl436192436332%_
                             _%e436193436335%_
                             _%hd436194436338%_
                             _%tl436195436340%_
                             _%__splice436661436662%_
                             _%target436196436343%_
                             _%tl436198436345%_)
                      (letrec ((_%loop436199436348%_
                                (lambda (_%hd436197436351%_
                                         _%rand436203436353%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd436197436351%_))
                                      (let ((_%e436200436355%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd436197436351%_))))
                                        (let ((_%lp-tl436202436360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e436200436355%_)))
                                              (_%lp-hd436201436358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e436200436355%_))))
                                          (_%loop436199436348%_
                                           _%lp-tl436202436360%_
                                           (cons _%lp-hd436201436358%_
                                                 _%rand436203436353%_))))
                                      (let ((_%rand436204436363%_
                                             (reverse _%rand436203436353%_)))
                                        (_%__kont436659436660%_
                                         _%rand436204436363%_
                                         _%hd436194436338%_))))))
                        (_%loop436199436348%_ _%target436196436343%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx436657436658%_))
                  (let ((_%e436184436311%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx436657436658%_))))
                    (let ((_%tl436186436316%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e436184436311%_)))
                          (_%hd436185436314%_
                           (let ()
                             (declare (not safe))
                             (##car _%e436184436311%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl436186436316%_))
                          (let ((_%e436187436319%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl436186436316%_))))
                            (let ((_%tl436189436324%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e436187436319%_)))
                                  (_%hd436188436322%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e436187436319%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd436188436322%_))
                                  (let ((_%e436190436327%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd436188436322%_))))
                                    (let ((_%tl436192436332%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e436190436327%_)))
                                          (_%hd436191436330%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e436190436327%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd436191436330%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd436191436330%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl436192436332%_))
                                                  (let ((_%e436193436335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl436192436332%_))))
                                                    (let ((_%tl436195436340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e436193436335%_)))
                                                          (_%hd436194436338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e436193436335%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl436195436340%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl436189436324%_))
                      (let ((_%__splice436661436662%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl436189436324%_
                                '0))))
                        (let ((_%tl436198436345%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice436661436662%_ '1)))
                              (_%target436196436343%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice436661436662%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl436198436345%_))
                              (_%__match436704436705%_
                               _%e436184436311%_
                               _%hd436185436314%_
                               _%tl436186436316%_
                               _%e436187436319%_
                               _%hd436188436322%_
                               _%tl436189436324%_
                               _%e436190436327%_
                               _%hd436191436330%_
                               _%tl436192436332%_
                               _%e436193436335%_
                               _%hd436194436338%_
                               _%tl436195436340%_
                               _%__splice436661436662%_
                               _%target436196436343%_
                               _%tl436198436345%_)
                              (let ()
                                (declare (not safe))
                                (_%g436180436226%_)))))
                      (let () (declare (not safe)) (_%g436180436226%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl436189436324%_))
                      (let ((_%__splice436665436666%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl436189436324%_
                                '0))))
                        (let ((_%tl436215436249%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice436665436666%_ '1)))
                              (_%target436213436247%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice436665436666%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl436215436249%_))
                              (_%__match436724436725%_
                               _%e436184436311%_
                               _%hd436185436314%_
                               _%tl436186436316%_
                               _%e436187436319%_
                               _%hd436188436322%_
                               _%tl436189436324%_
                               _%__splice436665436666%_
                               _%target436213436247%_
                               _%tl436215436249%_)
                              (let ()
                                (declare (not safe))
                                (_%g436180436226%_)))))
                      (let () (declare (not safe)) (_%g436180436226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl436189436324%_))
                                                      (let ((_%__splice436665436666%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl436189436324%_
                        '0))))
                (let ((_%tl436215436249%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice436665436666%_ '1)))
                      (_%target436213436247%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice436665436666%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl436215436249%_))
                      (_%__match436724436725%_
                       _%e436184436311%_
                       _%hd436185436314%_
                       _%tl436186436316%_
                       _%e436187436319%_
                       _%hd436188436322%_
                       _%tl436189436324%_
                       _%__splice436665436666%_
                       _%target436213436247%_
                       _%tl436215436249%_)
                      (let () (declare (not safe)) (_%g436180436226%_)))))
              (let () (declare (not safe)) (_%g436180436226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl436189436324%_))
                                                  (let ((_%__splice436665436666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl436189436324%_
                                                            '0))))
                                                    (let ((_%tl436215436249%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice436665436666%_
                                                              '1)))
                                                          (_%target436213436247%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice436665436666%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl436215436249%_))
                                                          (_%__match436724436725%_
                                                           _%e436184436311%_
                                                           _%hd436185436314%_
                                                           _%tl436186436316%_
                                                           _%e436187436319%_
                                                           _%hd436188436322%_
                                                           _%tl436189436324%_
                                                           _%__splice436665436666%_
                                                           _%target436213436247%_
                                                           _%tl436215436249%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g436180436226%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g436180436226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl436189436324%_))
                                              (let ((_%__splice436665436666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl436189436324%_
                                                        '0))))
                                                (let ((_%tl436215436249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice436665436666%_
                                                          '1)))
                                                      (_%target436213436247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice436665436666%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl436215436249%_))
                                                      (_%__match436724436725%_
                                                       _%e436184436311%_
                                                       _%hd436185436314%_
                                                       _%tl436186436316%_
                                                       _%e436187436319%_
                                                       _%hd436188436322%_
                                                       _%tl436189436324%_
                                                       _%__splice436665436666%_
                                                       _%target436213436247%_
                                                       _%tl436215436249%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g436180436226%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g436180436226%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl436189436324%_))
                                      (let ((_%__splice436665436666%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl436189436324%_
                                                '0))))
                                        (let ((_%tl436215436249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice436665436666%_
                                                  '1)))
                                              (_%target436213436247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice436665436666%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl436215436249%_))
                                              (_%__match436724436725%_
                                               _%e436184436311%_
                                               _%hd436185436314%_
                                               _%tl436186436316%_
                                               _%e436187436319%_
                                               _%hd436188436322%_
                                               _%tl436189436324%_
                                               _%__splice436665436666%_
                                               _%target436213436247%_
                                               _%tl436215436249%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g436180436226%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g436180436226%_))))))
                          (let () (declare (not safe)) (_%g436180436226%_)))))
                  (let () (declare (not safe)) (_%g436180436226%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self436138%_ _%ctx436139%_ _%stx436140%_ _%args436141%_)
        (let ((_%self436144%_ _%self436138%_))
          (if (let ((__method437306
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self436144%_ 'check-arguments))))
                (if __method437306
                    (let ()
                      (declare (not safe))
                      (__method437306
                       _%self436144%_
                       _%ctx436139%_
                       _%stx436140%_
                       _%args436141%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self436144%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature436154%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self436144%_ '2 '#f '#f)))
                     (_%signature436156%_ _%signature436154%_)
                     (_%$e436166%_
                      (if _%signature436156%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature436156%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e436166%_
                    ((lambda (_%unchecked436169%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked436169%_))
                           (let ((__tmp437328
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked436169%_
                                                          '()))
                                              (map (lambda (_%g436170436172%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx436139%_
                                                        _%g436170436172%_)))
                                                   _%args436141%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp437328
                              _%stx436140%_
                              _%ctx436139%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx436139%_ _%stx436140%_))))
                     _%$e436166%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx436139%_ _%stx436140%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx436139%_ _%stx436140%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass436590 __method-table436591)
        (let ((__check-arguments436592
               (let ((__tmp437329
                      (lambda ()
                        (let ((__method436593
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table436591
                                  'check-arguments
                                  '#f))))
                          (if __method436593
                              __method436593
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp437329))))
          (lambda (_%self436138%_ _%ctx436139%_ _%stx436140%_ _%args436141%_)
            (let ((_%self436144%_ _%self436138%_))
              (if ((force __check-arguments436592)
                   _%self436144%_
                   _%ctx436139%_
                   _%stx436140%_
                   _%args436141%_)
                  (let* ((_%signature436154%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self436144%_
                             '2
                             '#f
                             '#f)))
                         (_%signature436156%_ _%signature436154%_)
                         (_%$e436166%_
                          (if _%signature436156%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature436156%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e436166%_
                        ((lambda (_%unchecked436169%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked436169%_))
                               (let ((__tmp437330
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked436169%_
                                                              '()))
                                                  (map (lambda (_%g436170436172%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx436139%_
                                                            _%g436170436172%_)))
                                                       _%args436141%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp437330
                                  _%stx436140%_
                                  _%ctx436139%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx436139%_
                                  _%stx436140%_))))
                         _%$e436166%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx436139%_ _%stx436140%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx436139%_ _%stx436140%_))))))))
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
      (lambda (_%self435891%_ _%ctx435892%_ _%stx435893%_ _%args435894%_)
        (let* ((_%self435897%_ _%self435891%_)
               (_%signature435906435908%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self435897%_ '2 '#f '#f))))
          (if _%signature435906435908%_
              (let* ((_%signature435910%_ _%signature435906435908%_)
                     (_%argument-types435911435913%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature435910%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types435911435913%_
                    (let* ((_%argument-types435915%_
                            _%argument-types435911435913%_)
                           (_%argument-types435920%_
                            (let ((__tmp437331
                                   (lambda (_%t435918%_)
                                     (if _%t435918%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx435893%_
                                            _%t435918%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp437331
                               _%argument-types435915%_))))
                      (let _%loop435922%_ ((_%rest-args435924%_ _%args435894%_)
                                           (_%rest-types435925%_
                                            _%argument-types435920%_)
                                           (_%result435926%_ '#t))
                        (let* ((_%rest-args435927435935%_ _%rest-args435924%_)
                               (_%else435929435943%_
                                (lambda () _%result435926%_))
                               (_%K435931436004%_
                                (lambda (_%rest-args435946%_ _%arg435947%_)
                                  (let* ((_%rest-types435948435959%_
                                          _%rest-types435925%_)
                                         (_%E435952435963%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types435948435959%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K435955435992%_
                                           (lambda (_%rest-types435989%_
                                                    _%type435990%_)
                                             (_%loop435922%_
                                              _%rest-args435946%_
                                              _%rest-types435989%_
                                              (if (gxc#check-expression-type!
                                                   _%stx435893%_
                                                   _%arg435947%_
                                                   _%type435990%_)
                                                  _%result435926%_
                                                  '#f))))
                                          (_%K435954435983%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx435893%_
                                                _%argument-types435920%_))))
                                          (_%K435953435973%_
                                           (lambda (_%tail-type435967%_)
                                             (if (let ((__tmp437332
                                                        (lambda (_%g435968435970%_)
                                                          (gxc#check-expression-type!
                                                           _%stx435893%_
                                                           _%g435968435970%_
                                                           _%tail-type435967%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp437332
                                                    _%rest-args435946%_))
                                                 _%result435926%_
                                                 '#f))))
                                      (let ((_%try-match435950435986%_
                                             (lambda ()
                                               (if (null? _%rest-types435948435959%_)
                                                   (_%K435954435983%_)
                                                   (let ((_%tail-type435976%_
                                                          _%rest-types435948435959%_))
                                                     (_%K435953435973%_
                                                      _%tail-type435976%_))))))
                                        (if (pair? _%rest-types435948435959%_)
                                            (let ((_%tl435957435997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types435948435959%_)))
                                                  (_%hd435956435995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types435948435959%_))))
                                              (let ((_%type436000%_
                                                     _%hd435956435995%_)
                                                    (_%rest-types436002%_
                                                     _%tl435957435997%_))
                                                (_%K435955435992%_
                                                 _%rest-types436002%_
                                                 _%type436000%_)))
                                            (_%try-match435950435986%_))))))))
                          (if (pair? _%rest-args435927435935%_)
                              (let ((_%hd435932436007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args435927435935%_)))
                                    (_%tl435933436009%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args435927435935%_))))
                                (let* ((_%arg436012%_ _%hd435932436007%_)
                                       (_%rest-args436014%_
                                        _%tl435933436009%_))
                                  (_%K435931436004%_
                                   _%rest-args436014%_
                                   _%arg436012%_)))
                              (_%else435929435943%_)))))
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
      (lambda (_%self435702%_ _%ctx435703%_ _%stx435704%_ _%args435705%_)
        (let* ((_%self435708%_ _%self435702%_)
               (_%g435718435728%_
                (lambda (_%g435719435725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g435719435725%_))))
               (_%g435717435766%_
                (lambda (_%g435719435731%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g435719435731%_))
                      (let ((_%e435721435733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g435719435731%_))))
                        (let ((_%hd435722435736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e435721435733%_)))
                              (_%tl435723435738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e435721435733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl435723435738%_))
                              ((lambda (_%g435720435741%_)
                                 (let* ((_%klass435753%_
                                         (let ((__tmp437333
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self435708%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx435704%_
                                            __tmp437333)))
                                        (_%object435755%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx435703%_
                                            _%g435720435741%_)))
                                        (_%instance?435760%_
                                         (let ((_%$e435757%_
                                                (gxc#expression-type?
                                                 _%object435755%_
                                                 _%klass435753%_)))
                                           (if _%$e435757%_
                                               _%$e435757%_
                                               (gxc#expression-type?
                                                _%g435720435741%_
                                                _%klass435753%_)))))
                                   (if _%instance?435760%_
                                       (let ((__tmp437334
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object435755%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g435720435741%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object435755%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp437334
                                          _%stx435704%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx435703%_
                                          _%stx435704%_)))))
                               _%hd435722435736%_)
                              (_%g435718435728%_ _%g435719435731%_))))
                      (_%g435718435728%_ _%g435719435731%_)))))
          (_%g435717435766%_ _%args435705%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self435498%_ _%ctx435499%_ _%stx435500%_ _%args435501%_)
        (let* ((_%self435504%_ _%self435498%_)
               (_%g435514435524%_
                (lambda (_%g435515435521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g435515435521%_))))
               (_%g435513435577%_
                (lambda (_%g435515435527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g435515435527%_))
                      (let ((_%e435517435529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g435515435527%_))))
                        (let ((_%hd435518435532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e435517435529%_)))
                              (_%tl435519435534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e435517435529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl435519435534%_))
                              ((lambda (_%g435516435537%_)
                                 (let* ((_%klass435549%_
                                         (let ((__tmp437335
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self435504%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx435500%_
                                            __tmp437335)))
                                        (_%object435551%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx435499%_
                                            _%g435516435537%_)))
                                        (_%instance?435556%_
                                         (let ((_%$e435553%_
                                                (gxc#expression-type?
                                                 _%object435551%_
                                                 _%klass435549%_)))
                                           (if _%$e435553%_
                                               _%$e435553%_
                                               (gxc#expression-type?
                                                _%g435516435537%_
                                                _%klass435549%_))))
                                        (_%klass435559%_ _%klass435549%_))
                                   (if _%instance?435556%_
                                       (let ((__tmp437336
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object435551%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g435516435537%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object435551%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp437336
                                          _%stx435500%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass435559%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp437337
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass435559%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object435551%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp437337
                                              _%stx435500%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass435559%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp437338
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass435559%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object435551%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp437338
                                                  _%stx435500%_))
                                               (let ((__tmp437339
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self435504%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object435551%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp437339
                                                  _%stx435500%_)))))))
                               _%hd435518435532%_)
                              (_%g435514435524%_ _%g435515435527%_))))
                      (_%g435514435524%_ _%g435515435527%_)))))
          (_%g435513435577%_ _%args435501%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx435166%_)
        (let* ((_%__stx436734436735%_ _%stx435166%_)
               (_%g435171435212%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx436734436735%_)))))
          (let ((_%__kont436736436737%_ (lambda () '#t))
                (_%__kont436738436739%_ (lambda () '#t))
                (_%__kont436740436741%_
                 (lambda (_%g435185435278%_ _%g435186435279%_)
                   (let ((_%rator-type435300435302%_
                          (let ((__tmp437340
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g435186435279%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp437340))))
                     (if _%rator-type435300435302%_
                         (let* ((_%rator-type435304%_
                                 _%rator-type435300435302%_)
                                (_%rator-signature435305435307%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type435304%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type435304%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature435305435307%_
                               (let* ((_%rator-signature435309%_
                                       _%rator-signature435305435307%_)
                                      (_%rator-effect435310435312%_
                                       (if _%rator-signature435309%_
                                           (##direct-structure-ref
                                            _%rator-signature435309%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect435310435312%_
                                     (let ((_%rator-effect435314%_
                                            _%rator-effect435310435312%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect435314%_)
                                               (equal? '(alloc)
                                                       _%rator-effect435314%_))
                                           (let ((__tmp437341
                                                  (let ((__tmp437342
                                                         (lambda (_%g435319435322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g435320435324%_)
                   (cons _%g435319435322%_ _%g435320435324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp437342
                                                     '()
                                                     _%g435185435278%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp437341))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont436744436745%_ (lambda () '#f)))
            (let ((_%__match436823436824%_
                   (lambda (_%e435187435224%_
                            _%hd435188435227%_
                            _%tl435189435229%_
                            _%e435190435232%_
                            _%hd435191435235%_
                            _%tl435192435237%_
                            _%e435193435240%_
                            _%hd435194435243%_
                            _%tl435195435245%_
                            _%e435196435248%_
                            _%hd435197435251%_
                            _%tl435198435253%_
                            _%__splice436742436743%_
                            _%target435199435256%_
                            _%tl435201435258%_)
                     (letrec ((_%loop435202435261%_
                               (lambda (_%hd435200435264%_
                                        _%rand435206435266%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd435200435264%_))
                                     (let ((_%e435203435268%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd435200435264%_))))
                                       (let ((_%lp-tl435205435273%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e435203435268%_)))
                                             (_%lp-hd435204435271%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e435203435268%_))))
                                         (_%loop435202435261%_
                                          _%lp-tl435205435273%_
                                          (cons _%lp-hd435204435271%_
                                                _%rand435206435266%_))))
                                     (let ((_%rand435207435276%_
                                            (reverse _%rand435206435266%_)))
                                       (_%__kont436740436741%_
                                        _%rand435207435276%_
                                        _%hd435197435251%_))))))
                       (_%loop435202435261%_ _%target435199435256%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx436734436735%_))
                  (let ((_%e435173435355%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx436734436735%_))))
                    (let ((_%tl435175435360%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e435173435355%_)))
                          (_%hd435174435358%_
                           (let ()
                             (declare (not safe))
                             (##car _%e435173435355%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd435174435358%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd435174435358%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl435175435360%_))
                                  (let ((_%e435176435363%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl435175435360%_))))
                                    (let ((_%tl435178435368%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e435176435363%_)))
                                          (_%hd435177435366%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e435176435363%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl435178435368%_))
                                          (_%__kont436736436737%_)
                                          (_%__kont436744436745%_))))
                                  (_%__kont436744436745%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd435174435358%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl435175435360%_))
                                      (let ((_%e435182435340%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl435175435360%_))))
                                        (let ((_%tl435184435345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e435182435340%_)))
                                              (_%hd435183435343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e435182435340%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl435184435345%_))
                                              (_%__kont436738436739%_)
                                              (_%__kont436744436745%_))))
                                      (_%__kont436744436745%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd435174435358%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl435175435360%_))
                                          (let ((_%e435190435232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl435175435360%_))))
                                            (let ((_%tl435192435237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e435190435232%_)))
                                                  (_%hd435191435235%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e435190435232%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd435191435235%_))
                                                  (let ((_%e435193435240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd435191435235%_))))
                                                    (let ((_%tl435195435245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e435193435240%_)))
                                                          (_%hd435194435243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e435193435240%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd435194435243%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd435194435243%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl435195435245%_))
                          (let ((_%e435196435248%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl435195435245%_))))
                            (let ((_%tl435198435253%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e435196435248%_)))
                                  (_%hd435197435251%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e435196435248%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl435198435253%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl435192435237%_))
                                      (let ((_%__splice436742436743%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl435192435237%_
                                                '0))))
                                        (let ((_%tl435201435258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice436742436743%_
                                                  '1)))
                                              (_%target435199435256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice436742436743%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl435201435258%_))
                                              (_%__match436823436824%_
                                               _%e435173435355%_
                                               _%hd435174435358%_
                                               _%tl435175435360%_
                                               _%e435190435232%_
                                               _%hd435191435235%_
                                               _%tl435192435237%_
                                               _%e435193435240%_
                                               _%hd435194435243%_
                                               _%tl435195435245%_
                                               _%e435196435248%_
                                               _%hd435197435251%_
                                               _%tl435198435253%_
                                               _%__splice436742436743%_
                                               _%target435199435256%_
                                               _%tl435201435258%_)
                                              (_%__kont436744436745%_))))
                                      (_%__kont436744436745%_))
                                  (_%__kont436744436745%_))))
                          (_%__kont436744436745%_))
                      (_%__kont436744436745%_))
                  (_%__kont436744436745%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont436744436745%_))))
                                          (_%__kont436744436745%_))
                                      (_%__kont436744436745%_))))
                          (_%__kont436744436745%_))))
                  (_%__kont436744436745%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx435161%_ _%klass435162%_)
        (let ((_%expr-type435164%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx435161%_))))
          (if _%expr-type435164%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type435164%_ _%klass435162%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx435139%_ _%expr435140%_ _%type435141%_)
        (if (not _%type435141%_)
            '#f
            (let ((_%$e435144%_
                   (eq? (##structure-ref _%type435141%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e435144%_
                  _%$e435144%_
                  (let ((_%expr-type435148%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr435140%_))))
                    (if (not _%expr-type435148%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type435148%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e435152%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type435148%_
                                      'gxc#!abort::t))))
                              (if _%$e435152%_
                                  _%$e435152%_
                                  (let ((_%$e435155%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type435148%_
                                            _%type435141%_))))
                                    (if _%$e435155%_
                                        _%$e435155%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type435141%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type435141%_
                                                   _%expr-type435148%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx435139%_
                                                   _%expr435140%_
                                                   _%expr-type435148%_
                                                   _%type435141%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self434953%_ _%ctx434954%_ _%stx434955%_ _%args434956%_)
        (let* ((_%self434959%_ _%self434953%_)
               (_%klass434969%_
                (let ((__tmp437343
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self434959%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx434955%_ __tmp437343)))
               (_%fields434971%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass434969%_
                           '5
                           '#f
                           '#f))))
               (_%args434977%_
                (map (lambda (_%g434972434974%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx434954%_ _%g434972434974%_)))
                     _%args434956%_))
               (_%inline-make-object434979%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self434959%_
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
                           _%self434959%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields434971%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass434982%_ _%klass434969%_)
               (_%$e434996%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass434982%_ '6 '#f '#f))))
          (if _%$e434996%_
              ((lambda (_%ctor434999%_)
                 (let ((_%$obj435001%_
                        (let ((__tmp437344
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp437344)))
                       (_%ctor-impl435002%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass434982%_
                           _%ctor434999%_))))
                   (let ((__tmp437345
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj435001%_ '())
                                                  (cons _%inline-make-object434979%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl435002%_
                                                            (let ((__tmp437346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl435002%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj435001%_ '()))
                                             _%args434977%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp437346
                       _%stx434955%_
                       _%ctx434954%_))
                    (let ((_%$ctor435004%_
                           (let ((__tmp437347
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp437347))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor435004%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self434959%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj435001%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor434999%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor435004%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor435004%_ '()))
                              (cons (cons '%#ref (cons _%$obj435001%_ '()))
                                    _%args434977%_)))
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
                             _%self434959%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor434999%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj435001%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp437345 _%stx434955%_))))
               _%$e434996%_)
              (let ((_%$e435006%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass434982%_
                        '10
                        '#f
                        '#f))))
                (if _%$e435006%_
                    ((lambda (_%metaclass435009%_)
                       (let* ((_%$obj435011%_
                               (let ((__tmp437348
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp437348)))
                              (_%metakons435013%_
                               (let ((__tmp437349
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx434955%_
                                         _%metaclass435009%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp437349
                                  'instance-init!)))
                              (__tmp437350
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj435011%_
                                                             '())
                                                       (cons _%inline-make-object434979%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons435013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp437351
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons435013%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self434959%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj435011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args434977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp437351
                            _%stx434955%_
                            _%ctx434954%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self434959%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj435011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args434977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj435011%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp437350 _%stx434955%_)))
                     _%$e435006%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass434982%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp437352
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args434977%_))))
                              (declare (not safe))
                              (##fx= __tmp437352 _%fields434971%_))
                            (let ((__tmp437353
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self434959%_
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
                                              _%self434959%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args434977%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp437353
                               _%stx434955%_))
                            (let ((__tmp437355
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self434959%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp437354
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass434982%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx434955%_
                               __tmp437355
                               __tmp437354)))
                        (let ((_%$obj435018%_
                               (let ((__tmp437356
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp437356))))
                          (let _%lp435020%_ ((_%rest435022%_ _%args434977%_)
                                             (_%initializers435023%_ '()))
                            (let* ((_%__stx436826436827%_ _%rest435022%_)
                                   (_%g435027435048%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx436826436827%_)))))
                              (let ((_%__kont436828436829%_
                                     (lambda (_%g435029435102%_
                                              _%g435030435103%_
                                              _%g435031435104%_)
                                       (let* ((_%slot435131%_
                                               (let ((__tmp437357
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g435031435104%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp437357)))
                                              (_%off435133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass434982%_
                                                  _%slot435131%_))))
                                         (if _%off435133%_
                                             (_%lp435020%_
                                              _%g435029435102%_
                                              (cons (cons _%off435133%_
                                                          _%g435030435103%_)
                                                    _%initializers435023%_))
                                             (let ((__tmp437358
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self434959%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx434955%_
                                                __tmp437358
                                                _%slot435131%_))))))
                                    (_%__kont436830436831%_
                                     (lambda ()
                                       (let ((__tmp437359
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj435018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object434979%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp437362
                                     (cons (cons '%#ref
                                                 (cons _%$obj435018%_ '()))
                                           '()))
                                    (__tmp437360
                                     (let ((__tmp437361
                                            (lambda (_%i435062%_ _%r435063%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self434959%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i435062%_) '()))
                              (cons (cons '%#ref (cons _%$obj435018%_ '()))
                                    (cons (cdr _%i435062%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r435063%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp437361
                                        '()
                                        _%initializers435023%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp437362 __tmp437360)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp437359
                                          _%stx434955%_))))
                                    (_%__kont436832436833%_
                                     (lambda ()
                                       (let ((__tmp437363
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj435018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object434979%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj435018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args434977%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj435018%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp437363
                                          _%stx434955%_)))))
                                (let* ((_%g435025435065%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx436826436827%_))
                                              (_%__kont436830436831%_)
                                              (_%__kont436832436833%_))))
                                       (_%__match436863436864%_
                                        (lambda (_%e435032435070%_
                                                 _%hd435033435073%_
                                                 _%tl435034435075%_
                                                 _%e435035435078%_
                                                 _%hd435036435081%_
                                                 _%tl435037435083%_
                                                 _%e435038435086%_
                                                 _%hd435039435089%_
                                                 _%tl435040435091%_
                                                 _%e435041435094%_
                                                 _%hd435042435097%_
                                                 _%tl435043435099%_)
                                          (let ((_%g435029435102%_
                                                 _%tl435043435099%_)
                                                (_%g435030435103%_
                                                 _%hd435042435097%_)
                                                (_%g435031435104%_
                                                 _%hd435039435089%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g435031435104%_))
                                                (_%__kont436828436829%_
                                                 _%g435029435102%_
                                                 _%g435030435103%_
                                                 _%g435031435104%_)
                                                (_%__kont436832436833%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx436826436827%_))
                                      (let ((_%e435032435070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx436826436827%_))))
                                        (let ((_%tl435034435075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e435032435070%_)))
                                              (_%hd435033435073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e435032435070%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd435033435073%_))
                                              (let ((_%e435035435078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd435033435073%_))))
                                                (let ((_%tl435037435083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e435035435078%_)))
                                                      (_%hd435036435081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e435035435078%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd435036435081%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd435036435081%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl435037435083%_))
                      (let ((_%e435038435086%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl435037435083%_))))
                        (let ((_%tl435040435091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e435038435086%_)))
                              (_%hd435039435089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e435038435086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl435040435091%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl435034435075%_))
                                  (let ((_%e435041435094%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl435034435075%_))))
                                    (let ((_%tl435043435099%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e435041435094%_)))
                                          (_%hd435042435097%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e435041435094%_))))
                                      (_%__match436863436864%_
                                       _%e435032435070%_
                                       _%hd435033435073%_
                                       _%tl435034435075%_
                                       _%e435035435078%_
                                       _%hd435036435081%_
                                       _%tl435037435083%_
                                       _%e435038435086%_
                                       _%hd435039435089%_
                                       _%tl435040435091%_
                                       _%e435041435094%_
                                       _%hd435042435097%_
                                       _%tl435043435099%_)))
                                  (_%__kont436832436833%_))
                              (_%__kont436832436833%_))))
                      (_%__kont436832436833%_))
                  (_%__kont436832436833%_))
              (_%__kont436832436833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont436832436833%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g435025435065%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self434736%_ _%ctx434737%_ _%stx434738%_ _%args434739%_)
        (let* ((_%self434742%_ _%self434736%_)
               (_%arguments-ok?434752%_
                (let ((__method437307
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self434742%_ 'check-arguments))))
                  (if __method437307
                      (let ()
                        (declare (not safe))
                        (__method437307
                         _%self434742%_
                         _%ctx434737%_
                         _%stx434738%_
                         _%args434739%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self434742%_
                                 'check-arguments))
                        '#!void))))
               (_%g434754434764%_
                (lambda (_%g434755434761%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g434755434761%_))))
               (_%g434753434828%_
                (lambda (_%g434755434767%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g434755434767%_))
                      (let ((_%e434757434769%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g434755434767%_))))
                        (let ((_%hd434758434772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e434757434769%_)))
                              (_%tl434759434774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e434757434769%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl434759434774%_))
                              ((lambda (_%g434756434777%_)
                                 (let* ((_%klass434790%_
                                         (let ((__tmp437364
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self434742%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx434738%_
                                            __tmp437364)))
                                        (_%field434792%_
                                         (let ((__tmp437365
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self434742%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass434790%_
                                            __tmp437365)))
                                        (_%object434794%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx434737%_
                                            _%g434756434777%_)))
                                        (_%klass434797%_ _%klass434790%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass434797%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp437366
                                              (cons (if (or _%arguments-ok?434752%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self434742%_
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
                                 _%self434742%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field434792%_ '()))
                        (cons _%object434794%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp437366
                                          _%stx434738%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass434797%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp437367
                                                  (cons (if (or _%arguments-ok?434752%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self434742%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self434742%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field434792%_ '()))
                            (cons _%object434794%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp437367
                                              _%stx434738%_))
                                           (let ((_%$e434816%_
                                                  (let ((__tmp437368
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self434742%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass434797%_
                                                     __tmp437368))))
                                             (if _%$e434816%_
                                                 ((lambda (_%klass434819%_)
                                                    (let ((__tmp437369
                                                           (cons (if (or _%arguments-ok?434752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self434742%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self434742%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field434792%_ '()))
                                     (cons _%object434794%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp437369 _%stx434738%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e434816%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self434742%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp437370
                                                            (let ((_%$obj434825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp437371
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp437371))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj434825%_ '())
                                              (cons _%object434794%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass434797%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj434825%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self434742%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field434792%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj434825%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?434752%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj434825%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self434742%_
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
                                                             _%self434742%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj434825%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self434742%_
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
               (gxc#xform-wrap-source __tmp437370 _%stx434738%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp437372
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object434794%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self434742%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp437372 _%stx434738%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd434758434772%_)
                              (_%g434754434764%_ _%g434755434767%_))))
                      (_%g434754434764%_ _%g434755434767%_)))))
          (_%g434753434828%_ _%args434739%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass436594 __method-table436595)
        (let ((__check-arguments436596
               (let ((__tmp437373
                      (lambda ()
                        (let ((__method436597
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table436595
                                  'check-arguments
                                  '#f))))
                          (if __method436597
                              __method436597
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp437373)))
              (__slot436598
               (let ((__slot436599
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass436594 'slot))))
                 (if __slot436599
                     __slot436599
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self434736%_ _%ctx434737%_ _%stx434738%_ _%args434739%_)
            (let* ((_%self434742%_ _%self434736%_)
                   (_%arguments-ok?434752%_
                    ((force __check-arguments436596)
                     _%self434742%_
                     _%ctx434737%_
                     _%stx434738%_
                     _%args434739%_))
                   (_%g434754434764%_
                    (lambda (_%g434755434761%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g434755434761%_))))
                   (_%g434753434828%_
                    (lambda (_%g434755434767%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g434755434767%_))
                          (let ((_%e434757434769%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g434755434767%_))))
                            (let ((_%hd434758434772%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e434757434769%_)))
                                  (_%tl434759434774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e434757434769%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl434759434774%_))
                                  ((lambda (_%g434756434777%_)
                                     (let* ((_%klass434790%_
                                             (let ((__tmp437374
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self434742%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx434738%_
                                                __tmp437374)))
                                            (_%field434792%_
                                             (let ((__tmp437375
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self434742%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass434790%_
                                                __tmp437375)))
                                            (_%object434794%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx434737%_
                                                _%g434756434777%_)))
                                            (_%klass434797%_ _%klass434790%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass434797%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp437376
                                                  (cons (if (or _%arguments-ok?434752%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self434742%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self434742%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field434792%_ '()))
                            (cons _%object434794%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp437376
                                              _%stx434738%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass434797%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp437377
                                                      (cons (if (or _%arguments-ok?434752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self434742%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self434742%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field434792%_ '()))
                                (cons _%object434794%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp437377
                                                  _%stx434738%_))
                                               (let ((_%$e434816%_
                                                      (let ((__tmp437378
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self434742%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass434797%_ __tmp437378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e434816%_
                                                     ((lambda (_%klass434819%_)
                                                        (let ((__tmp437379
                                                               (cons (if (or _%arguments-ok?434752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self434742%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self434742%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field434792%_ '()))
                                         (cons _%object434794%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp437379 _%stx434738%_)))
              _%$e434816%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self434742%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp437380
                                                                (let ((_%$obj434825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp437381
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp437381))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj434825%_ '())
                                                  (cons _%object434794%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass434797%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj434825%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self434742%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field434792%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj434825%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?434752%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj434825%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self434742%_
                               __slot436598
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
                        (##unchecked-structure-ref _%self434742%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj434825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self434742%_
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
                   (gxc#xform-wrap-source __tmp437380 _%stx434738%_))
                 (let ((__tmp437382
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object434794%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self434742%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp437382 _%stx434738%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd434758434772%_)
                                  (_%g434754434764%_ _%g434755434767%_))))
                          (_%g434754434764%_ _%g434755434767%_)))))
              (_%g434753434828%_ _%args434739%_))))))
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
      (lambda (_%self434500%_ _%ctx434501%_ _%stx434502%_ _%args434503%_)
        (let* ((_%self434506%_ _%self434500%_)
               (_%arguments-ok?434516%_
                (let ((__method437308
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self434506%_ 'check-arguments))))
                  (if __method437308
                      (let ()
                        (declare (not safe))
                        (__method437308
                         _%self434506%_
                         _%ctx434501%_
                         _%stx434502%_
                         _%args434503%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self434506%_
                                 'check-arguments))
                        '#!void))))
               (_%g434518434532%_
                (lambda (_%g434519434529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g434519434529%_))))
               (_%g434517434611%_
                (lambda (_%g434519434535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g434519434535%_))
                      (let ((_%e434522434537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g434519434535%_))))
                        (let ((_%hd434523434540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e434522434537%_)))
                              (_%tl434524434542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e434522434537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl434524434542%_))
                              (let ((_%e434525434545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl434524434542%_))))
                                (let ((_%hd434526434548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e434525434545%_)))
                                      (_%tl434527434550%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e434525434545%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl434527434550%_))
                                      ((lambda (_%g434520434553%_
                                                _%g434521434554%_)
                                         (let* ((_%klass434570%_
                                                 (let ((__tmp437383
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self434506%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx434502%_
                                                    __tmp437383)))
                                                (_%field434572%_
                                                 (let ((__tmp437384
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self434506%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass434570%_
                                                    __tmp437384)))
                                                (_%object434574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx434501%_
                                                    _%g434521434554%_)))
                                                (_%value434576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx434501%_
                                                    _%g434520434553%_)))
                                                (_%klass434579%_
                                                 _%klass434570%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass434579%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp437385
                                                      (cons (if (or _%arguments-ok?434516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self434506%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self434506%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field434572%_ '()))
                                (cons _%object434574%_
                                      (cons _%value434576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp437385
                                                  _%stx434502%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass434579%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp437386
                                                          (cons (if (or _%arguments-ok?434516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self434506%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self434506%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field434572%_ '()))
                                    (cons _%object434574%_
                                          (cons _%value434576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp437386
                                                      _%stx434502%_))
                                                   (let ((_%$e434599%_
                                                          (let ((__tmp437387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self434506%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass434579%_
                     __tmp437387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e434599%_
                                                         ((lambda (_%klass434602%_)
                                                            (let ((__tmp437388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?434516%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self434506%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self434506%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field434572%_ '()))
                                             (cons _%object434574%_
                                                   (cons _%value434576%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp437388 _%stx434502%_)))
                  _%$e434599%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self434506%_ '4 '#f '#f))
                     (let ((__tmp437389
                            (let ((_%$obj434608%_
                                   (let ((__tmp437390
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp437390))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj434608%_ '())
                                                      (cons _%object434574%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass434579%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj434608%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self434506%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field434572%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj434608%_
                                                              '()))
                                                  (cons _%value434576%_
                                                        '())))))
                          (cons (if _%arguments-ok?434516%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj434608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self434506%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value434576%_ '())))))
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
                             _%self434506%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj434608%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self434506%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value434576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp437389 _%stx434502%_))
                     (let ((__tmp437391
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object434574%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self434506%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value434576%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp437391
                        _%stx434502%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd434526434548%_
                                       _%hd434523434540%_)
                                      (_%g434518434532%_ _%g434519434535%_))))
                              (_%g434518434532%_ _%g434519434535%_))))
                      (_%g434518434532%_ _%g434519434535%_)))))
          (_%g434517434611%_ _%args434503%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass436600 __method-table436601)
        (let ((__check-arguments436602
               (let ((__tmp437392
                      (lambda ()
                        (let ((__method436603
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table436601
                                  'check-arguments
                                  '#f))))
                          (if __method436603
                              __method436603
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp437392))))
          (lambda (_%self434500%_ _%ctx434501%_ _%stx434502%_ _%args434503%_)
            (let* ((_%self434506%_ _%self434500%_)
                   (_%arguments-ok?434516%_
                    ((force __check-arguments436602)
                     _%self434506%_
                     _%ctx434501%_
                     _%stx434502%_
                     _%args434503%_))
                   (_%g434518434532%_
                    (lambda (_%g434519434529%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g434519434529%_))))
                   (_%g434517434611%_
                    (lambda (_%g434519434535%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g434519434535%_))
                          (let ((_%e434522434537%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g434519434535%_))))
                            (let ((_%hd434523434540%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e434522434537%_)))
                                  (_%tl434524434542%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e434522434537%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl434524434542%_))
                                  (let ((_%e434525434545%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl434524434542%_))))
                                    (let ((_%hd434526434548%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e434525434545%_)))
                                          (_%tl434527434550%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e434525434545%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl434527434550%_))
                                          ((lambda (_%g434520434553%_
                                                    _%g434521434554%_)
                                             (let* ((_%klass434570%_
                                                     (let ((__tmp437393
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self434506%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx434502%_
                                                        __tmp437393)))
                                                    (_%field434572%_
                                                     (let ((__tmp437394
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self434506%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass434570%_
                                                        __tmp437394)))
                                                    (_%object434574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx434501%_
                                                        _%g434521434554%_)))
                                                    (_%value434576%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx434501%_
                                                        _%g434520434553%_)))
                                                    (_%klass434579%_
                                                     _%klass434570%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass434579%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp437395
                                                          (cons (if (or _%arguments-ok?434516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self434506%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self434506%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field434572%_ '()))
                                    (cons _%object434574%_
                                          (cons _%value434576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp437395
                                                      _%stx434502%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass434579%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp437396
                                                              (cons (if (or _%arguments-ok?434516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self434506%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self434506%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field434572%_ '()))
                                        (cons _%object434574%_
                                              (cons _%value434576%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp437396 _%stx434502%_))
               (let ((_%$e434599%_
                      (let ((__tmp437397
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self434506%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass434579%_
                         __tmp437397))))
                 (if _%$e434599%_
                     ((lambda (_%klass434602%_)
                        (let ((__tmp437398
                               (cons (if (or _%arguments-ok?434516%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self434506%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self434506%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field434572%_
                                                             '()))
                                                 (cons _%object434574%_
                                                       (cons _%value434576%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp437398 _%stx434502%_)))
                      _%$e434599%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self434506%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp437399
                                (let ((_%$obj434608%_
                                       (let ((__tmp437400
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp437400))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj434608%_
                                                                '())
                                                          (cons _%object434574%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass434579%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj434608%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self434506%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field434572%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj434608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value434576%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?434516%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj434608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self434506%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value434576%_ '())))))
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
                                 _%self434506%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj434608%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self434506%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value434576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp437399 _%stx434502%_))
                         (let ((__tmp437401
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object434574%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self434506%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value434576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp437401
                            _%stx434502%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd434526434548%_
                                           _%hd434523434540%_)
                                          (_%g434518434532%_
                                           _%g434519434535%_))))
                                  (_%g434518434532%_ _%g434519434535%_))))
                          (_%g434518434532%_ _%g434519434535%_)))))
              (_%g434517434611%_ _%args434503%_))))))
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
      (lambda (_%self434316%_ _%ctx434317%_ _%stx434318%_ _%args434319%_)
        (let* ((_%self434322%_ _%self434316%_)
               (_%self434331434341%_ _%self434322%_)
               (_%E434333434344%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self434331434341%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K434334434354%_
                (lambda (_%inline434347%_ _%dispatch434348%_ _%arity434349%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self434322%_
                         _%args434319%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx434318%_
                         _%arity434349%_)))
                  (if _%inline434347%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp437402 (_%inline434347%_ _%stx434318%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp437402
                           _%stx434318%_
                           _%ctx434317%_)))
                      (if (and _%dispatch434348%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch434348%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch434348%_))
                            (let ((__tmp437403
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch434348%_
                                                           '()))
                                               _%args434319%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp437403
                               _%stx434318%_
                               _%ctx434317%_)))
                          (gxc#!procedure::optimize-call
                           _%self434322%_
                           _%ctx434317%_
                           _%stx434318%_
                           _%args434319%_)))))
               (_%e434335434357%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self434331434341%_ '1 '#f '#f)))
               (_%e434336434360%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self434331434341%_ '2 '#f '#f)))
               (_%e434337434363%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self434331434341%_ '3 '#f '#f)))
               (_%arity434366%_ _%e434337434363%_)
               (_%e434338434368%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self434331434341%_ '4 '#f '#f)))
               (_%dispatch434371%_ _%e434338434368%_)
               (_%e434339434373%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self434331434341%_ '5 '#f '#f)))
               (_%inline434376%_ _%e434339434373%_))
          (_%K434334434354%_
           _%inline434376%_
           _%dispatch434371%_
           _%arity434366%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self434168%_ _%ctx434169%_ _%stx434170%_ _%args434171%_)
        (let* ((_%self434174%_ _%self434168%_)
               (_%$e434188%_
                (let ((__tmp437405
                       (lambda (_%g434183434185%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g434183434185%_
                            _%args434171%_))))
                      (__tmp437404
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self434174%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp437405 __tmp437404))))
          (if _%$e434188%_
              ((lambda (_%clause434191%_)
                 (let ((__method437309
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause434191%_ 'optimize-call))))
                   (if __method437309
                       (let ()
                         (declare (not safe))
                         (__method437309
                          _%clause434191%_
                          _%ctx434169%_
                          _%stx434170%_
                          _%args434171%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause434191%_
                                  'optimize-call))
                         '#!void))))
               _%$e434188%_)
              (let ((__tmp437406
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self434174%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx434170%_
                 __tmp437406))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self433909%_ _%ctx433910%_ _%stx433911%_ _%args433912%_)
        (let* ((_%self433915%_ _%self433909%_)
               (_%self433924433933%_ _%self433915%_)
               (_%E433926433936%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self433924433933%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K433927434027%_
                (lambda (_%dispatch433939%_ _%table433940%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch433939%_))
                      (let* ((_%g433941433951%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch433939%_)))
                             (_%else433943433959%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch433939%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx433910%_
                                   _%stx433911%_))))
                             (_%K433945434008%_
                              (lambda (_%main433962%_ _%keys433963%_)
                                (let ((_g437407_
                                       (gxc#!kw-lambda-split-args
                                        _%stx433911%_
                                        _%args433912%_)))
                                  (begin
                                    (let ((_g437408_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g437407_)
                                                 (##values-length _g437407_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g437408_ 2)))
                                          (error "Context expects 2 values"
                                                 _g437408_)))
                                    (let ((_%pargs433965%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g437407_ 0)))
                                          (_%kwargs433966%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g437407_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main433962%_))
                                        (if _%table433940%_
                                            (let ((_%xargs433974%_
                                                   (map (lambda (_%key433968%_)
                                                          (let ((_%$e433970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key433968%_ _%kwargs433966%_))))
                    (if _%$e433970%_ _%$e433970%_ '(%#ref absent-value))))
                _%keys433963%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw433976%_)
                                                 (if (memq (car _%kw433976%_)
                                                           _%keys433963%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx433911%_
                                                        _%keys433963%_
                                                        _%kw433976%_))))
                                               _%kwargs433966%_)
                                              (let ((__tmp437409
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main433962%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs433965%_
                                  _%xargs433974%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp437409
                                                 _%stx433911%_
                                                 _%ctx433910%_)))
                                            (let* ((_%kwt433978%_
                                                    (let ((__tmp437410
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp437410)))
                                                   (_%kwvars433982%_
                                                    (map (lambda (_%_433980%_)
                                                           (let ((__tmp437411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp437411)))
                 _%kwargs433966%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind433987%_
                                                    (map (lambda (_%kw433984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar433985%_)
                   (cons (cons _%kwvar433985%_ '())
                         (cons (cdr _%kw433984%_) '())))
                 _%kwargs433966%_
                 _%kwvars433982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset433992%_
                                                    (map (lambda (_%kw433989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar433990%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt433978%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw433989%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar433990%_
                                                             '()))
                                                 '()))))))
                 _%kwargs433966%_
                 _%kwvars433982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs433997%_
                                                    (map (lambda (_%kw433994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar433995%_)
                   (cons (car _%kw433994%_)
                         (cons '%#ref (cons _%kwvar433995%_ '()))))
                 _%kwargs433966%_
                 _%kwvars433982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs434005%_
                                                    (map (lambda (_%key433999%_)
                                                           (let ((_%$e434001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key433999%_ _%xkwargs433997%_))))
                     (if _%$e434001%_ _%$e434001%_ '(%#ref absent-value))))
                 _%keys433963%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp437412
                                                    (cons '%#let-values
                                                          (cons _%kwbind433987%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt433978%_ '())
                                                      (cons (let ((__tmp437413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs433966%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp437413 _%stx433911%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp437414
                                                             (cons (let ((__tmp437415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main433962%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt433978%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs433965%_
                                                       _%xargs434005%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp437415 _%stx433911%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp437414 _%kwset433992%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp437412
                                               _%stx433911%_
                                               _%ctx433910%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g433941433951%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e433946434011%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g433941433951%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e433947434014%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g433941433951%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e433948434017%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g433941433951%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys434020%_ _%e433948434017%_)
                                   (_%e433949434022%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g433941433951%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main434025%_ _%e433949434022%_))
                              (_%K433945434008%_
                               _%main434025%_
                               _%keys434020%_))
                            (_%else433943433959%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx433910%_ _%stx433911%_)))))
               (_%e433928434030%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self433924433933%_ '1 '#f '#f)))
               (_%e433929434033%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self433924433933%_ '2 '#f '#f)))
               (_%e433930434036%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self433924433933%_ '3 '#f '#f)))
               (_%table434039%_ _%e433930434036%_)
               (_%e433931434041%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self433924433933%_ '4 '#f '#f)))
               (_%dispatch434044%_ _%e433931434041%_))
          (_%K433927434027%_ _%dispatch434044%_ _%table434039%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx433522%_ _%args433523%_)
        (let _%lp433525%_ ((_%rest433527%_ _%args433523%_)
                           (_%pargs433528%_ '())
                           (_%kwargs433529%_ '()))
          (let* ((_%__stx436868436869%_ _%rest433527%_)
                 (_%g433535433587%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx436868436869%_)))))
            (let ((_%__kont436870436871%_
                   (lambda (_%g433537433766%_ _%g433538433767%_)
                     (_%lp433525%_
                      _%g433537433766%_
                      (cons _%g433538433767%_ _%pargs433528%_)
                      _%kwargs433529%_)))
                  (_%__kont436872436873%_
                   (lambda (_%g433552433712%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g433552433712%_
                                _%pargs433528%_))
                             (reverse _%kwargs433529%_))))
                  (_%__kont436874436875%_
                   (lambda (_%g433563433659%_
                            _%g433564433660%_
                            _%g433565433661%_)
                     (let ((_%kw433678%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g433565433661%_))))
                       (if (assq _%kw433678%_ _%kwargs433529%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx433522%_
                              _%kw433678%_))
                           (_%lp433525%_
                            _%g433563433659%_
                            _%pargs433528%_
                            (cons (cons _%kw433678%_ _%g433564433660%_)
                                  _%kwargs433529%_))))))
                  (_%__kont436876436877%_
                   (lambda (_%g433578433607%_ _%g433579433608%_)
                     (_%lp433525%_
                      _%g433578433607%_
                      (cons _%g433579433608%_ _%pargs433528%_)
                      _%kwargs433529%_)))
                  (_%__kont436878436879%_
                   (lambda ()
                     (values (reverse _%pargs433528%_)
                             (reverse _%kwargs433529%_)))))
              (let ((_%__match436975436976%_
                     (lambda (_%e433566433627%_
                              _%hd433567433630%_
                              _%tl433568433632%_
                              _%e433569433635%_
                              _%hd433570433638%_
                              _%tl433571433640%_
                              _%e433572433643%_
                              _%hd433573433646%_
                              _%tl433574433648%_
                              _%e433575433651%_
                              _%hd433576433654%_
                              _%tl433577433656%_)
                       (let ((_%g433563433659%_ _%tl433577433656%_)
                             (_%g433564433660%_ _%hd433576433654%_)
                             (_%g433565433661%_ _%hd433573433646%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g433565433661%_))
                             (_%__kont436874436875%_
                              _%g433563433659%_
                              _%g433564433660%_
                              _%g433565433661%_)
                             (_%__kont436876436877%_
                              _%tl433568433632%_
                              _%hd433567433630%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx436868436869%_))
                    (let ((_%e433539433731%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx436868436869%_))))
                      (let ((_%tl433541433736%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e433539433731%_)))
                            (_%hd433540433734%_
                             (let ()
                               (declare (not safe))
                               (##car _%e433539433731%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd433540433734%_))
                            (let ((_%e433542433739%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd433540433734%_))))
                              (let ((_%tl433544433744%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e433542433739%_)))
                                    (_%hd433543433742%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e433542433739%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd433543433742%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd433543433742%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl433544433744%_))
                                            (let ((_%e433545433747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl433544433744%_))))
                                              (let ((_%tl433547433752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e433545433747%_)))
                                                    (_%hd433546433750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e433545433747%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd433546433750%_))
                                                    (let ((_%e433548433755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd433546433750%_))))
                                                      (if (equal? _%e433548433755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl433547433752%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl433541433736%_))
                          (let ((_%e433549433758%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl433541433736%_))))
                            (let ((_%tl433551433763%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e433549433758%_)))
                                  (_%hd433550433761%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e433549433758%_))))
                              (_%__kont436870436871%_
                               _%tl433551433763%_
                               _%hd433550433761%_)))
                          (_%__kont436876436877%_
                           _%tl433541433736%_
                           _%hd433540433734%_))
                      (_%__kont436876436877%_
                       _%tl433541433736%_
                       _%hd433540433734%_))
                  (if (equal? _%e433548433755%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl433547433752%_))
                          (_%__kont436872436873%_ _%tl433541433736%_)
                          (_%__kont436876436877%_
                           _%tl433541433736%_
                           _%hd433540433734%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl433547433752%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl433541433736%_))
                              (let ((_%e433575433651%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl433541433736%_))))
                                (let ((_%tl433577433656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e433575433651%_)))
                                      (_%hd433576433654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e433575433651%_))))
                                  (_%__match436975436976%_
                                   _%e433539433731%_
                                   _%hd433540433734%_
                                   _%tl433541433736%_
                                   _%e433542433739%_
                                   _%hd433543433742%_
                                   _%tl433544433744%_
                                   _%e433545433747%_
                                   _%hd433546433750%_
                                   _%tl433547433752%_
                                   _%e433575433651%_
                                   _%hd433576433654%_
                                   _%tl433577433656%_)))
                              (_%__kont436876436877%_
                               _%tl433541433736%_
                               _%hd433540433734%_))
                          (_%__kont436876436877%_
                           _%tl433541433736%_
                           _%hd433540433734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl433547433752%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl433541433736%_))
                                                            (let ((_%e433575433651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl433541433736%_))))
                      (let ((_%tl433577433656%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e433575433651%_)))
                            (_%hd433576433654%_
                             (let ()
                               (declare (not safe))
                               (##car _%e433575433651%_))))
                        (_%__match436975436976%_
                         _%e433539433731%_
                         _%hd433540433734%_
                         _%tl433541433736%_
                         _%e433542433739%_
                         _%hd433543433742%_
                         _%tl433544433744%_
                         _%e433545433747%_
                         _%hd433546433750%_
                         _%tl433547433752%_
                         _%e433575433651%_
                         _%hd433576433654%_
                         _%tl433577433656%_)))
                    (_%__kont436876436877%_
                     _%tl433541433736%_
                     _%hd433540433734%_))
                (_%__kont436876436877%_
                 _%tl433541433736%_
                 _%hd433540433734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont436876436877%_
                                             _%tl433541433736%_
                                             _%hd433540433734%_))
                                        (_%__kont436876436877%_
                                         _%tl433541433736%_
                                         _%hd433540433734%_))
                                    (_%__kont436876436877%_
                                     _%tl433541433736%_
                                     _%hd433540433734%_))))
                            (_%__kont436876436877%_
                             _%tl433541433736%_
                             _%hd433540433734%_))))
                    (_%__kont436878436879%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self433506%_ _%ctx433507%_ _%stx433508%_ _%args433509%_)
        (let ((_%self433512%_ _%self433506%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx433507%_ _%stx433508%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self433196%_ _%stx433197%_)
        (let* ((_%__stx436984436985%_ _%stx433197%_)
               (_%g433200433240%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx436984436985%_)))))
          (let ((_%__kont436986436987%_
                 (lambda (_%g433202433344%_ _%g433203433345%_)
                   (let ((_%$e433372%_
                          (member 'return:
                                  (let ((__tmp437416
                                         (lambda (_%g433364433367%_
                                                  _%g433365433369%_)
                                           (cons _%g433364433367%_
                                                 _%g433365433369%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp437416
                                     '()
                                     _%g433203433345%_))
                                  gx#stx-eq?)))
                     (if _%$e433372%_
                         ((lambda (_%tail433375%_)
                            (let ((_%type433377%_
                                   (let ((__tmp437417
                                          (let ((__tmp437418
                                                 (cadr _%tail433375%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp437418))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx433197%_
                                      __tmp437417))))
                              (gxc#check-return-type!
                               _%stx433197%_
                               _%g433202433344%_
                               _%type433377%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self433196%_
                                 _%g433202433344%_))))
                          _%$e433372%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self433196%_
                            _%g433202433344%_))))))
                (_%__kont436990436991%_
                 (lambda (_%g433225433269%_ _%g433226433270%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self433196%_ _%g433225433269%_)))))
            (let ((_%__match437021437022%_
                   (lambda (_%e433204433290%_
                            _%hd433205433293%_
                            _%tl433206433295%_
                            _%e433207433298%_
                            _%hd433208433301%_
                            _%tl433209433303%_
                            _%e433210433306%_
                            _%hd433211433309%_
                            _%tl433212433311%_
                            _%__splice436988436989%_
                            _%target433213433314%_
                            _%tl433215433316%_)
                     (letrec ((_%loop433216433319%_
                               (lambda (_%hd433214433322%_
                                        _%signature433220433324%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd433214433322%_))
                                     (let ((_%e433217433326%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd433214433322%_))))
                                       (let ((_%lp-tl433219433331%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e433217433326%_)))
                                             (_%lp-hd433218433329%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e433217433326%_))))
                                         (_%loop433216433319%_
                                          _%lp-tl433219433331%_
                                          (cons _%lp-hd433218433329%_
                                                _%signature433220433324%_))))
                                     (let ((_%signature433221433334%_
                                            (reverse _%signature433220433324%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl433209433303%_))
                                           (let ((_%e433222433336%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl433209433303%_))))
                                             (let ((_%tl433224433341%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e433222433336%_)))
                                                   (_%hd433223433339%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e433222433336%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl433224433341%_))
                                                   (_%__kont436986436987%_
                                                    _%hd433223433339%_
                                                    _%signature433221433334%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g433200433240%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g433200433240%_))))))))
                       (_%loop433216433319%_ _%target433213433314%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx436984436985%_))
                  (let ((_%e433204433290%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx436984436985%_))))
                    (let ((_%tl433206433295%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e433204433290%_)))
                          (_%hd433205433293%_
                           (let ()
                             (declare (not safe))
                             (##car _%e433204433290%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl433206433295%_))
                          (let ((_%e433207433298%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl433206433295%_))))
                            (let ((_%tl433209433303%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e433207433298%_)))
                                  (_%hd433208433301%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e433207433298%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd433208433301%_))
                                  (let ((_%e433210433306%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd433208433301%_))))
                                    (let ((_%tl433212433311%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e433210433306%_)))
                                          (_%hd433211433309%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e433210433306%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd433211433309%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd433211433309%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl433212433311%_))
                                                  (let ((_%__splice436988436989%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl433212433311%_
                                                            '0))))
                                                    (let ((_%tl433215433316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice436988436989%_
                                                              '1)))
                                                          (_%target433213433314%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice436988436989%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl433215433316%_))
                                                          (_%__match437021437022%_
                                                           _%e433204433290%_
                                                           _%hd433205433293%_
                                                           _%tl433206433295%_
                                                           _%e433207433298%_
                                                           _%hd433208433301%_
                                                           _%tl433209433303%_
                                                           _%e433210433306%_
                                                           _%hd433211433309%_
                                                           _%tl433212433311%_
                                                           _%__splice436988436989%_
                                                           _%target433213433314%_
                                                           _%tl433215433316%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl433209433303%_))
                      (let ((_%e433233433261%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl433209433303%_))))
                        (let ((_%tl433235433266%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e433233433261%_)))
                              (_%hd433234433264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e433233433261%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl433235433266%_))
                              (_%__kont436990436991%_
                               _%hd433234433264%_
                               _%hd433208433301%_)
                              (let ()
                                (declare (not safe))
                                (_%g433200433240%_)))))
                      (let () (declare (not safe)) (_%g433200433240%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl433209433303%_))
                                                      (let ((_%e433233433261%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl433209433303%_))))
                (let ((_%tl433235433266%_
                       (let () (declare (not safe)) (##cdr _%e433233433261%_)))
                      (_%hd433234433264%_
                       (let ()
                         (declare (not safe))
                         (##car _%e433233433261%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl433235433266%_))
                      (_%__kont436990436991%_
                       _%hd433234433264%_
                       _%hd433208433301%_)
                      (let () (declare (not safe)) (_%g433200433240%_)))))
              (let () (declare (not safe)) (_%g433200433240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl433209433303%_))
                                                  (let ((_%e433233433261%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl433209433303%_))))
                                                    (let ((_%tl433235433266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e433233433261%_)))
                                                          (_%hd433234433264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e433233433261%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl433235433266%_))
                                                          (_%__kont436990436991%_
                                                           _%hd433234433264%_
                                                           _%hd433208433301%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g433200433240%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g433200433240%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl433209433303%_))
                                              (let ((_%e433233433261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl433209433303%_))))
                                                (let ((_%tl433235433266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e433233433261%_)))
                                                      (_%hd433234433264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e433233433261%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl433235433266%_))
                                                      (_%__kont436990436991%_
                                                       _%hd433234433264%_
                                                       _%hd433208433301%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g433200433240%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g433200433240%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl433209433303%_))
                                      (let ((_%e433233433261%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl433209433303%_))))
                                        (let ((_%tl433235433266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e433233433261%_)))
                                              (_%hd433234433264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e433233433261%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl433235433266%_))
                                              (_%__kont436990436991%_
                                               _%hd433234433264%_
                                               _%hd433208433301%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g433200433240%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g433200433240%_))))))
                          (let () (declare (not safe)) (_%g433200433240%_)))))
                  (let () (declare (not safe)) (_%g433200433240%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx433171%_ _%expr433172%_ _%type433173%_)
        (let ((_%$e433175%_ (not _%type433173%_)))
          (if _%$e433175%_
              _%$e433175%_
              (let ((_%$e433178%_
                     (eq? (##structure-ref _%type433173%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e433178%_
                    _%$e433178%_
                    (let ((_%$e433181%_
                           (eq? (##structure-ref
                                 _%type433173%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e433181%_
                          _%$e433181%_
                          (let ((_%expr-type433185%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr433172%_))))
                            (if (not _%expr-type433185%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx433171%_
                                   _%type433173%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type433185%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx433171%_
                                       _%type433173%_
                                       _%expr-type433185%_))
                                    (let ((_%$e433189%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type433185%_
                                              'gxc#!abort::t))))
                                      (if _%$e433189%_
                                          _%$e433189%_
                                          (let ((_%$e433192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type433185%_
                                                    _%type433173%_))))
                                            (if _%$e433192%_
                                                _%$e433192%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx433171%_
                                                   _%type433173%_
                                                   _%expr-type433185%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self432597%_ _%stx432598%_)
        (let* ((_%__stx437066437067%_ _%stx432598%_)
               (_%g432603432713%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx437066437067%_)))))
          (let ((_%__kont437068437069%_
                 (lambda (_%g432605433145%_
                          _%g432606433146%_
                          _%g432607433147%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g432607433147%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self432597%_ _%g432606433146%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self432597%_
                          _%g432605433145%_)))))
                (_%__kont437070437071%_
                 (lambda (_%g432626432971%_
                          _%g432627432972%_
                          _%g432628432973%_
                          _%g432629432974%_)
                   (let ((_%$e433006%_
                          (let ((__tmp437419
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g432629432974%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp437419))))
                     (if _%$e433006%_
                         ((lambda (_%pred-type433009%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type433009%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type433009%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test433014%_
                                        (let ((__tmp437420
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g432629432974%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g432628432973%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp437420
                                           _%stx432598%_
                                           _%self432597%_)))
                                       (_%K433018%_
                                        (let ((__tmp437421
                                               (lambda ()
                                                 (let ((__tmp437424
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self432597%_
                                                             _%g432627432972%_))))
                                                       (__tmp437422
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g432628432973%_))
                            (let ((__tmp437423
                                   (##structure-ref
                                    _%pred-type433009%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx432598%_
                               __tmp437423)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp437424
                                                    gxc#current-compile-path-type
                                                    __tmp437422)))))
                                          (declare (not safe))
                                          (__make-promise __tmp437421)))
                                       (_%E433021%_
                                        (let ((__tmp437425
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self432597%_
                                                    _%g432626432971%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp437425)))
                                       (_%__stx437044437045%_ _%test433014%_)
                                       (_%g433025433039%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx437044437045%_)))))
                                  (let ((_%__kont437046437047%_
                                         (lambda (_%g433027433067%_
                                                  _%g433028433068%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g433027433067%_))
                                               (force _%K433018%_)
                                               (force _%E433021%_))))
                                        (_%__kont437048437049%_
                                         (lambda ()
                                           (let ((__tmp437426
                                                  (cons '%#if
                                                        (cons _%test433014%_
                                                              (cons (force _%K433018%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E433021%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp437426
                                              _%stx432598%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx437044437045%_))
                                        (let ((_%e433029433051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx437044437045%_))))
                                          (let ((_%tl433031433056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e433029433051%_)))
                                                (_%hd433030433054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e433029433051%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl433031433056%_))
                                                (let ((_%e433032433059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl433031433056%_))))
                                                  (let ((_%tl433034433064%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e433032433059%_)))
                                                        (_%hd433033433062%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e433032433059%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl433034433064%_))
                                                        (_%__kont437046437047%_
                                                         _%hd433033433062%_
                                                         _%hd433030433054%_)
                                                        (_%__kont437048437049%_))))
                                                (_%__kont437048437049%_))))
                                        (_%__kont437048437049%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self432597%_
                                   _%stx432598%_))))
                          _%$e433006%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self432597%_
                            _%stx432598%_))))))
                (_%__kont437072437073%_
                 (lambda (_%g432663432847%_
                          _%g432664432848%_
                          _%g432665432849%_
                          _%g432666432850%_)
                   (gxc#optimize-if%
                    _%self432597%_
                    (let ((__tmp437427
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g432665432849%_
                                       (cons _%g432663432847%_
                                             (cons _%g432664432848%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp437427 _%stx432598%_)))))
                (_%__kont437074437075%_
                 (lambda (_%g432694432750%_
                          _%g432695432751%_
                          _%g432696432752%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self432597%_ _%stx432598%_)))))
            (let ((_%__match437273437274%_
                   (lambda (_%e432667432775%_
                            _%hd432668432778%_
                            _%tl432669432780%_
                            _%e432670432783%_
                            _%hd432671432786%_
                            _%tl432672432788%_
                            _%e432673432791%_
                            _%hd432674432794%_
                            _%tl432675432796%_
                            _%e432676432799%_
                            _%hd432677432802%_
                            _%tl432678432804%_
                            _%e432679432807%_
                            _%hd432680432810%_
                            _%tl432681432812%_
                            _%e432682432815%_
                            _%hd432683432818%_
                            _%tl432684432820%_
                            _%e432685432823%_
                            _%hd432686432826%_
                            _%tl432687432828%_
                            _%e432688432831%_
                            _%hd432689432834%_
                            _%tl432690432836%_
                            _%e432691432839%_
                            _%hd432692432842%_
                            _%tl432693432844%_)
                     (let ((_%g432663432847%_ _%hd432692432842%_)
                           (_%g432664432848%_ _%hd432689432834%_)
                           (_%g432665432849%_ _%hd432686432826%_)
                           (_%g432666432850%_ _%hd432683432818%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g432666432850%_ 'not))
                           (_%__kont437072437073%_
                            _%g432663432847%_
                            _%g432664432848%_
                            _%g432665432849%_
                            _%g432666432850%_)
                           (_%__kont437074437075%_
                            _%hd432692432842%_
                            _%hd432689432834%_
                            _%hd432671432786%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx437066437067%_))
                  (let ((_%e432608433097%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx437066437067%_))))
                    (let ((_%tl432610433102%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e432608433097%_)))
                          (_%hd432609433100%_
                           (let ()
                             (declare (not safe))
                             (##car _%e432608433097%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl432610433102%_))
                          (let ((_%e432611433105%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl432610433102%_))))
                            (let ((_%tl432613433110%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e432611433105%_)))
                                  (_%hd432612433108%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e432611433105%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd432612433108%_))
                                  (let ((_%e432614433113%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd432612433108%_))))
                                    (let ((_%tl432616433118%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e432614433113%_)))
                                          (_%hd432615433116%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e432614433113%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd432615433116%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd432615433116%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432616433118%_))
                                                  (let ((_%e432617433121%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432616433118%_))))
                                                    (let ((_%tl432619433126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432617433121%_)))
                                                          (_%hd432618433124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432617433121%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl432619433126%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl432613433110%_))
                      (let ((_%e432620433129%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl432613433110%_))))
                        (let ((_%tl432622433134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e432620433129%_)))
                              (_%hd432621433132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e432620433129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl432622433134%_))
                              (let ((_%e432623433137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl432622433134%_))))
                                (let ((_%tl432625433142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e432623433137%_)))
                                      (_%hd432624433140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e432623433137%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl432625433142%_))
                                      (_%__kont437068437069%_
                                       _%hd432624433140%_
                                       _%hd432621433132%_
                                       _%hd432618433124%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g432603432713%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g432603432713%_)))))
                      (let () (declare (not safe)) (_%g432603432713%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl432613433110%_))
                      (let ((_%e432703432734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl432613433110%_))))
                        (let ((_%tl432705432739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e432703432734%_)))
                              (_%hd432704432737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e432703432734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl432705432739%_))
                              (let ((_%e432706432742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl432705432739%_))))
                                (let ((_%tl432708432747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e432706432742%_)))
                                      (_%hd432707432745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e432706432742%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl432708432747%_))
                                      (_%__kont437074437075%_
                                       _%hd432707432745%_
                                       _%hd432704432737%_
                                       _%hd432612433108%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g432603432713%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g432603432713%_)))))
                      (let () (declare (not safe)) (_%g432603432713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl432613433110%_))
                                                      (let ((_%e432703432734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl432613433110%_))))
                (let ((_%tl432705432739%_
                       (let () (declare (not safe)) (##cdr _%e432703432734%_)))
                      (_%hd432704432737%_
                       (let ()
                         (declare (not safe))
                         (##car _%e432703432734%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl432705432739%_))
                      (let ((_%e432706432742%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl432705432739%_))))
                        (let ((_%tl432708432747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e432706432742%_)))
                              (_%hd432707432745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e432706432742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl432708432747%_))
                              (_%__kont437074437075%_
                               _%hd432707432745%_
                               _%hd432704432737%_
                               _%hd432612433108%_)
                              (let ()
                                (declare (not safe))
                                (_%g432603432713%_)))))
                      (let () (declare (not safe)) (_%g432603432713%_)))))
              (let () (declare (not safe)) (_%g432603432713%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd432615433116%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl432616433118%_))
                                                      (let ((_%e432639432907%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl432616433118%_))))
                (let ((_%tl432641432912%_
                       (let () (declare (not safe)) (##cdr _%e432639432907%_)))
                      (_%hd432640432910%_
                       (let ()
                         (declare (not safe))
                         (##car _%e432639432907%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd432640432910%_))
                      (let ((_%e432642432915%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd432640432910%_))))
                        (let ((_%tl432644432920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e432642432915%_)))
                              (_%hd432643432918%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e432642432915%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd432643432918%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd432643432918%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl432644432920%_))
                                      (let ((_%e432645432923%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl432644432920%_))))
                                        (let ((_%tl432647432928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e432645432923%_)))
                                              (_%hd432646432926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e432645432923%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl432647432928%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432641432912%_))
                                                  (let ((_%e432648432931%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432641432912%_))))
                                                    (let ((_%tl432650432936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432648432931%_)))
                                                          (_%hd432649432934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432648432931%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd432649432934%_))
                                                          (let ((_%e432651432939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd432649432934%_))))
                    (let ((_%tl432653432944%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e432651432939%_)))
                          (_%hd432652432942%_
                           (let ()
                             (declare (not safe))
                             (##car _%e432651432939%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd432652432942%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd432652432942%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl432653432944%_))
                                  (let ((_%e432654432947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl432653432944%_))))
                                    (let ((_%tl432656432952%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e432654432947%_)))
                                          (_%hd432655432950%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e432654432947%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl432656432952%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl432650432936%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432613433110%_))
                                                  (let ((_%e432657432955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432613433110%_))))
                                                    (let ((_%tl432659432960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432657432955%_)))
                                                          (_%hd432658432958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432657432955%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl432659432960%_))
                                                          (let ((_%e432660432963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl432659432960%_))))
                    (let ((_%tl432662432968%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e432660432963%_)))
                          (_%hd432661432966%_
                           (let ()
                             (declare (not safe))
                             (##car _%e432660432963%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl432662432968%_))
                          (_%__kont437070437071%_
                           _%hd432661432966%_
                           _%hd432658432958%_
                           _%hd432655432950%_
                           _%hd432646432926%_)
                          (let () (declare (not safe)) (_%g432603432713%_)))))
                  (let () (declare (not safe)) (_%g432603432713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432613433110%_))
                                                  (let ((_%e432703432734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432613433110%_))))
                                                    (let ((_%tl432705432739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432703432734%_)))
                                                          (_%hd432704432737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432703432734%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl432705432739%_))
                                                          (let ((_%e432706432742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl432705432739%_))))
                    (let ((_%tl432708432747%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e432706432742%_)))
                          (_%hd432707432745%_
                           (let ()
                             (declare (not safe))
                             (##car _%e432706432742%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl432708432747%_))
                          (_%__kont437074437075%_
                           _%hd432707432745%_
                           _%hd432704432737%_
                           _%hd432612433108%_)
                          (let () (declare (not safe)) (_%g432603432713%_)))))
                  (let () (declare (not safe)) (_%g432603432713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl432650432936%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432613433110%_))
                                                  (let ((_%e432688432831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432613433110%_))))
                                                    (let ((_%tl432690432836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432688432831%_)))
                                                          (_%hd432689432834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432688432831%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl432690432836%_))
                                                          (let ((_%e432691432839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl432690432836%_))))
                    (let ((_%tl432693432844%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e432691432839%_)))
                          (_%hd432692432842%_
                           (let ()
                             (declare (not safe))
                             (##car _%e432691432839%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl432693432844%_))
                          (_%__match437273437274%_
                           _%e432608433097%_
                           _%hd432609433100%_
                           _%tl432610433102%_
                           _%e432611433105%_
                           _%hd432612433108%_
                           _%tl432613433110%_
                           _%e432614433113%_
                           _%hd432615433116%_
                           _%tl432616433118%_
                           _%e432639432907%_
                           _%hd432640432910%_
                           _%tl432641432912%_
                           _%e432642432915%_
                           _%hd432643432918%_
                           _%tl432644432920%_
                           _%e432645432923%_
                           _%hd432646432926%_
                           _%tl432647432928%_
                           _%e432648432931%_
                           _%hd432649432934%_
                           _%tl432650432936%_
                           _%e432688432831%_
                           _%hd432689432834%_
                           _%tl432690432836%_
                           _%e432691432839%_
                           _%hd432692432842%_
                           _%tl432693432844%_)
                          (let () (declare (not safe)) (_%g432603432713%_)))))
                  (let () (declare (not safe)) (_%g432603432713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432613433110%_))
                                                  (let ((_%e432703432734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432613433110%_))))
                                                    (let ((_%tl432705432739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432703432734%_)))
                                                          (_%hd432704432737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432703432734%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl432705432739%_))
                                                          (let ((_%e432706432742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl432705432739%_))))
                    (let ((_%tl432708432747%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e432706432742%_)))
                          (_%hd432707432745%_
                           (let ()
                             (declare (not safe))
                             (##car _%e432706432742%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl432708432747%_))
                          (_%__kont437074437075%_
                           _%hd432707432745%_
                           _%hd432704432737%_
                           _%hd432612433108%_)
                          (let () (declare (not safe)) (_%g432603432713%_)))))
                  (let () (declare (not safe)) (_%g432603432713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl432650432936%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl432613433110%_))
                                          (let ((_%e432688432831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl432613433110%_))))
                                            (let ((_%tl432690432836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e432688432831%_)))
                                                  (_%hd432689432834%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e432688432831%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432690432836%_))
                                                  (let ((_%e432691432839%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432690432836%_))))
                                                    (let ((_%tl432693432844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432691432839%_)))
                                                          (_%hd432692432842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432691432839%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl432693432844%_))
                                                          (_%__match437273437274%_
                                                           _%e432608433097%_
                                                           _%hd432609433100%_
                                                           _%tl432610433102%_
                                                           _%e432611433105%_
                                                           _%hd432612433108%_
                                                           _%tl432613433110%_
                                                           _%e432614433113%_
                                                           _%hd432615433116%_
                                                           _%tl432616433118%_
                                                           _%e432639432907%_
                                                           _%hd432640432910%_
                                                           _%tl432641432912%_
                                                           _%e432642432915%_
                                                           _%hd432643432918%_
                                                           _%tl432644432920%_
                                                           _%e432645432923%_
                                                           _%hd432646432926%_
                                                           _%tl432647432928%_
                                                           _%e432648432931%_
                                                           _%hd432649432934%_
                                                           _%tl432650432936%_
                                                           _%e432688432831%_
                                                           _%hd432689432834%_
                                                           _%tl432690432836%_
                                                           _%e432691432839%_
                                                           _%hd432692432842%_
                                                           _%tl432693432844%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g432603432713%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g432603432713%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl432613433110%_))
                                          (let ((_%e432703432734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl432613433110%_))))
                                            (let ((_%tl432705432739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e432703432734%_)))
                                                  (_%hd432704432737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e432703432734%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432705432739%_))
                                                  (let ((_%e432706432742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432705432739%_))))
                                                    (let ((_%tl432708432747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432706432742%_)))
                                                          (_%hd432707432745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432706432742%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl432708432747%_))
                                                          (_%__kont437074437075%_
                                                           _%hd432707432745%_
                                                           _%hd432704432737%_
                                                           _%hd432612433108%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g432603432713%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g432603432713%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl432650432936%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl432613433110%_))
                                      (let ((_%e432688432831%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl432613433110%_))))
                                        (let ((_%tl432690432836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e432688432831%_)))
                                              (_%hd432689432834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e432688432831%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl432690432836%_))
                                              (let ((_%e432691432839%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl432690432836%_))))
                                                (let ((_%tl432693432844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e432691432839%_)))
                                                      (_%hd432692432842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e432691432839%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl432693432844%_))
                                                      (_%__match437273437274%_
                                                       _%e432608433097%_
                                                       _%hd432609433100%_
                                                       _%tl432610433102%_
                                                       _%e432611433105%_
                                                       _%hd432612433108%_
                                                       _%tl432613433110%_
                                                       _%e432614433113%_
                                                       _%hd432615433116%_
                                                       _%tl432616433118%_
                                                       _%e432639432907%_
                                                       _%hd432640432910%_
                                                       _%tl432641432912%_
                                                       _%e432642432915%_
                                                       _%hd432643432918%_
                                                       _%tl432644432920%_
                                                       _%e432645432923%_
                                                       _%hd432646432926%_
                                                       _%tl432647432928%_
                                                       _%e432648432931%_
                                                       _%hd432649432934%_
                                                       _%tl432650432936%_
                                                       _%e432688432831%_
                                                       _%hd432689432834%_
                                                       _%tl432690432836%_
                                                       _%e432691432839%_
                                                       _%hd432692432842%_
                                                       _%tl432693432844%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g432603432713%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g432603432713%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g432603432713%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl432613433110%_))
                                      (let ((_%e432703432734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl432613433110%_))))
                                        (let ((_%tl432705432739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e432703432734%_)))
                                              (_%hd432704432737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e432703432734%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl432705432739%_))
                                              (let ((_%e432706432742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl432705432739%_))))
                                                (let ((_%tl432708432747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e432706432742%_)))
                                                      (_%hd432707432745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e432706432742%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl432708432747%_))
                                                      (_%__kont437074437075%_
                                                       _%hd432707432745%_
                                                       _%hd432704432737%_
                                                       _%hd432612433108%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g432603432713%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g432603432713%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g432603432713%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl432650432936%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl432613433110%_))
                                  (let ((_%e432688432831%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl432613433110%_))))
                                    (let ((_%tl432690432836%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e432688432831%_)))
                                          (_%hd432689432834%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e432688432831%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl432690432836%_))
                                          (let ((_%e432691432839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl432690432836%_))))
                                            (let ((_%tl432693432844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e432691432839%_)))
                                                  (_%hd432692432842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e432691432839%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl432693432844%_))
                                                  (_%__match437273437274%_
                                                   _%e432608433097%_
                                                   _%hd432609433100%_
                                                   _%tl432610433102%_
                                                   _%e432611433105%_
                                                   _%hd432612433108%_
                                                   _%tl432613433110%_
                                                   _%e432614433113%_
                                                   _%hd432615433116%_
                                                   _%tl432616433118%_
                                                   _%e432639432907%_
                                                   _%hd432640432910%_
                                                   _%tl432641432912%_
                                                   _%e432642432915%_
                                                   _%hd432643432918%_
                                                   _%tl432644432920%_
                                                   _%e432645432923%_
                                                   _%hd432646432926%_
                                                   _%tl432647432928%_
                                                   _%e432648432931%_
                                                   _%hd432649432934%_
                                                   _%tl432650432936%_
                                                   _%e432688432831%_
                                                   _%hd432689432834%_
                                                   _%tl432690432836%_
                                                   _%e432691432839%_
                                                   _%hd432692432842%_
                                                   _%tl432693432844%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g432603432713%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g432603432713%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl432613433110%_))
                                  (let ((_%e432703432734%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl432613433110%_))))
                                    (let ((_%tl432705432739%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e432703432734%_)))
                                          (_%hd432704432737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e432703432734%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl432705432739%_))
                                          (let ((_%e432706432742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl432705432739%_))))
                                            (let ((_%tl432708432747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e432706432742%_)))
                                                  (_%hd432707432745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e432706432742%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl432708432747%_))
                                                  (_%__kont437074437075%_
                                                   _%hd432707432745%_
                                                   _%hd432704432737%_
                                                   _%hd432612433108%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g432603432713%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g432603432713%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl432650432936%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl432613433110%_))
                          (let ((_%e432688432831%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl432613433110%_))))
                            (let ((_%tl432690432836%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e432688432831%_)))
                                  (_%hd432689432834%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e432688432831%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl432690432836%_))
                                  (let ((_%e432691432839%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl432690432836%_))))
                                    (let ((_%tl432693432844%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e432691432839%_)))
                                          (_%hd432692432842%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e432691432839%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl432693432844%_))
                                          (_%__match437273437274%_
                                           _%e432608433097%_
                                           _%hd432609433100%_
                                           _%tl432610433102%_
                                           _%e432611433105%_
                                           _%hd432612433108%_
                                           _%tl432613433110%_
                                           _%e432614433113%_
                                           _%hd432615433116%_
                                           _%tl432616433118%_
                                           _%e432639432907%_
                                           _%hd432640432910%_
                                           _%tl432641432912%_
                                           _%e432642432915%_
                                           _%hd432643432918%_
                                           _%tl432644432920%_
                                           _%e432645432923%_
                                           _%hd432646432926%_
                                           _%tl432647432928%_
                                           _%e432648432931%_
                                           _%hd432649432934%_
                                           _%tl432650432936%_
                                           _%e432688432831%_
                                           _%hd432689432834%_
                                           _%tl432690432836%_
                                           _%e432691432839%_
                                           _%hd432692432842%_
                                           _%tl432693432844%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g432603432713%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g432603432713%_)))))
                          (let () (declare (not safe)) (_%g432603432713%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl432613433110%_))
                          (let ((_%e432703432734%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl432613433110%_))))
                            (let ((_%tl432705432739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e432703432734%_)))
                                  (_%hd432704432737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e432703432734%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl432705432739%_))
                                  (let ((_%e432706432742%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl432705432739%_))))
                                    (let ((_%tl432708432747%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e432706432742%_)))
                                          (_%hd432707432745%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e432706432742%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl432708432747%_))
                                          (_%__kont437074437075%_
                                           _%hd432707432745%_
                                           _%hd432704432737%_
                                           _%hd432612433108%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g432603432713%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g432603432713%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g432603432713%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl432613433110%_))
                                                      (let ((_%e432703432734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl432613433110%_))))
                (let ((_%tl432705432739%_
                       (let () (declare (not safe)) (##cdr _%e432703432734%_)))
                      (_%hd432704432737%_
                       (let ()
                         (declare (not safe))
                         (##car _%e432703432734%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl432705432739%_))
                      (let ((_%e432706432742%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl432705432739%_))))
                        (let ((_%tl432708432747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e432706432742%_)))
                              (_%hd432707432745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e432706432742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl432708432747%_))
                              (_%__kont437074437075%_
                               _%hd432707432745%_
                               _%hd432704432737%_
                               _%hd432612433108%_)
                              (let ()
                                (declare (not safe))
                                (_%g432603432713%_)))))
                      (let () (declare (not safe)) (_%g432603432713%_)))))
              (let () (declare (not safe)) (_%g432603432713%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432613433110%_))
                                                  (let ((_%e432703432734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432613433110%_))))
                                                    (let ((_%tl432705432739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432703432734%_)))
                                                          (_%hd432704432737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432703432734%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl432705432739%_))
                                                          (let ((_%e432706432742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl432705432739%_))))
                    (let ((_%tl432708432747%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e432706432742%_)))
                          (_%hd432707432745%_
                           (let ()
                             (declare (not safe))
                             (##car _%e432706432742%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl432708432747%_))
                          (_%__kont437074437075%_
                           _%hd432707432745%_
                           _%hd432704432737%_
                           _%hd432612433108%_)
                          (let () (declare (not safe)) (_%g432603432713%_)))))
                  (let () (declare (not safe)) (_%g432603432713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl432613433110%_))
                                          (let ((_%e432703432734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl432613433110%_))))
                                            (let ((_%tl432705432739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e432703432734%_)))
                                                  (_%hd432704432737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e432703432734%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl432705432739%_))
                                                  (let ((_%e432706432742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl432705432739%_))))
                                                    (let ((_%tl432708432747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e432706432742%_)))
                                                          (_%hd432707432745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e432706432742%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl432708432747%_))
                                                          (_%__kont437074437075%_
                                                           _%hd432707432745%_
                                                           _%hd432704432737%_
                                                           _%hd432612433108%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g432603432713%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g432603432713%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl432613433110%_))
                                      (let ((_%e432703432734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl432613433110%_))))
                                        (let ((_%tl432705432739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e432703432734%_)))
                                              (_%hd432704432737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e432703432734%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl432705432739%_))
                                              (let ((_%e432706432742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl432705432739%_))))
                                                (let ((_%tl432708432747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e432706432742%_)))
                                                      (_%hd432707432745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e432706432742%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl432708432747%_))
                                                      (_%__kont437074437075%_
                                                       _%hd432707432745%_
                                                       _%hd432704432737%_
                                                       _%hd432612433108%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g432603432713%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g432603432713%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g432603432713%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl432613433110%_))
                                  (let ((_%e432703432734%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl432613433110%_))))
                                    (let ((_%tl432705432739%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e432703432734%_)))
                                          (_%hd432704432737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e432703432734%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl432705432739%_))
                                          (let ((_%e432706432742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl432705432739%_))))
                                            (let ((_%tl432708432747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e432706432742%_)))
                                                  (_%hd432707432745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e432706432742%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl432708432747%_))
                                                  (_%__kont437074437075%_
                                                   _%hd432707432745%_
                                                   _%hd432704432737%_
                                                   _%hd432612433108%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g432603432713%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g432603432713%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g432603432713%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl432613433110%_))
                          (let ((_%e432703432734%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl432613433110%_))))
                            (let ((_%tl432705432739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e432703432734%_)))
                                  (_%hd432704432737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e432703432734%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl432705432739%_))
                                  (let ((_%e432706432742%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl432705432739%_))))
                                    (let ((_%tl432708432747%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e432706432742%_)))
                                          (_%hd432707432745%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e432706432742%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl432708432747%_))
                                          (_%__kont437074437075%_
                                           _%hd432707432745%_
                                           _%hd432704432737%_
                                           _%hd432612433108%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g432603432713%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g432603432713%_)))))
                          (let () (declare (not safe)) (_%g432603432713%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl432613433110%_))
                  (let ((_%e432703432734%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl432613433110%_))))
                    (let ((_%tl432705432739%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e432703432734%_)))
                          (_%hd432704432737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e432703432734%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl432705432739%_))
                          (let ((_%e432706432742%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl432705432739%_))))
                            (let ((_%tl432708432747%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e432706432742%_)))
                                  (_%hd432707432745%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e432706432742%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl432708432747%_))
                                  (_%__kont437074437075%_
                                   _%hd432707432745%_
                                   _%hd432704432737%_
                                   _%hd432612433108%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g432603432713%_)))))
                          (let () (declare (not safe)) (_%g432603432713%_)))))
                  (let () (declare (not safe)) (_%g432603432713%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl432613433110%_))
                                                      (let ((_%e432703432734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl432613433110%_))))
                (let ((_%tl432705432739%_
                       (let () (declare (not safe)) (##cdr _%e432703432734%_)))
                      (_%hd432704432737%_
                       (let ()
                         (declare (not safe))
                         (##car _%e432703432734%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl432705432739%_))
                      (let ((_%e432706432742%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl432705432739%_))))
                        (let ((_%tl432708432747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e432706432742%_)))
                              (_%hd432707432745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e432706432742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl432708432747%_))
                              (_%__kont437074437075%_
                               _%hd432707432745%_
                               _%hd432704432737%_
                               _%hd432612433108%_)
                              (let ()
                                (declare (not safe))
                                (_%g432603432713%_)))))
                      (let () (declare (not safe)) (_%g432603432713%_)))))
              (let () (declare (not safe)) (_%g432603432713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl432613433110%_))
                                              (let ((_%e432703432734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl432613433110%_))))
                                                (let ((_%tl432705432739%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e432703432734%_)))
                                                      (_%hd432704432737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e432703432734%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl432705432739%_))
                                                      (let ((_%e432706432742%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl432705432739%_))))
                (let ((_%tl432708432747%_
                       (let () (declare (not safe)) (##cdr _%e432706432742%_)))
                      (_%hd432707432745%_
                       (let ()
                         (declare (not safe))
                         (##car _%e432706432742%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl432708432747%_))
                      (_%__kont437074437075%_
                       _%hd432707432745%_
                       _%hd432704432737%_
                       _%hd432612433108%_)
                      (let () (declare (not safe)) (_%g432603432713%_)))))
              (let () (declare (not safe)) (_%g432603432713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g432603432713%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl432613433110%_))
                                      (let ((_%e432703432734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl432613433110%_))))
                                        (let ((_%tl432705432739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e432703432734%_)))
                                              (_%hd432704432737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e432703432734%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl432705432739%_))
                                              (let ((_%e432706432742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl432705432739%_))))
                                                (let ((_%tl432708432747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e432706432742%_)))
                                                      (_%hd432707432745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e432706432742%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl432708432747%_))
                                                      (_%__kont437074437075%_
                                                       _%hd432707432745%_
                                                       _%hd432704432737%_
                                                       _%hd432612433108%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g432603432713%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g432603432713%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g432603432713%_))))))
                          (let () (declare (not safe)) (_%g432603432713%_)))))
                  (let () (declare (not safe)) (_%g432603432713%_))))))))))
