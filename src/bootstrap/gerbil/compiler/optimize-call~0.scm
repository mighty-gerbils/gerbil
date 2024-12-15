(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1734278451)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp198342 (list gxc#::basic-xform::t))
            (__tmp198341 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp198342
         '()
         __tmp198341
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args197619%_
        (apply make-instance gxc#::optimize-call::t _%$args197619%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp198343
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
        (__make-promise __tmp198343)))
    (define gxc#apply-optimize-call
      (lambda (_%stx197611%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self197614%_
                (let ((__obj198333
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj198333))
               (__tmp198344
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197614%_ _%stx197611%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198344
           gxc#current-compile-method
           _%self197614%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp198346 (list gxc#::void::t))
            (__tmp198345 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp198346
         '()
         __tmp198345
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args197608%_
        (apply make-instance gxc#::check-return-type::t _%$args197608%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp198347
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
        (__make-promise __tmp198347)))
    (define gxc#apply-check-return-type
      (lambda (_%stx197600%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self197603%_
                (let ((__obj198335
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj198335))
               (__tmp198348
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197603%_ _%stx197600%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198348
           gxc#current-compile-method
           _%self197603%_))))
    (define gxc#optimize-call%
      (lambda (_%self197201%_ _%stx197202%_)
        (let* ((_%__stx197688197689%_ _%stx197202%_)
               (_%g197205197251%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197688197689%_)))))
          (let ((_%__kont197690197691%_
                 (lambda (_%L197394%_ _%L197395%_)
                   (let* ((_%rator-id197415%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L197395%_)))
                          (_%rator-type197417%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id197415%_))))
                     (if (or (not _%rator-type197417%_)
                             (eq? (##structure-ref
                                   _%rator-type197417%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self197201%_ _%stx197202%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type197417%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp198349
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type197417%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id197415%_
                                  '" => "
                                  _%rator-type197417%_
                                  '" "
                                  __tmp198349))
                               (let* ((_%optimized197432%_
                                       (let ((__method198336
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type197417%_
                                                 'optimize-call))))
                                         (if __method198336
                                             (let ((__tmp198350
                                                    (let ((__tmp198351
                                                           (lambda (_%g197424197427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197425197429%_)
                     (cons _%g197424197427%_ _%g197425197429%_))))
              (declare (not safe))
              (__foldr1 __tmp198351 '() _%L197394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method198336
                                                _%rator-type197417%_
                                                _%self197201%_
                                                _%stx197202%_
                                                __tmp198350))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type197417%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx197636197637%_
                                       _%optimized197432%_)
                                      (_%g197435197464%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx197636197637%_)))))
                                 (let ((_%__kont197638197639%_
                                        (lambda (_%L197532%_ _%L197533%_)
                                          (let* ((_%optimized-rator-id197560%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L197533%_)))
                                                 (_%rator-type197565%_
                                                  (let ((_%$e197562%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id197560%_))))
                                                    (if _%$e197562%_
                                                        _%$e197562%_
                                                        _%rator-type197417%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type197565%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id197560%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type197565%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type197565%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized197432%_
                                                (let ((__tmp198352
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L197533%_ '()))
                           (let ((__tmp198353
                                  (lambda (_%g197573197576%_ _%g197574197578%_)
                                    (cons _%g197573197576%_
                                          _%g197574197578%_))))
                             (declare (not safe))
                             (__foldr1 __tmp198353 '() _%L197532%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp198352
                                                   _%stx197202%_))))))
                                       (_%__kont197642197643%_
                                        (lambda () _%optimized197432%_)))
                                   (let ((_%__match197685197686%_
                                          (lambda (_%e197439197476%_
                                                   _%hd197440197479%_
                                                   _%tl197441197481%_
                                                   _%e197442197484%_
                                                   _%hd197443197487%_
                                                   _%tl197444197489%_
                                                   _%e197445197492%_
                                                   _%hd197446197495%_
                                                   _%tl197447197497%_
                                                   _%e197448197500%_
                                                   _%hd197449197503%_
                                                   _%tl197450197505%_
                                                   _%__splice197640197641%_
                                                   _%target197451197508%_
                                                   _%tl197453197510%_)
                                            (letrec ((_%loop197454197513%_
                                                      (lambda (_%hd197452197516%_
                                                               _%arg197458197518%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd197452197516%_))
                                                            (let ((_%e197455197521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd197452197516%_))))
                      (let ((_%lp-tl197457197526%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197455197521%_)))
                            (_%lp-hd197456197524%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197455197521%_))))
                        (_%loop197454197513%_
                         _%lp-tl197457197526%_
                         (cons _%lp-hd197456197524%_ _%arg197458197518%_))))
                    (let ((_%arg197459197529%_ (reverse _%arg197458197518%_)))
                      (_%__kont197638197639%_
                       _%arg197459197529%_
                       _%hd197449197503%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop197454197513%_
                                               _%target197451197508%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx197636197637%_))
                                         (let ((_%e197439197476%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx197636197637%_))))
                                           (let ((_%tl197441197481%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197439197476%_)))
                                                 (_%hd197440197479%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197439197476%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197440197479%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd197440197479%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197441197481%_))
                                                         (let ((_%e197442197484%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197441197481%_))))
                   (let ((_%tl197444197489%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197442197484%_)))
                         (_%hd197443197487%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197442197484%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd197443197487%_))
                         (let ((_%e197445197492%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd197443197487%_))))
                           (let ((_%tl197447197497%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197445197492%_)))
                                 (_%hd197446197495%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197445197492%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd197446197495%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd197446197495%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl197447197497%_))
                                         (let ((_%e197448197500%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl197447197497%_))))
                                           (let ((_%tl197450197505%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197448197500%_)))
                                                 (_%hd197449197503%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197448197500%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl197450197505%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl197444197489%_))
                                                     (let ((_%__splice197640197641%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl197444197489%_
                                                               '0))))
                                                       (let ((_%tl197453197510%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice197640197641%_ '1)))
                     (_%target197451197508%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice197640197641%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197453197510%_))
                     (_%__match197685197686%_
                      _%e197439197476%_
                      _%hd197440197479%_
                      _%tl197441197481%_
                      _%e197442197484%_
                      _%hd197443197487%_
                      _%tl197444197489%_
                      _%e197445197492%_
                      _%hd197446197495%_
                      _%tl197447197497%_
                      _%e197448197500%_
                      _%hd197449197503%_
                      _%tl197450197505%_
                      _%__splice197640197641%_
                      _%target197451197508%_
                      _%tl197453197510%_)
                     (_%__kont197642197643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197642197643%_))
                                                 (_%__kont197642197643%_))))
                                         (_%__kont197642197643%_))
                                     (_%__kont197642197643%_))
                                 (_%__kont197642197643%_))))
                         (_%__kont197642197643%_))))
                 (_%__kont197642197643%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197642197643%_))
                                                 (_%__kont197642197643%_))))
                                         (_%__kont197642197643%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type197417%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type197417%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp198354
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L197395%_
                                                                '()))
                                                    (map (lambda (_%g197584197586%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self197201%_
                                                              _%g197584197586%_)))
                                                         (let ((__tmp198355
                                                                (lambda (_%g197588197591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g197589197593%_)
                          (cons _%g197588197591%_ _%g197589197593%_))))
                   (declare (not safe))
                   (__foldr1 __tmp198355 '() _%L197394%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp198354
                                    _%stx197202%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx197202%_
                                    _%rator-type197417%_))))))))
                (_%__kont197694197695%_
                 (lambda (_%L197296%_ _%L197297%_)
                   (let ((_%rator-type197314%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L197297%_))))
                     (if (and _%rator-type197314%_
                              (eq? (##structure-ref
                                    _%rator-type197314%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type197314%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type197314%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type197314%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp198356
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197201%_
                                               _%L197297%_))
                                            (map (lambda (_%g197316197318%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197201%_
                                                      _%g197316197318%_)))
                                                 (let ((__tmp198357
                                                        (lambda (_%g197320197323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g197321197325%_)
                  (cons _%g197320197323%_ _%g197321197325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp198357
                                                    '()
                                                    _%L197296%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198356 _%stx197202%_))
                         (if (or (not _%rator-type197314%_)
                                 (let ((__tmp198358
                                        (##structure-ref
                                         _%rator-type197314%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp198358 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self197201%_ _%stx197202%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx197202%_
                                _%rator-type197314%_))))))))
            (let* ((_%__match197755197756%_
                    (lambda (_%e197232197256%_
                             _%hd197233197259%_
                             _%tl197234197261%_
                             _%e197235197264%_
                             _%hd197236197267%_
                             _%tl197237197269%_
                             _%__splice197696197697%_
                             _%target197238197272%_
                             _%tl197240197274%_)
                      (letrec ((_%loop197241197277%_
                                (lambda (_%hd197239197280%_
                                         _%rand197245197282%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197239197280%_))
                                      (let ((_%e197242197285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197239197280%_))))
                                        (let ((_%lp-tl197244197290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197242197285%_)))
                                              (_%lp-hd197243197288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197242197285%_))))
                                          (_%loop197241197277%_
                                           _%lp-tl197244197290%_
                                           (cons _%lp-hd197243197288%_
                                                 _%rand197245197282%_))))
                                      (let ((_%rand197246197293%_
                                             (reverse _%rand197245197282%_)))
                                        (_%__kont197694197695%_
                                         _%rand197246197293%_
                                         _%hd197236197267%_))))))
                        (_%loop197241197277%_ _%target197238197272%_ '()))))
                   (_%__match197735197736%_
                    (lambda (_%e197209197338%_
                             _%hd197210197341%_
                             _%tl197211197343%_
                             _%e197212197346%_
                             _%hd197213197349%_
                             _%tl197214197351%_
                             _%e197215197354%_
                             _%hd197216197357%_
                             _%tl197217197359%_
                             _%e197218197362%_
                             _%hd197219197365%_
                             _%tl197220197367%_
                             _%__splice197692197693%_
                             _%target197221197370%_
                             _%tl197223197372%_)
                      (letrec ((_%loop197224197375%_
                                (lambda (_%hd197222197378%_
                                         _%rand197228197380%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197222197378%_))
                                      (let ((_%e197225197383%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197222197378%_))))
                                        (let ((_%lp-tl197227197388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197225197383%_)))
                                              (_%lp-hd197226197386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197225197383%_))))
                                          (_%loop197224197375%_
                                           _%lp-tl197227197388%_
                                           (cons _%lp-hd197226197386%_
                                                 _%rand197228197380%_))))
                                      (let ((_%rand197229197391%_
                                             (reverse _%rand197228197380%_)))
                                        (_%__kont197690197691%_
                                         _%rand197229197391%_
                                         _%hd197219197365%_))))))
                        (_%loop197224197375%_ _%target197221197370%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197688197689%_))
                  (let ((_%e197209197338%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197688197689%_))))
                    (let ((_%tl197211197343%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197209197338%_)))
                          (_%hd197210197341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197209197338%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197211197343%_))
                          (let ((_%e197212197346%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197211197343%_))))
                            (let ((_%tl197214197351%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197212197346%_)))
                                  (_%hd197213197349%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197212197346%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197213197349%_))
                                  (let ((_%e197215197354%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197213197349%_))))
                                    (let ((_%tl197217197359%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197215197354%_)))
                                          (_%hd197216197357%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197215197354%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197216197357%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197216197357%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197217197359%_))
                                                  (let ((_%e197218197362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197217197359%_))))
                                                    (let ((_%tl197220197367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197218197362%_)))
                                                          (_%hd197219197365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197218197362%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197220197367%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197214197351%_))
                      (let ((_%__splice197692197693%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197214197351%_
                                '0))))
                        (let ((_%tl197223197372%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197692197693%_ '1)))
                              (_%target197221197370%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197692197693%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197223197372%_))
                              (_%__match197735197736%_
                               _%e197209197338%_
                               _%hd197210197341%_
                               _%tl197211197343%_
                               _%e197212197346%_
                               _%hd197213197349%_
                               _%tl197214197351%_
                               _%e197215197354%_
                               _%hd197216197357%_
                               _%tl197217197359%_
                               _%e197218197362%_
                               _%hd197219197365%_
                               _%tl197220197367%_
                               _%__splice197692197693%_
                               _%target197221197370%_
                               _%tl197223197372%_)
                              (let ()
                                (declare (not safe))
                                (_%g197205197251%_)))))
                      (let () (declare (not safe)) (_%g197205197251%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197214197351%_))
                      (let ((_%__splice197696197697%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197214197351%_
                                '0))))
                        (let ((_%tl197240197274%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197696197697%_ '1)))
                              (_%target197238197272%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197696197697%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197240197274%_))
                              (_%__match197755197756%_
                               _%e197209197338%_
                               _%hd197210197341%_
                               _%tl197211197343%_
                               _%e197212197346%_
                               _%hd197213197349%_
                               _%tl197214197351%_
                               _%__splice197696197697%_
                               _%target197238197272%_
                               _%tl197240197274%_)
                              (let ()
                                (declare (not safe))
                                (_%g197205197251%_)))))
                      (let () (declare (not safe)) (_%g197205197251%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197214197351%_))
                                                      (let ((_%__splice197696197697%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197214197351%_ '0))))
                (let ((_%tl197240197274%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197696197697%_ '1)))
                      (_%target197238197272%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197696197697%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197240197274%_))
                      (_%__match197755197756%_
                       _%e197209197338%_
                       _%hd197210197341%_
                       _%tl197211197343%_
                       _%e197212197346%_
                       _%hd197213197349%_
                       _%tl197214197351%_
                       _%__splice197696197697%_
                       _%target197238197272%_
                       _%tl197240197274%_)
                      (let () (declare (not safe)) (_%g197205197251%_)))))
              (let () (declare (not safe)) (_%g197205197251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl197214197351%_))
                                                  (let ((_%__splice197696197697%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl197214197351%_
                                                            '0))))
                                                    (let ((_%tl197240197274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197696197697%_
                                                              '1)))
                                                          (_%target197238197272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197696197697%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197240197274%_))
                                                          (_%__match197755197756%_
                                                           _%e197209197338%_
                                                           _%hd197210197341%_
                                                           _%tl197211197343%_
                                                           _%e197212197346%_
                                                           _%hd197213197349%_
                                                           _%tl197214197351%_
                                                           _%__splice197696197697%_
                                                           _%target197238197272%_
                                                           _%tl197240197274%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197205197251%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197205197251%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197214197351%_))
                                              (let ((_%__splice197696197697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197214197351%_
                                                        '0))))
                                                (let ((_%tl197240197274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197696197697%_
                                                          '1)))
                                                      (_%target197238197272%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197696197697%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197240197274%_))
                                                      (_%__match197755197756%_
                                                       _%e197209197338%_
                                                       _%hd197210197341%_
                                                       _%tl197211197343%_
                                                       _%e197212197346%_
                                                       _%hd197213197349%_
                                                       _%tl197214197351%_
                                                       _%__splice197696197697%_
                                                       _%target197238197272%_
                                                       _%tl197240197274%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197205197251%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197205197251%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197214197351%_))
                                      (let ((_%__splice197696197697%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197214197351%_
                                                '0))))
                                        (let ((_%tl197240197274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197696197697%_
                                                  '1)))
                                              (_%target197238197272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197696197697%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197240197274%_))
                                              (_%__match197755197756%_
                                               _%e197209197338%_
                                               _%hd197210197341%_
                                               _%tl197211197343%_
                                               _%e197212197346%_
                                               _%hd197213197349%_
                                               _%tl197214197351%_
                                               _%__splice197696197697%_
                                               _%target197238197272%_
                                               _%tl197240197274%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197205197251%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197205197251%_))))))
                          (let () (declare (not safe)) (_%g197205197251%_)))))
                  (let () (declare (not safe)) (_%g197205197251%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self193580197161%_ _%ctx197163%_ _%stx197164%_ _%args197165%_)
        (let* ((_%self197167%_ _%self193580197161%_)
               (_%self197169%_ _%self197167%_))
          (if (let ((__method198337
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self197169%_ 'check-arguments))))
                (if __method198337
                    (let ()
                      (declare (not safe))
                      (__method198337
                       _%self197169%_
                       _%ctx197163%_
                       _%stx197164%_
                       _%args197165%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self197169%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature197179%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197169%_ '2 '#f '#f)))
                     (_%signature197181%_ _%signature197179%_)
                     (_%$e197191%_
                      (if _%signature197181%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature197181%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e197191%_
                    ((lambda (_%unchecked197194%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked197194%_))
                           (let ((__tmp198359
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked197194%_
                                                          '()))
                                              (map (lambda (_%g197195197197%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx197163%_
                                                        _%g197195197197%_)))
                                                   _%args197165%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp198359
                              _%stx197164%_
                              _%ctx197163%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx197163%_ _%stx197164%_))))
                     _%$e197191%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx197163%_ _%stx197164%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx197163%_ _%stx197164%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass197621 __method-table197622)
        (let ((__check-arguments197623
               (let ((__tmp198360
                      (lambda ()
                        (let ((__method197624
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197622
                                  'check-arguments
                                  '#f))))
                          (if __method197624
                              __method197624
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198360))))
          (lambda (_%self193580197161%_
                   _%ctx197163%_
                   _%stx197164%_
                   _%args197165%_)
            (let* ((_%self197167%_ _%self193580197161%_)
                   (_%self197169%_ _%self197167%_))
              (if ((force __check-arguments197623)
                   _%self197169%_
                   _%ctx197163%_
                   _%stx197164%_
                   _%args197165%_)
                  (let* ((_%signature197179%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self197169%_
                             '2
                             '#f
                             '#f)))
                         (_%signature197181%_ _%signature197179%_)
                         (_%$e197191%_
                          (if _%signature197181%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature197181%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e197191%_
                        ((lambda (_%unchecked197194%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked197194%_))
                               (let ((__tmp198361
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked197194%_
                                                              '()))
                                                  (map (lambda (_%g197195197197%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx197163%_
                                                            _%g197195197197%_)))
                                                       _%args197165%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp198361
                                  _%stx197164%_
                                  _%ctx197163%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx197163%_
                                  _%stx197164%_))))
                         _%$e197191%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx197163%_ _%stx197164%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx197163%_ _%stx197164%_))))))))
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
      (lambda (_%self193581196910%_ _%ctx196912%_ _%stx196913%_ _%args196914%_)
        (let* ((_%self196916%_ _%self193581196910%_)
               (_%self196918%_ _%self196916%_)
               (_%signature196927196929%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196918%_ '2 '#f '#f))))
          (if _%signature196927196929%_
              (let* ((_%signature196932%_ _%signature196927196929%_)
                     (_%argument-types196933196935%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature196932%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types196933196935%_
                    (let* ((_%argument-types196938%_
                            _%argument-types196933196935%_)
                           (_%argument-types196943%_
                            (let ((__tmp198362
                                   (lambda (_%t196941%_)
                                     (if _%t196941%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196913%_
                                            _%t196941%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp198362
                               _%argument-types196938%_))))
                      (let _%loop196945%_ ((_%rest-args196947%_ _%args196914%_)
                                           (_%rest-types196948%_
                                            _%argument-types196943%_)
                                           (_%result196949%_ '#t))
                        (let* ((_%rest-args196950196958%_ _%rest-args196947%_)
                               (_%else196952196966%_
                                (lambda () _%result196949%_))
                               (_%K196954197027%_
                                (lambda (_%rest-args196969%_ _%arg196970%_)
                                  (let* ((_%rest-types196971196982%_
                                          _%rest-types196948%_)
                                         (_%E196975196986%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types196971196982%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K196978197015%_
                                           (lambda (_%rest-types197012%_
                                                    _%type197013%_)
                                             (_%loop196945%_
                                              _%rest-args196969%_
                                              _%rest-types197012%_
                                              (if (gxc#check-expression-type!
                                                   _%stx196913%_
                                                   _%arg196970%_
                                                   _%type197013%_)
                                                  _%result196949%_
                                                  '#f))))
                                          (_%K196977197006%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx196913%_
                                                _%argument-types196943%_))))
                                          (_%K196976196996%_
                                           (lambda (_%tail-type196990%_)
                                             (if (let ((__tmp198363
                                                        (lambda (_%g196991196993%_)
                                                          (gxc#check-expression-type!
                                                           _%stx196913%_
                                                           _%g196991196993%_
                                                           _%tail-type196990%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp198363
                                                    _%rest-args196969%_))
                                                 _%result196949%_
                                                 '#f))))
                                      (let ((_%try-match196973197009%_
                                             (lambda ()
                                               (if (null? _%rest-types196971196982%_)
                                                   (_%K196977197006%_)
                                                   (let ((_%tail-type196999%_
                                                          _%rest-types196971196982%_))
                                                     (_%K196976196996%_
                                                      _%tail-type196999%_))))))
                                        (if (pair? _%rest-types196971196982%_)
                                            (let ((_%tl196980197020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types196971196982%_)))
                                                  (_%hd196979197018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types196971196982%_))))
                                              (let ((_%type197023%_
                                                     _%hd196979197018%_)
                                                    (_%rest-types197025%_
                                                     _%tl196980197020%_))
                                                (_%K196978197015%_
                                                 _%rest-types197025%_
                                                 _%type197023%_)))
                                            (_%try-match196973197009%_))))))))
                          (if (pair? _%rest-args196950196958%_)
                              (let ((_%hd196955197030%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args196950196958%_)))
                                    (_%tl196956197032%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args196950196958%_))))
                                (let* ((_%arg197035%_ _%hd196955197030%_)
                                       (_%rest-args197037%_
                                        _%tl196956197032%_))
                                  (_%K196954197027%_
                                   _%rest-args197037%_
                                   _%arg197035%_)))
                              (_%else196952196966%_)))))
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
      (lambda (_%self193582196719%_ _%ctx196721%_ _%stx196722%_ _%args196723%_)
        (let* ((_%self196725%_ _%self193582196719%_)
               (_%self196727%_ _%self196725%_)
               (_%g196737196747%_
                (lambda (_%g196738196744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196738196744%_))))
               (_%g196736196785%_
                (lambda (_%g196738196750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196738196750%_))
                      (let ((_%e196740196752%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196738196750%_))))
                        (let ((_%hd196741196755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196740196752%_)))
                              (_%tl196742196757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196740196752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196742196757%_))
                              ((lambda (_%L196760%_)
                                 (let* ((_%klass196772%_
                                         (let ((__tmp198364
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196727%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196722%_
                                            __tmp198364)))
                                        (_%object196774%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196721%_
                                            _%L196760%_)))
                                        (_%instance?196779%_
                                         (let ((_%$e196776%_
                                                (gxc#expression-type?
                                                 _%object196774%_
                                                 _%klass196772%_)))
                                           (if _%$e196776%_
                                               _%$e196776%_
                                               (gxc#expression-type?
                                                _%L196760%_
                                                _%klass196772%_)))))
                                   (if _%instance?196779%_
                                       (let ((__tmp198365
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196774%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196760%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196774%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198365
                                          _%stx196722%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx196721%_
                                          _%stx196722%_)))))
                               _%hd196741196755%_)
                              (_%g196737196747%_ _%g196738196750%_))))
                      (_%g196737196747%_ _%g196738196750%_)))))
          (_%g196736196785%_ _%args196723%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self193583196513%_ _%ctx196515%_ _%stx196516%_ _%args196517%_)
        (let* ((_%self196519%_ _%self193583196513%_)
               (_%self196521%_ _%self196519%_)
               (_%g196531196541%_
                (lambda (_%g196532196538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196532196538%_))))
               (_%g196530196594%_
                (lambda (_%g196532196544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196532196544%_))
                      (let ((_%e196534196546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196532196544%_))))
                        (let ((_%hd196535196549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196534196546%_)))
                              (_%tl196536196551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196534196546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196536196551%_))
                              ((lambda (_%L196554%_)
                                 (let* ((_%klass196566%_
                                         (let ((__tmp198366
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196521%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196516%_
                                            __tmp198366)))
                                        (_%object196568%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196515%_
                                            _%L196554%_)))
                                        (_%instance?196573%_
                                         (let ((_%$e196570%_
                                                (gxc#expression-type?
                                                 _%object196568%_
                                                 _%klass196566%_)))
                                           (if _%$e196570%_
                                               _%$e196570%_
                                               (gxc#expression-type?
                                                _%L196554%_
                                                _%klass196566%_))))
                                        (_%klass196576%_ _%klass196566%_))
                                   (if _%instance?196573%_
                                       (let ((__tmp198367
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196568%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196554%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196568%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198367
                                          _%stx196516%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass196576%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198368
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass196576%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object196568%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198368
                                              _%stx196516%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass196576%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198369
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass196576%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object196568%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198369
                                                  _%stx196516%_))
                                               (let ((__tmp198370
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self196521%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object196568%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198370
                                                  _%stx196516%_)))))))
                               _%hd196535196549%_)
                              (_%g196531196541%_ _%g196532196544%_))))
                      (_%g196531196541%_ _%g196532196544%_)))))
          (_%g196530196594%_ _%args196517%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx196176%_)
        (let* ((_%__stx197765197766%_ _%stx196176%_)
               (_%g196181196222%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197765197766%_)))))
          (let ((_%__kont197767197768%_ (lambda () '#t))
                (_%__kont197769197770%_ (lambda () '#t))
                (_%__kont197771197772%_
                 (lambda (_%L196290%_ _%L196291%_)
                   (let ((_%rator-type196312196314%_
                          (let ((__tmp198371
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L196291%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp198371))))
                     (if _%rator-type196312196314%_
                         (let* ((_%rator-type196317%_
                                 _%rator-type196312196314%_)
                                (_%rator-signature196318196320%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type196317%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type196317%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature196318196320%_
                               (let* ((_%rator-signature196323%_
                                       _%rator-signature196318196320%_)
                                      (_%rator-effect196324196326%_
                                       (if _%rator-signature196323%_
                                           (##direct-structure-ref
                                            _%rator-signature196323%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect196324196326%_
                                     (let ((_%rator-effect196329%_
                                            _%rator-effect196324196326%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect196329%_)
                                               (equal? '(alloc)
                                                       _%rator-effect196329%_))
                                           (let ((__tmp198372
                                                  (let ((__tmp198373
                                                         (lambda (_%g196334196337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g196335196339%_)
                   (cons _%g196334196337%_ _%g196335196339%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp198373
                                                     '()
                                                     _%L196290%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp198372))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont197775197776%_ (lambda () '#f)))
            (let ((_%__match197854197855%_
                   (lambda (_%e196197196234%_
                            _%hd196198196237%_
                            _%tl196199196239%_
                            _%e196200196242%_
                            _%hd196201196245%_
                            _%tl196202196247%_
                            _%e196203196250%_
                            _%hd196204196253%_
                            _%tl196205196255%_
                            _%e196206196258%_
                            _%hd196207196261%_
                            _%tl196208196263%_
                            _%__splice197773197774%_
                            _%target196209196266%_
                            _%tl196211196268%_)
                     (letrec ((_%loop196212196271%_
                               (lambda (_%hd196210196274%_
                                        _%rand196216196276%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196210196274%_))
                                     (let ((_%e196213196279%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196210196274%_))))
                                       (let ((_%lp-tl196215196284%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196213196279%_)))
                                             (_%lp-hd196214196282%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196213196279%_))))
                                         (_%loop196212196271%_
                                          _%lp-tl196215196284%_
                                          (cons _%lp-hd196214196282%_
                                                _%rand196216196276%_))))
                                     (let ((_%rand196217196287%_
                                            (reverse _%rand196216196276%_)))
                                       (_%__kont197771197772%_
                                        _%rand196217196287%_
                                        _%hd196207196261%_))))))
                       (_%loop196212196271%_ _%target196209196266%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197765197766%_))
                  (let ((_%e196183196370%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197765197766%_))))
                    (let ((_%tl196185196375%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196183196370%_)))
                          (_%hd196184196373%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196183196370%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd196184196373%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd196184196373%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196185196375%_))
                                  (let ((_%e196186196378%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196185196375%_))))
                                    (let ((_%tl196188196383%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196186196378%_)))
                                          (_%hd196187196381%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196186196378%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196188196383%_))
                                          (_%__kont197767197768%_)
                                          (_%__kont197775197776%_))))
                                  (_%__kont197775197776%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd196184196373%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196185196375%_))
                                      (let ((_%e196192196355%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196185196375%_))))
                                        (let ((_%tl196194196360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196192196355%_)))
                                              (_%hd196193196358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196192196355%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196194196360%_))
                                              (_%__kont197769197770%_)
                                              (_%__kont197775197776%_))))
                                      (_%__kont197775197776%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd196184196373%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196185196375%_))
                                          (let ((_%e196200196242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196185196375%_))))
                                            (let ((_%tl196202196247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196200196242%_)))
                                                  (_%hd196201196245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196200196242%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196201196245%_))
                                                  (let ((_%e196203196250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196201196245%_))))
                                                    (let ((_%tl196205196255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196203196250%_)))
                                                          (_%hd196204196253%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196203196250%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196204196253%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd196204196253%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196205196255%_))
                          (let ((_%e196206196258%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196205196255%_))))
                            (let ((_%tl196208196263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196206196258%_)))
                                  (_%hd196207196261%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196206196258%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196208196263%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196202196247%_))
                                      (let ((_%__splice197773197774%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196202196247%_
                                                '0))))
                                        (let ((_%tl196211196268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197773197774%_
                                                  '1)))
                                              (_%target196209196266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197773197774%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196211196268%_))
                                              (_%__match197854197855%_
                                               _%e196183196370%_
                                               _%hd196184196373%_
                                               _%tl196185196375%_
                                               _%e196200196242%_
                                               _%hd196201196245%_
                                               _%tl196202196247%_
                                               _%e196203196250%_
                                               _%hd196204196253%_
                                               _%tl196205196255%_
                                               _%e196206196258%_
                                               _%hd196207196261%_
                                               _%tl196208196263%_
                                               _%__splice197773197774%_
                                               _%target196209196266%_
                                               _%tl196211196268%_)
                                              (_%__kont197775197776%_))))
                                      (_%__kont197775197776%_))
                                  (_%__kont197775197776%_))))
                          (_%__kont197775197776%_))
                      (_%__kont197775197776%_))
                  (_%__kont197775197776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197775197776%_))))
                                          (_%__kont197775197776%_))
                                      (_%__kont197775197776%_))))
                          (_%__kont197775197776%_))))
                  (_%__kont197775197776%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx196171%_ _%klass196172%_)
        (let ((_%expr-type196174%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx196171%_))))
          (if _%expr-type196174%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type196174%_ _%klass196172%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx196149%_ _%expr196150%_ _%type196151%_)
        (if (not _%type196151%_)
            '#f
            (let ((_%$e196154%_
                   (eq? (##structure-ref _%type196151%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e196154%_
                  _%$e196154%_
                  (let ((_%expr-type196158%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr196150%_))))
                    (if (not _%expr-type196158%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type196158%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e196162%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type196158%_
                                      'gxc#!abort::t))))
                              (if _%$e196162%_
                                  _%$e196162%_
                                  (let ((_%$e196165%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type196158%_
                                            _%type196151%_))))
                                    (if _%$e196165%_
                                        _%$e196165%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type196151%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type196151%_
                                                   _%expr-type196158%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx196149%_
                                                   _%expr196150%_
                                                   _%expr-type196158%_
                                                   _%type196151%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self193584195961%_ _%ctx195963%_ _%stx195964%_ _%args195965%_)
        (let* ((_%self195967%_ _%self193584195961%_)
               (_%self195969%_ _%self195967%_)
               (_%klass195979%_
                (let ((__tmp198374
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195969%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx195964%_ __tmp198374)))
               (_%fields195981%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195979%_
                           '5
                           '#f
                           '#f))))
               (_%args195987%_
                (map (lambda (_%g195982195984%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx195963%_ _%g195982195984%_)))
                     _%args195965%_))
               (_%inline-make-object195989%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self195969%_
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
                           _%self195969%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields195981%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass195992%_ _%klass195979%_)
               (_%$e196006%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass195992%_ '6 '#f '#f))))
          (if _%$e196006%_
              ((lambda (_%ctor196009%_)
                 (let ((_%$obj196011%_
                        (let ((__tmp198375
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp198375)))
                       (_%ctor-impl196012%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass195992%_
                           _%ctor196009%_))))
                   (let ((__tmp198376
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196011%_ '())
                                                  (cons _%inline-make-object195989%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl196012%_
                                                            (let ((__tmp198377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl196012%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj196011%_ '()))
                                             _%args195987%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp198377
                       _%stx195964%_
                       _%ctx195963%_))
                    (let ((_%$ctor196014%_
                           (let ((__tmp198378
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198378))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor196014%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195969%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj196011%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor196009%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor196014%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor196014%_ '()))
                              (cons (cons '%#ref (cons _%$obj196011%_ '()))
                                    _%args195987%_)))
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
                             _%self195969%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor196009%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj196011%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp198376 _%stx195964%_))))
               _%$e196006%_)
              (let ((_%$e196016%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass195992%_
                        '10
                        '#f
                        '#f))))
                (if _%$e196016%_
                    ((lambda (_%metaclass196019%_)
                       (let* ((_%$obj196021%_
                               (let ((__tmp198379
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198379)))
                              (_%metakons196023%_
                               (let ((__tmp198380
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx195964%_
                                         _%metaclass196019%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp198380
                                  'instance-init!)))
                              (__tmp198381
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj196021%_
                                                             '())
                                                       (cons _%inline-make-object195989%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons196023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp198382
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons196023%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self195969%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args195987%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp198382
                            _%stx195964%_
                            _%ctx195963%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195969%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj196021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args195987%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj196021%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp198381 _%stx195964%_)))
                     _%$e196016%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195992%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp198383
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args195987%_))))
                              (declare (not safe))
                              (##fx= __tmp198383 _%fields195981%_))
                            (let ((__tmp198384
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self195969%_
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
                                              _%self195969%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args195987%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp198384
                               _%stx195964%_))
                            (let ((__tmp198386
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self195969%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp198385
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195992%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx195964%_
                               __tmp198386
                               __tmp198385)))
                        (let ((_%$obj196028%_
                               (let ((__tmp198387
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198387))))
                          (let _%lp196030%_ ((_%rest196032%_ _%args195987%_)
                                             (_%initializers196033%_ '()))
                            (let* ((_%__stx197857197858%_ _%rest196032%_)
                                   (_%g196037196058%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx197857197858%_)))))
                              (let ((_%__kont197859197860%_
                                     (lambda (_%L196112%_
                                              _%L196113%_
                                              _%L196114%_)
                                       (let* ((_%slot196141%_
                                               (let ((__tmp198388
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L196114%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp198388)))
                                              (_%off196143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass195992%_
                                                  _%slot196141%_))))
                                         (if _%off196143%_
                                             (_%lp196030%_
                                              _%L196112%_
                                              (cons (cons _%off196143%_
                                                          _%L196113%_)
                                                    _%initializers196033%_))
                                             (let ((__tmp198389
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195969%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx195964%_
                                                __tmp198389
                                                _%slot196141%_))))))
                                    (_%__kont197861197862%_
                                     (lambda ()
                                       (let ((__tmp198390
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195989%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp198393
                                     (cons (cons '%#ref
                                                 (cons _%$obj196028%_ '()))
                                           '()))
                                    (__tmp198391
                                     (let ((__tmp198392
                                            (lambda (_%i196072%_ _%r196073%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195969%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i196072%_) '()))
                              (cons (cons '%#ref (cons _%$obj196028%_ '()))
                                    (cons (cdr _%i196072%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r196073%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp198392
                                        '()
                                        _%initializers196033%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp198393 __tmp198391)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198390
                                          _%stx195964%_))))
                                    (_%__kont197863197864%_
                                     (lambda ()
                                       (let ((__tmp198394
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195989%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj196028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args195987%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj196028%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198394
                                          _%stx195964%_)))))
                                (let* ((_%g196035196075%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx197857197858%_))
                                              (_%__kont197861197862%_)
                                              (_%__kont197863197864%_))))
                                       (_%__match197894197895%_
                                        (lambda (_%e196042196080%_
                                                 _%hd196043196083%_
                                                 _%tl196044196085%_
                                                 _%e196045196088%_
                                                 _%hd196046196091%_
                                                 _%tl196047196093%_
                                                 _%e196048196096%_
                                                 _%hd196049196099%_
                                                 _%tl196050196101%_
                                                 _%e196051196104%_
                                                 _%hd196052196107%_
                                                 _%tl196053196109%_)
                                          (let ((_%L196112%_
                                                 _%tl196053196109%_)
                                                (_%L196113%_
                                                 _%hd196052196107%_)
                                                (_%L196114%_
                                                 _%hd196049196099%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L196114%_))
                                                (_%__kont197859197860%_
                                                 _%L196112%_
                                                 _%L196113%_
                                                 _%L196114%_)
                                                (_%__kont197863197864%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx197857197858%_))
                                      (let ((_%e196042196080%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx197857197858%_))))
                                        (let ((_%tl196044196085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196042196080%_)))
                                              (_%hd196043196083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196042196080%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd196043196083%_))
                                              (let ((_%e196045196088%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd196043196083%_))))
                                                (let ((_%tl196047196093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196045196088%_)))
                                                      (_%hd196046196091%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196045196088%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd196046196091%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd196046196091%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196047196093%_))
                      (let ((_%e196048196096%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196047196093%_))))
                        (let ((_%tl196050196101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196048196096%_)))
                              (_%hd196049196099%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196048196096%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196050196101%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196044196085%_))
                                  (let ((_%e196051196104%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196044196085%_))))
                                    (let ((_%tl196053196109%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196051196104%_)))
                                          (_%hd196052196107%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196051196104%_))))
                                      (_%__match197894197895%_
                                       _%e196042196080%_
                                       _%hd196043196083%_
                                       _%tl196044196085%_
                                       _%e196045196088%_
                                       _%hd196046196091%_
                                       _%tl196047196093%_
                                       _%e196048196096%_
                                       _%hd196049196099%_
                                       _%tl196050196101%_
                                       _%e196051196104%_
                                       _%hd196052196107%_
                                       _%tl196053196109%_)))
                                  (_%__kont197863197864%_))
                              (_%__kont197863197864%_))))
                      (_%__kont197863197864%_))
                  (_%__kont197863197864%_))
              (_%__kont197863197864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont197863197864%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196035196075%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self193585195742%_ _%ctx195744%_ _%stx195745%_ _%args195746%_)
        (let* ((_%self195748%_ _%self193585195742%_)
               (_%self195750%_ _%self195748%_)
               (_%arguments-ok?195760%_
                (let ((__method198338
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195750%_ 'check-arguments))))
                  (if __method198338
                      (let ()
                        (declare (not safe))
                        (__method198338
                         _%self195750%_
                         _%ctx195744%_
                         _%stx195745%_
                         _%args195746%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195750%_
                                 'check-arguments))
                        '#!void))))
               (_%g195762195772%_
                (lambda (_%g195763195769%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195763195769%_))))
               (_%g195761195836%_
                (lambda (_%g195763195775%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195763195775%_))
                      (let ((_%e195765195777%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195763195775%_))))
                        (let ((_%hd195766195780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195765195777%_)))
                              (_%tl195767195782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195765195777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195767195782%_))
                              ((lambda (_%L195785%_)
                                 (let* ((_%klass195798%_
                                         (let ((__tmp198395
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195750%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195745%_
                                            __tmp198395)))
                                        (_%field195800%_
                                         (let ((__tmp198396
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195750%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass195798%_
                                            __tmp198396)))
                                        (_%object195802%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195744%_
                                            _%L195785%_)))
                                        (_%klass195805%_ _%klass195798%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass195805%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp198397
                                              (cons (if (or _%arguments-ok?195760%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195750%_
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
                                 _%self195750%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field195800%_ '()))
                        (cons _%object195802%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198397
                                          _%stx195745%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195805%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp198398
                                                  (cons (if (or _%arguments-ok?195760%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195750%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195750%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195800%_ '()))
                            (cons _%object195802%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198398
                                              _%stx195745%_))
                                           (let ((_%$e195824%_
                                                  (let ((__tmp198399
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195750%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass195805%_
                                                     __tmp198399))))
                                             (if _%$e195824%_
                                                 ((lambda (_%klass195827%_)
                                                    (let ((__tmp198400
                                                           (cons (if (or _%arguments-ok?195760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195750%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self195750%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field195800%_ '()))
                                     (cons _%object195802%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp198400 _%stx195745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e195824%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self195750%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp198401
                                                            (let ((_%$obj195833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp198402
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198402))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj195833%_ '())
                                              (cons _%object195802%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass195805%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj195833%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195750%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195800%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195833%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?195760%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195833%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195750%_
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
                                                             _%self195750%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj195833%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self195750%_
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
               (gxc#xform-wrap-source __tmp198401 _%stx195745%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp198403
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object195802%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195750%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp198403 _%stx195745%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd195766195780%_)
                              (_%g195762195772%_ _%g195763195775%_))))
                      (_%g195762195772%_ _%g195763195775%_)))))
          (_%g195761195836%_ _%args195746%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass197625 __method-table197626)
        (let ((__check-arguments197627
               (let ((__tmp198404
                      (lambda ()
                        (let ((__method197628
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197626
                                  'check-arguments
                                  '#f))))
                          (if __method197628
                              __method197628
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198404)))
              (__slot197629
               (let ((__slot197630
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass197625 'slot))))
                 (if __slot197630
                     __slot197630
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self193585195742%_
                   _%ctx195744%_
                   _%stx195745%_
                   _%args195746%_)
            (let* ((_%self195748%_ _%self193585195742%_)
                   (_%self195750%_ _%self195748%_)
                   (_%arguments-ok?195760%_
                    ((force __check-arguments197627)
                     _%self195750%_
                     _%ctx195744%_
                     _%stx195745%_
                     _%args195746%_))
                   (_%g195762195772%_
                    (lambda (_%g195763195769%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195763195769%_))))
                   (_%g195761195836%_
                    (lambda (_%g195763195775%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195763195775%_))
                          (let ((_%e195765195777%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195763195775%_))))
                            (let ((_%hd195766195780%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195765195777%_)))
                                  (_%tl195767195782%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195765195777%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195767195782%_))
                                  ((lambda (_%L195785%_)
                                     (let* ((_%klass195798%_
                                             (let ((__tmp198405
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195750%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx195745%_
                                                __tmp198405)))
                                            (_%field195800%_
                                             (let ((__tmp198406
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195750%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass195798%_
                                                __tmp198406)))
                                            (_%object195802%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx195744%_
                                                _%L195785%_)))
                                            (_%klass195805%_ _%klass195798%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195805%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198407
                                                  (cons (if (or _%arguments-ok?195760%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195750%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195750%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195800%_ '()))
                            (cons _%object195802%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198407
                                              _%stx195745%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195805%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198408
                                                      (cons (if (or _%arguments-ok?195760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195750%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195750%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195800%_ '()))
                                (cons _%object195802%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198408
                                                  _%stx195745%_))
                                               (let ((_%$e195824%_
                                                      (let ((__tmp198409
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self195750%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass195805%_ __tmp198409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e195824%_
                                                     ((lambda (_%klass195827%_)
                                                        (let ((__tmp198410
                                                               (cons (if (or _%arguments-ok?195760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195750%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self195750%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field195800%_ '()))
                                         (cons _%object195802%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp198410 _%stx195745%_)))
              _%$e195824%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195750%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp198411
                                                                (let ((_%$obj195833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp198412
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198412))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj195833%_ '())
                                                  (cons _%object195802%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass195805%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj195833%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195750%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195800%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195833%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?195760%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195833%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195750%_
                               __slot197629
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
                        (##unchecked-structure-ref _%self195750%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj195833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195750%_
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
                   (gxc#xform-wrap-source __tmp198411 _%stx195745%_))
                 (let ((__tmp198413
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object195802%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195750%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp198413 _%stx195745%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd195766195780%_)
                                  (_%g195762195772%_ _%g195763195775%_))))
                          (_%g195762195772%_ _%g195763195775%_)))))
              (_%g195761195836%_ _%args195746%_))))))
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
      (lambda (_%self193586195504%_ _%ctx195506%_ _%stx195507%_ _%args195508%_)
        (let* ((_%self195510%_ _%self193586195504%_)
               (_%self195512%_ _%self195510%_)
               (_%arguments-ok?195522%_
                (let ((__method198339
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195512%_ 'check-arguments))))
                  (if __method198339
                      (let ()
                        (declare (not safe))
                        (__method198339
                         _%self195512%_
                         _%ctx195506%_
                         _%stx195507%_
                         _%args195508%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195512%_
                                 'check-arguments))
                        '#!void))))
               (_%g195524195538%_
                (lambda (_%g195525195535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195525195535%_))))
               (_%g195523195617%_
                (lambda (_%g195525195541%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195525195541%_))
                      (let ((_%e195528195543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195525195541%_))))
                        (let ((_%hd195529195546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195528195543%_)))
                              (_%tl195530195548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195528195543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195530195548%_))
                              (let ((_%e195531195551%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195530195548%_))))
                                (let ((_%hd195532195554%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195531195551%_)))
                                      (_%tl195533195556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195531195551%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195533195556%_))
                                      ((lambda (_%L195559%_ _%L195560%_)
                                         (let* ((_%klass195576%_
                                                 (let ((__tmp198414
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195512%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx195507%_
                                                    __tmp198414)))
                                                (_%field195578%_
                                                 (let ((__tmp198415
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195512%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass195576%_
                                                    __tmp198415)))
                                                (_%object195580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195506%_
                                                    _%L195560%_)))
                                                (_%value195582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195506%_
                                                    _%L195559%_)))
                                                (_%klass195585%_
                                                 _%klass195576%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195585%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198416
                                                      (cons (if (or _%arguments-ok?195522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195512%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195512%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195578%_ '()))
                                (cons _%object195580%_
                                      (cons _%value195582%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198416
                                                  _%stx195507%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195585%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198417
                                                          (cons (if (or _%arguments-ok?195522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195512%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195512%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195578%_ '()))
                                    (cons _%object195580%_
                                          (cons _%value195582%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198417
                                                      _%stx195507%_))
                                                   (let ((_%$e195605%_
                                                          (let ((__tmp198418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195512%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass195585%_
                     __tmp198418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e195605%_
                                                         ((lambda (_%klass195608%_)
                                                            (let ((__tmp198419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?195522%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195512%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self195512%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field195578%_ '()))
                                             (cons _%object195580%_
                                                   (cons _%value195582%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198419 _%stx195507%_)))
                  _%$e195605%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self195512%_ '4 '#f '#f))
                     (let ((__tmp198420
                            (let ((_%$obj195614%_
                                   (let ((__tmp198421
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp198421))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj195614%_ '())
                                                      (cons _%object195580%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass195585%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj195614%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195512%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field195578%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195614%_
                                                              '()))
                                                  (cons _%value195582%_
                                                        '())))))
                          (cons (if _%arguments-ok?195522%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self195512%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value195582%_ '())))))
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
                             _%self195512%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj195614%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195512%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value195582%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp198420 _%stx195507%_))
                     (let ((__tmp198422
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object195580%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195512%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value195582%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp198422
                        _%stx195507%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195532195554%_
                                       _%hd195529195546%_)
                                      (_%g195524195538%_ _%g195525195541%_))))
                              (_%g195524195538%_ _%g195525195541%_))))
                      (_%g195524195538%_ _%g195525195541%_)))))
          (_%g195523195617%_ _%args195508%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass197631 __method-table197632)
        (let ((__check-arguments197633
               (let ((__tmp198423
                      (lambda ()
                        (let ((__method197634
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197632
                                  'check-arguments
                                  '#f))))
                          (if __method197634
                              __method197634
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198423))))
          (lambda (_%self193586195504%_
                   _%ctx195506%_
                   _%stx195507%_
                   _%args195508%_)
            (let* ((_%self195510%_ _%self193586195504%_)
                   (_%self195512%_ _%self195510%_)
                   (_%arguments-ok?195522%_
                    ((force __check-arguments197633)
                     _%self195512%_
                     _%ctx195506%_
                     _%stx195507%_
                     _%args195508%_))
                   (_%g195524195538%_
                    (lambda (_%g195525195535%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195525195535%_))))
                   (_%g195523195617%_
                    (lambda (_%g195525195541%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195525195541%_))
                          (let ((_%e195528195543%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195525195541%_))))
                            (let ((_%hd195529195546%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195528195543%_)))
                                  (_%tl195530195548%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195528195543%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195530195548%_))
                                  (let ((_%e195531195551%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195530195548%_))))
                                    (let ((_%hd195532195554%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195531195551%_)))
                                          (_%tl195533195556%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195531195551%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195533195556%_))
                                          ((lambda (_%L195559%_ _%L195560%_)
                                             (let* ((_%klass195576%_
                                                     (let ((__tmp198424
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195512%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx195507%_
                                                        __tmp198424)))
                                                    (_%field195578%_
                                                     (let ((__tmp198425
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195512%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass195576%_
                                                        __tmp198425)))
                                                    (_%object195580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195506%_
                                                        _%L195560%_)))
                                                    (_%value195582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195506%_
                                                        _%L195559%_)))
                                                    (_%klass195585%_
                                                     _%klass195576%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195585%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198426
                                                          (cons (if (or _%arguments-ok?195522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195512%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195512%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195578%_ '()))
                                    (cons _%object195580%_
                                          (cons _%value195582%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198426
                                                      _%stx195507%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass195585%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp198427
                                                              (cons (if (or _%arguments-ok?195522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self195512%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195512%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195578%_ '()))
                                        (cons _%object195580%_
                                              (cons _%value195582%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp198427 _%stx195507%_))
               (let ((_%$e195605%_
                      (let ((__tmp198428
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195512%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass195585%_
                         __tmp198428))))
                 (if _%$e195605%_
                     ((lambda (_%klass195608%_)
                        (let ((__tmp198429
                               (cons (if (or _%arguments-ok?195522%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195512%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195512%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field195578%_
                                                             '()))
                                                 (cons _%object195580%_
                                                       (cons _%value195582%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp198429 _%stx195507%_)))
                      _%$e195605%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195512%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp198430
                                (let ((_%$obj195614%_
                                       (let ((__tmp198431
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp198431))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj195614%_
                                                                '())
                                                          (cons _%object195580%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass195585%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195614%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self195512%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field195578%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value195582%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?195522%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj195614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195512%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value195582%_ '())))))
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
                                 _%self195512%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj195614%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195512%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value195582%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198430 _%stx195507%_))
                         (let ((__tmp198432
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object195580%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195512%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value195582%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp198432
                            _%stx195507%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd195532195554%_
                                           _%hd195529195546%_)
                                          (_%g195524195538%_
                                           _%g195525195541%_))))
                                  (_%g195524195538%_ _%g195525195541%_))))
                          (_%g195524195538%_ _%g195525195541%_)))))
              (_%g195523195617%_ _%args195508%_))))))
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
      (lambda (_%self193587195317%_ _%ctx195319%_ _%stx195320%_ _%args195321%_)
        (let* ((_%self195323%_ _%self193587195317%_)
               (_%self195325%_ _%self195323%_)
               (_%self195334195344%_ _%self195325%_)
               (_%E195336195348%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195334195344%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K195337195358%_
                (lambda (_%inline195351%_ _%dispatch195352%_ _%arity195353%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self195325%_
                         _%args195321%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx195320%_
                         _%arity195353%_)))
                  (if _%inline195351%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp198433 (_%inline195351%_ _%stx195320%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp198433
                           _%stx195320%_
                           _%ctx195319%_)))
                      (if (and _%dispatch195352%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch195352%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch195352%_))
                            (let ((__tmp198434
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch195352%_
                                                           '()))
                                               _%args195321%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp198434
                               _%stx195320%_
                               _%ctx195319%_)))
                          (gxc#!procedure::optimize-call
                           _%self195325%_
                           _%ctx195319%_
                           _%stx195320%_
                           _%args195321%_)))))
               (_%e195338195361%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195334195344%_ '1 '#f '#f)))
               (_%e195339195364%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195334195344%_ '2 '#f '#f)))
               (_%e195340195367%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195334195344%_ '3 '#f '#f)))
               (_%arity195370%_ _%e195340195367%_)
               (_%e195341195372%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195334195344%_ '4 '#f '#f)))
               (_%dispatch195375%_ _%e195341195372%_)
               (_%e195342195377%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195334195344%_ '5 '#f '#f)))
               (_%inline195380%_ _%e195342195377%_))
          (_%K195337195358%_
           _%inline195380%_
           _%dispatch195375%_
           _%arity195370%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self193588195167%_ _%ctx195169%_ _%stx195170%_ _%args195171%_)
        (let* ((_%self195173%_ _%self193588195167%_)
               (_%self195175%_ _%self195173%_)
               (_%$e195189%_
                (let ((__tmp198436
                       (lambda (_%g195184195186%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g195184195186%_
                            _%args195171%_))))
                      (__tmp198435
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195175%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp198436 __tmp198435))))
          (if _%$e195189%_
              ((lambda (_%clause195192%_)
                 (let ((__method198340
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause195192%_ 'optimize-call))))
                   (if __method198340
                       (let ()
                         (declare (not safe))
                         (__method198340
                          _%clause195192%_
                          _%ctx195169%_
                          _%stx195170%_
                          _%args195171%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause195192%_
                                  'optimize-call))
                         '#!void))))
               _%$e195189%_)
              (let ((__tmp198437
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self195175%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx195170%_
                 __tmp198437))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self193589194905%_ _%ctx194907%_ _%stx194908%_ _%args194909%_)
        (let* ((_%self194911%_ _%self193589194905%_)
               (_%self194913%_ _%self194911%_)
               (_%self194922194931%_ _%self194913%_)
               (_%E194924194935%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194922194931%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K194925195026%_
                (lambda (_%dispatch194938%_ _%table194939%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch194938%_))
                      (let* ((_%g194940194950%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch194938%_)))
                             (_%else194942194958%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch194938%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx194907%_
                                   _%stx194908%_))))
                             (_%K194944195007%_
                              (lambda (_%main194961%_ _%keys194962%_)
                                (let ((_g198438_
                                       (gxc#!kw-lambda-split-args
                                        _%stx194908%_
                                        _%args194909%_)))
                                  (begin
                                    (let ((_g198439_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198438_)
                                                 (##values-length _g198438_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198439_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198439_)))
                                    (let ((_%pargs194964%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198438_ 0)))
                                          (_%kwargs194965%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198438_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main194961%_))
                                        (if _%table194939%_
                                            (let ((_%xargs194973%_
                                                   (map (lambda (_%key194967%_)
                                                          (let ((_%$e194969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key194967%_ _%kwargs194965%_))))
                    (if _%$e194969%_ _%$e194969%_ '(%#ref absent-value))))
                _%keys194962%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw194975%_)
                                                 (if (memq (car _%kw194975%_)
                                                           _%keys194962%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx194908%_
                                                        _%keys194962%_
                                                        _%kw194975%_))))
                                               _%kwargs194965%_)
                                              (let ((__tmp198440
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main194961%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs194964%_
                                  _%xargs194973%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp198440
                                                 _%stx194908%_
                                                 _%ctx194907%_)))
                                            (let* ((_%kwt194977%_
                                                    (let ((__tmp198441
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp198441)))
                                                   (_%kwvars194981%_
                                                    (map (lambda (_%_194979%_)
                                                           (let ((__tmp198442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp198442)))
                 _%kwargs194965%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind194986%_
                                                    (map (lambda (_%kw194983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194984%_)
                   (cons (cons _%kwvar194984%_ '())
                         (cons (cdr _%kw194983%_) '())))
                 _%kwargs194965%_
                 _%kwvars194981%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset194991%_
                                                    (map (lambda (_%kw194988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194989%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt194977%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw194988%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar194989%_
                                                             '()))
                                                 '()))))))
                 _%kwargs194965%_
                 _%kwvars194981%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs194996%_
                                                    (map (lambda (_%kw194993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194994%_)
                   (cons (car _%kw194993%_)
                         (cons '%#ref (cons _%kwvar194994%_ '()))))
                 _%kwargs194965%_
                 _%kwvars194981%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs195004%_
                                                    (map (lambda (_%key194998%_)
                                                           (let ((_%$e195000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key194998%_ _%xkwargs194996%_))))
                     (if _%$e195000%_ _%$e195000%_ '(%#ref absent-value))))
                 _%keys194962%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198443
                                                    (cons '%#let-values
                                                          (cons _%kwbind194986%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt194977%_ '())
                                                      (cons (let ((__tmp198444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs194965%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198444 _%stx194908%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp198445
                                                             (cons (let ((__tmp198446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main194961%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt194977%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs194964%_
                                                       _%xargs195004%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp198446 _%stx194908%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp198445 _%kwset194991%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp198443
                                               _%stx194908%_
                                               _%ctx194907%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g194940194950%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e194945195010%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194940194950%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e194946195013%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194940194950%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e194947195016%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194940194950%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys195019%_ _%e194947195016%_)
                                   (_%e194948195021%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194940194950%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main195024%_ _%e194948195021%_))
                              (_%K194944195007%_
                               _%main195024%_
                               _%keys195019%_))
                            (_%else194942194958%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx194907%_ _%stx194908%_)))))
               (_%e194926195029%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194922194931%_ '1 '#f '#f)))
               (_%e194927195032%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194922194931%_ '2 '#f '#f)))
               (_%e194928195035%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194922194931%_ '3 '#f '#f)))
               (_%table195038%_ _%e194928195035%_)
               (_%e194929195040%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194922194931%_ '4 '#f '#f)))
               (_%dispatch195043%_ _%e194929195040%_))
          (_%K194925195026%_ _%dispatch195043%_ _%table195038%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx194518%_ _%args194519%_)
        (let _%lp194521%_ ((_%rest194523%_ _%args194519%_)
                           (_%pargs194524%_ '())
                           (_%kwargs194525%_ '()))
          (let* ((_%__stx197899197900%_ _%rest194523%_)
                 (_%g194531194583%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx197899197900%_)))))
            (let ((_%__kont197901197902%_
                   (lambda (_%L194762%_ _%L194763%_)
                     (_%lp194521%_
                      _%L194762%_
                      (cons _%L194763%_ _%pargs194524%_)
                      _%kwargs194525%_)))
                  (_%__kont197903197904%_
                   (lambda (_%L194708%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L194708%_ _%pargs194524%_))
                             (reverse _%kwargs194525%_))))
                  (_%__kont197905197906%_
                   (lambda (_%L194655%_ _%L194656%_ _%L194657%_)
                     (let ((_%kw194674%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L194657%_))))
                       (if (assq _%kw194674%_ _%kwargs194525%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx194518%_
                              _%kw194674%_))
                           (_%lp194521%_
                            _%L194655%_
                            _%pargs194524%_
                            (cons (cons _%kw194674%_ _%L194656%_)
                                  _%kwargs194525%_))))))
                  (_%__kont197907197908%_
                   (lambda (_%L194603%_ _%L194604%_)
                     (_%lp194521%_
                      _%L194603%_
                      (cons _%L194604%_ _%pargs194524%_)
                      _%kwargs194525%_)))
                  (_%__kont197909197910%_
                   (lambda ()
                     (values (reverse _%pargs194524%_)
                             (reverse _%kwargs194525%_)))))
              (let ((_%__match198006198007%_
                     (lambda (_%e194562194623%_
                              _%hd194563194626%_
                              _%tl194564194628%_
                              _%e194565194631%_
                              _%hd194566194634%_
                              _%tl194567194636%_
                              _%e194568194639%_
                              _%hd194569194642%_
                              _%tl194570194644%_
                              _%e194571194647%_
                              _%hd194572194650%_
                              _%tl194573194652%_)
                       (let ((_%L194655%_ _%tl194573194652%_)
                             (_%L194656%_ _%hd194572194650%_)
                             (_%L194657%_ _%hd194569194642%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L194657%_))
                             (_%__kont197905197906%_
                              _%L194655%_
                              _%L194656%_
                              _%L194657%_)
                             (_%__kont197907197908%_
                              _%tl194564194628%_
                              _%hd194563194626%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx197899197900%_))
                    (let ((_%e194535194727%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx197899197900%_))))
                      (let ((_%tl194537194732%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194535194727%_)))
                            (_%hd194536194730%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194535194727%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd194536194730%_))
                            (let ((_%e194538194735%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd194536194730%_))))
                              (let ((_%tl194540194740%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194538194735%_)))
                                    (_%hd194539194738%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194538194735%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd194539194738%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd194539194738%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194540194740%_))
                                            (let ((_%e194541194743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194540194740%_))))
                                              (let ((_%tl194543194748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194541194743%_)))
                                                    (_%hd194542194746%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194541194743%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd194542194746%_))
                                                    (let ((_%e194544194751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd194542194746%_))))
                                                      (if (equal? _%e194544194751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194543194748%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194537194732%_))
                          (let ((_%e194545194754%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194537194732%_))))
                            (let ((_%tl194547194759%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194545194754%_)))
                                  (_%hd194546194757%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194545194754%_))))
                              (_%__kont197901197902%_
                               _%tl194547194759%_
                               _%hd194546194757%_)))
                          (_%__kont197907197908%_
                           _%tl194537194732%_
                           _%hd194536194730%_))
                      (_%__kont197907197908%_
                       _%tl194537194732%_
                       _%hd194536194730%_))
                  (if (equal? _%e194544194751%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194543194748%_))
                          (_%__kont197903197904%_ _%tl194537194732%_)
                          (_%__kont197907197908%_
                           _%tl194537194732%_
                           _%hd194536194730%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194543194748%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194537194732%_))
                              (let ((_%e194571194647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194537194732%_))))
                                (let ((_%tl194573194652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194571194647%_)))
                                      (_%hd194572194650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194571194647%_))))
                                  (_%__match198006198007%_
                                   _%e194535194727%_
                                   _%hd194536194730%_
                                   _%tl194537194732%_
                                   _%e194538194735%_
                                   _%hd194539194738%_
                                   _%tl194540194740%_
                                   _%e194541194743%_
                                   _%hd194542194746%_
                                   _%tl194543194748%_
                                   _%e194571194647%_
                                   _%hd194572194650%_
                                   _%tl194573194652%_)))
                              (_%__kont197907197908%_
                               _%tl194537194732%_
                               _%hd194536194730%_))
                          (_%__kont197907197908%_
                           _%tl194537194732%_
                           _%hd194536194730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194543194748%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl194537194732%_))
                                                            (let ((_%e194571194647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194537194732%_))))
                      (let ((_%tl194573194652%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194571194647%_)))
                            (_%hd194572194650%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194571194647%_))))
                        (_%__match198006198007%_
                         _%e194535194727%_
                         _%hd194536194730%_
                         _%tl194537194732%_
                         _%e194538194735%_
                         _%hd194539194738%_
                         _%tl194540194740%_
                         _%e194541194743%_
                         _%hd194542194746%_
                         _%tl194543194748%_
                         _%e194571194647%_
                         _%hd194572194650%_
                         _%tl194573194652%_)))
                    (_%__kont197907197908%_
                     _%tl194537194732%_
                     _%hd194536194730%_))
                (_%__kont197907197908%_
                 _%tl194537194732%_
                 _%hd194536194730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont197907197908%_
                                             _%tl194537194732%_
                                             _%hd194536194730%_))
                                        (_%__kont197907197908%_
                                         _%tl194537194732%_
                                         _%hd194536194730%_))
                                    (_%__kont197907197908%_
                                     _%tl194537194732%_
                                     _%hd194536194730%_))))
                            (_%__kont197907197908%_
                             _%tl194537194732%_
                             _%hd194536194730%_))))
                    (_%__kont197909197910%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self193590194500%_ _%ctx194502%_ _%stx194503%_ _%args194504%_)
        (let* ((_%self194506%_ _%self193590194500%_)
               (_%self194508%_ _%self194506%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx194502%_ _%stx194503%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self194188%_ _%stx194189%_)
        (let* ((_%__stx198015198016%_ _%stx194189%_)
               (_%g194192194232%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198015198016%_)))))
          (let ((_%__kont198017198018%_
                 (lambda (_%L194338%_ _%L194339%_)
                   (let ((_%$e194366%_
                          (member 'return:
                                  (let ((__tmp198447
                                         (lambda (_%g194358194361%_
                                                  _%g194359194363%_)
                                           (cons _%g194358194361%_
                                                 _%g194359194363%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp198447 '() _%L194339%_))
                                  gx#stx-eq?)))
                     (if _%$e194366%_
                         ((lambda (_%tail194369%_)
                            (let ((_%type194371%_
                                   (let ((__tmp198448
                                          (let ((__tmp198449
                                                 (cadr _%tail194369%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp198449))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx194189%_
                                      __tmp198448))))
                              (gxc#check-return-type!
                               _%stx194189%_
                               _%L194338%_
                               _%type194371%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self194188%_
                                 _%L194338%_))))
                          _%$e194366%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self194188%_ _%L194338%_))))))
                (_%__kont198021198022%_
                 (lambda (_%L194261%_ _%L194262%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self194188%_ _%L194261%_)))))
            (let ((_%__match198052198053%_
                   (lambda (_%e194196194282%_
                            _%hd194197194285%_
                            _%tl194198194287%_
                            _%e194199194290%_
                            _%hd194200194293%_
                            _%tl194201194295%_
                            _%e194202194298%_
                            _%hd194203194301%_
                            _%tl194204194303%_
                            _%__splice198019198020%_
                            _%target194205194306%_
                            _%tl194207194308%_)
                     (letrec ((_%loop194208194311%_
                               (lambda (_%hd194206194314%_
                                        _%signature194212194316%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd194206194314%_))
                                     (let ((_%e194209194319%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd194206194314%_))))
                                       (let ((_%lp-tl194211194324%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e194209194319%_)))
                                             (_%lp-hd194210194322%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e194209194319%_))))
                                         (_%loop194208194311%_
                                          _%lp-tl194211194324%_
                                          (cons _%lp-hd194210194322%_
                                                _%signature194212194316%_))))
                                     (let ((_%signature194213194327%_
                                            (reverse _%signature194212194316%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl194201194295%_))
                                           (let ((_%e194214194330%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl194201194295%_))))
                                             (let ((_%tl194216194335%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e194214194330%_)))
                                                   (_%hd194215194333%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e194214194330%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl194216194335%_))
                                                   (_%__kont198017198018%_
                                                    _%hd194215194333%_
                                                    _%signature194213194327%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g194192194232%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g194192194232%_))))))))
                       (_%loop194208194311%_ _%target194205194306%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198015198016%_))
                  (let ((_%e194196194282%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198015198016%_))))
                    (let ((_%tl194198194287%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194196194282%_)))
                          (_%hd194197194285%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194196194282%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194198194287%_))
                          (let ((_%e194199194290%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194198194287%_))))
                            (let ((_%tl194201194295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194199194290%_)))
                                  (_%hd194200194293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194199194290%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194200194293%_))
                                  (let ((_%e194202194298%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194200194293%_))))
                                    (let ((_%tl194204194303%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194202194298%_)))
                                          (_%hd194203194301%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194202194298%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194203194301%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd194203194301%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194204194303%_))
                                                  (let ((_%__splice198019198020%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194204194303%_
                                                            '0))))
                                                    (let ((_%tl194207194308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198019198020%_
                                                              '1)))
                                                          (_%target194205194306%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198019198020%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194207194308%_))
                                                          (_%__match198052198053%_
                                                           _%e194196194282%_
                                                           _%hd194197194285%_
                                                           _%tl194198194287%_
                                                           _%e194199194290%_
                                                           _%hd194200194293%_
                                                           _%tl194201194295%_
                                                           _%e194202194298%_
                                                           _%hd194203194301%_
                                                           _%tl194204194303%_
                                                           _%__splice198019198020%_
                                                           _%target194205194306%_
                                                           _%tl194207194308%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194201194295%_))
                      (let ((_%e194225194253%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194201194295%_))))
                        (let ((_%tl194227194258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194225194253%_)))
                              (_%hd194226194256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194225194253%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194227194258%_))
                              (_%__kont198021198022%_
                               _%hd194226194256%_
                               _%hd194200194293%_)
                              (let ()
                                (declare (not safe))
                                (_%g194192194232%_)))))
                      (let () (declare (not safe)) (_%g194192194232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194201194295%_))
                                                      (let ((_%e194225194253%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194201194295%_))))
                (let ((_%tl194227194258%_
                       (let () (declare (not safe)) (##cdr _%e194225194253%_)))
                      (_%hd194226194256%_
                       (let ()
                         (declare (not safe))
                         (##car _%e194225194253%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194227194258%_))
                      (_%__kont198021198022%_
                       _%hd194226194256%_
                       _%hd194200194293%_)
                      (let () (declare (not safe)) (_%g194192194232%_)))))
              (let () (declare (not safe)) (_%g194192194232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194201194295%_))
                                                  (let ((_%e194225194253%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194201194295%_))))
                                                    (let ((_%tl194227194258%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194225194253%_)))
                                                          (_%hd194226194256%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194225194253%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194227194258%_))
                                                          (_%__kont198021198022%_
                                                           _%hd194226194256%_
                                                           _%hd194200194293%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194192194232%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194192194232%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194201194295%_))
                                              (let ((_%e194225194253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194201194295%_))))
                                                (let ((_%tl194227194258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194225194253%_)))
                                                      (_%hd194226194256%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194225194253%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194227194258%_))
                                                      (_%__kont198021198022%_
                                                       _%hd194226194256%_
                                                       _%hd194200194293%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194192194232%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194192194232%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194201194295%_))
                                      (let ((_%e194225194253%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194201194295%_))))
                                        (let ((_%tl194227194258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194225194253%_)))
                                              (_%hd194226194256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194225194253%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194227194258%_))
                                              (_%__kont198021198022%_
                                               _%hd194226194256%_
                                               _%hd194200194293%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194192194232%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194192194232%_))))))
                          (let () (declare (not safe)) (_%g194192194232%_)))))
                  (let () (declare (not safe)) (_%g194192194232%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx194166%_ _%expr194167%_ _%type194168%_)
        (let ((_%$e194170%_ (not _%type194168%_)))
          (if _%$e194170%_
              _%$e194170%_
              (let ((_%$e194173%_
                     (eq? (##structure-ref _%type194168%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e194173%_
                    _%$e194173%_
                    (let ((_%expr-type194177%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr194167%_))))
                      (if (not _%expr-type194177%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx194166%_
                             _%type194168%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type194177%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx194166%_
                                 _%type194168%_
                                 _%expr-type194177%_))
                              (let ((_%$e194181%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type194177%_
                                        'gxc#!abort::t))))
                                (if _%$e194181%_
                                    _%$e194181%_
                                    (let ((_%$e194184%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type194177%_
                                              _%type194168%_))))
                                      (if _%$e194184%_
                                          _%$e194184%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx194166%_
                                             _%type194168%_
                                             _%expr-type194177%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self193592%_ _%stx193593%_)
        (let* ((_%__stx198097198098%_ _%stx193593%_)
               (_%g193598193708%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198097198098%_)))))
          (let ((_%__kont198099198100%_
                 (lambda (_%L194140%_ _%L194141%_ _%L194142%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L194142%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193592%_ _%L194141%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193592%_ _%L194140%_)))))
                (_%__kont198101198102%_
                 (lambda (_%L193966%_ _%L193967%_ _%L193968%_ _%L193969%_)
                   (let ((_%$e194001%_
                          (let ((__tmp198450
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193969%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp198450))))
                     (if _%$e194001%_
                         ((lambda (_%pred-type194004%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194004%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194004%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test194009%_
                                        (let ((__tmp198451
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L193969%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L193968%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp198451
                                           _%stx193593%_
                                           _%self193592%_)))
                                       (_%K194013%_
                                        (let ((__tmp198452
                                               (lambda ()
                                                 (let ((__tmp198455
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self193592%_
                                                             _%L193967%_))))
                                                       (__tmp198453
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L193968%_))
                            (let ((__tmp198454
                                   (##structure-ref
                                    _%pred-type194004%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx193593%_
                               __tmp198454)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp198455
                                                    gxc#current-compile-path-type
                                                    __tmp198453)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198452)))
                                       (_%E194016%_
                                        (let ((__tmp198456
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self193592%_
                                                    _%L193966%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198456)))
                                       (_%__stx198075198076%_ _%test194009%_)
                                       (_%g194020194034%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx198075198076%_)))))
                                  (let ((_%__kont198077198078%_
                                         (lambda (_%L194062%_ _%L194063%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L194062%_))
                                               (force _%K194013%_)
                                               (force _%E194016%_))))
                                        (_%__kont198079198080%_
                                         (lambda ()
                                           (let ((__tmp198457
                                                  (cons '%#if
                                                        (cons _%test194009%_
                                                              (cons (force _%K194013%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E194016%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198457
                                              _%stx193593%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx198075198076%_))
                                        (let ((_%e194024194046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx198075198076%_))))
                                          (let ((_%tl194026194051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194024194046%_)))
                                                (_%hd194025194049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194024194046%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194026194051%_))
                                                (let ((_%e194027194054%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194026194051%_))))
                                                  (let ((_%tl194029194059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194027194054%_)))
                                                        (_%hd194028194057%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194027194054%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194029194059%_))
                                                        (_%__kont198077198078%_
                                                         _%hd194028194057%_
                                                         _%hd194025194049%_)
                                                        (_%__kont198079198080%_))))
                                                (_%__kont198079198080%_))))
                                        (_%__kont198079198080%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self193592%_
                                   _%stx193593%_))))
                          _%$e194001%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self193592%_
                            _%stx193593%_))))))
                (_%__kont198103198104%_
                 (lambda (_%L193842%_ _%L193843%_ _%L193844%_ _%L193845%_)
                   (gxc#optimize-if%
                    _%self193592%_
                    (let ((__tmp198458
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L193844%_
                                       (cons _%L193842%_
                                             (cons _%L193843%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198458 _%stx193593%_)))))
                (_%__kont198105198106%_
                 (lambda (_%L193745%_ _%L193746%_ _%L193747%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self193592%_ _%stx193593%_)))))
            (let ((_%__match198304198305%_
                   (lambda (_%e193662193770%_
                            _%hd193663193773%_
                            _%tl193664193775%_
                            _%e193665193778%_
                            _%hd193666193781%_
                            _%tl193667193783%_
                            _%e193668193786%_
                            _%hd193669193789%_
                            _%tl193670193791%_
                            _%e193671193794%_
                            _%hd193672193797%_
                            _%tl193673193799%_
                            _%e193674193802%_
                            _%hd193675193805%_
                            _%tl193676193807%_
                            _%e193677193810%_
                            _%hd193678193813%_
                            _%tl193679193815%_
                            _%e193680193818%_
                            _%hd193681193821%_
                            _%tl193682193823%_
                            _%e193683193826%_
                            _%hd193684193829%_
                            _%tl193685193831%_
                            _%e193686193834%_
                            _%hd193687193837%_
                            _%tl193688193839%_)
                     (let ((_%L193842%_ _%hd193687193837%_)
                           (_%L193843%_ _%hd193684193829%_)
                           (_%L193844%_ _%hd193681193821%_)
                           (_%L193845%_ _%hd193678193813%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L193845%_ 'not))
                           (_%__kont198103198104%_
                            _%L193842%_
                            _%L193843%_
                            _%L193844%_
                            _%L193845%_)
                           (_%__kont198105198106%_
                            _%hd193687193837%_
                            _%hd193684193829%_
                            _%hd193666193781%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198097198098%_))
                  (let ((_%e193603194092%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198097198098%_))))
                    (let ((_%tl193605194097%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193603194092%_)))
                          (_%hd193604194095%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193603194092%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193605194097%_))
                          (let ((_%e193606194100%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193605194097%_))))
                            (let ((_%tl193608194105%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193606194100%_)))
                                  (_%hd193607194103%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193606194100%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193607194103%_))
                                  (let ((_%e193609194108%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193607194103%_))))
                                    (let ((_%tl193611194113%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193609194108%_)))
                                          (_%hd193610194111%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193609194108%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193610194111%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd193610194111%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193611194113%_))
                                                  (let ((_%e193612194116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193611194113%_))))
                                                    (let ((_%tl193614194121%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193612194116%_)))
                                                          (_%hd193613194119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193612194116%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193614194121%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193608194105%_))
                      (let ((_%e193615194124%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193608194105%_))))
                        (let ((_%tl193617194129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193615194124%_)))
                              (_%hd193616194127%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193615194124%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193617194129%_))
                              (let ((_%e193618194132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193617194129%_))))
                                (let ((_%tl193620194137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193618194132%_)))
                                      (_%hd193619194135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193618194132%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193620194137%_))
                                      (_%__kont198099198100%_
                                       _%hd193619194135%_
                                       _%hd193616194127%_
                                       _%hd193613194119%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193598193708%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193598193708%_)))))
                      (let () (declare (not safe)) (_%g193598193708%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193608194105%_))
                      (let ((_%e193698193729%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193608194105%_))))
                        (let ((_%tl193700193734%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193698193729%_)))
                              (_%hd193699193732%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193698193729%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193700193734%_))
                              (let ((_%e193701193737%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193700193734%_))))
                                (let ((_%tl193703193742%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193701193737%_)))
                                      (_%hd193702193740%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193701193737%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193703193742%_))
                                      (_%__kont198105198106%_
                                       _%hd193702193740%_
                                       _%hd193699193732%_
                                       _%hd193607194103%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193598193708%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193598193708%_)))))
                      (let () (declare (not safe)) (_%g193598193708%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193608194105%_))
                                                      (let ((_%e193698193729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193608194105%_))))
                (let ((_%tl193700193734%_
                       (let () (declare (not safe)) (##cdr _%e193698193729%_)))
                      (_%hd193699193732%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193698193729%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193700193734%_))
                      (let ((_%e193701193737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193700193734%_))))
                        (let ((_%tl193703193742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193701193737%_)))
                              (_%hd193702193740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193701193737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193703193742%_))
                              (_%__kont198105198106%_
                               _%hd193702193740%_
                               _%hd193699193732%_
                               _%hd193607194103%_)
                              (let ()
                                (declare (not safe))
                                (_%g193598193708%_)))))
                      (let () (declare (not safe)) (_%g193598193708%_)))))
              (let () (declare (not safe)) (_%g193598193708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd193610194111%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193611194113%_))
                                                      (let ((_%e193634193902%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193611194113%_))))
                (let ((_%tl193636193907%_
                       (let () (declare (not safe)) (##cdr _%e193634193902%_)))
                      (_%hd193635193905%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193634193902%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193635193905%_))
                      (let ((_%e193637193910%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193635193905%_))))
                        (let ((_%tl193639193915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193637193910%_)))
                              (_%hd193638193913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193637193910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193638193913%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193638193913%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193639193915%_))
                                      (let ((_%e193640193918%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193639193915%_))))
                                        (let ((_%tl193642193923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193640193918%_)))
                                              (_%hd193641193921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193640193918%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193642193923%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193636193907%_))
                                                  (let ((_%e193643193926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193636193907%_))))
                                                    (let ((_%tl193645193931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193643193926%_)))
                                                          (_%hd193644193929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193643193926%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193644193929%_))
                                                          (let ((_%e193646193934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193644193929%_))))
                    (let ((_%tl193648193939%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193646193934%_)))
                          (_%hd193647193937%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193646193934%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193647193937%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd193647193937%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193648193939%_))
                                  (let ((_%e193649193942%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193648193939%_))))
                                    (let ((_%tl193651193947%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193649193942%_)))
                                          (_%hd193650193945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193649193942%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193651193947%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193645193931%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193608194105%_))
                                                  (let ((_%e193652193950%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193608194105%_))))
                                                    (let ((_%tl193654193955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193652193950%_)))
                                                          (_%hd193653193953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193652193950%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193654193955%_))
                                                          (let ((_%e193655193958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193654193955%_))))
                    (let ((_%tl193657193963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193655193958%_)))
                          (_%hd193656193961%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193655193958%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193657193963%_))
                          (_%__kont198101198102%_
                           _%hd193656193961%_
                           _%hd193653193953%_
                           _%hd193650193945%_
                           _%hd193641193921%_)
                          (let () (declare (not safe)) (_%g193598193708%_)))))
                  (let () (declare (not safe)) (_%g193598193708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193608194105%_))
                                                  (let ((_%e193698193729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193608194105%_))))
                                                    (let ((_%tl193700193734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193698193729%_)))
                                                          (_%hd193699193732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193698193729%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193700193734%_))
                                                          (let ((_%e193701193737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193700193734%_))))
                    (let ((_%tl193703193742%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193701193737%_)))
                          (_%hd193702193740%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193701193737%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193703193742%_))
                          (_%__kont198105198106%_
                           _%hd193702193740%_
                           _%hd193699193732%_
                           _%hd193607194103%_)
                          (let () (declare (not safe)) (_%g193598193708%_)))))
                  (let () (declare (not safe)) (_%g193598193708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193645193931%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193608194105%_))
                                                  (let ((_%e193683193826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193608194105%_))))
                                                    (let ((_%tl193685193831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193683193826%_)))
                                                          (_%hd193684193829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193683193826%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193685193831%_))
                                                          (let ((_%e193686193834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193685193831%_))))
                    (let ((_%tl193688193839%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193686193834%_)))
                          (_%hd193687193837%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193686193834%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193688193839%_))
                          (_%__match198304198305%_
                           _%e193603194092%_
                           _%hd193604194095%_
                           _%tl193605194097%_
                           _%e193606194100%_
                           _%hd193607194103%_
                           _%tl193608194105%_
                           _%e193609194108%_
                           _%hd193610194111%_
                           _%tl193611194113%_
                           _%e193634193902%_
                           _%hd193635193905%_
                           _%tl193636193907%_
                           _%e193637193910%_
                           _%hd193638193913%_
                           _%tl193639193915%_
                           _%e193640193918%_
                           _%hd193641193921%_
                           _%tl193642193923%_
                           _%e193643193926%_
                           _%hd193644193929%_
                           _%tl193645193931%_
                           _%e193683193826%_
                           _%hd193684193829%_
                           _%tl193685193831%_
                           _%e193686193834%_
                           _%hd193687193837%_
                           _%tl193688193839%_)
                          (let () (declare (not safe)) (_%g193598193708%_)))))
                  (let () (declare (not safe)) (_%g193598193708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193608194105%_))
                                                  (let ((_%e193698193729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193608194105%_))))
                                                    (let ((_%tl193700193734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193698193729%_)))
                                                          (_%hd193699193732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193698193729%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193700193734%_))
                                                          (let ((_%e193701193737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193700193734%_))))
                    (let ((_%tl193703193742%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193701193737%_)))
                          (_%hd193702193740%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193701193737%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193703193742%_))
                          (_%__kont198105198106%_
                           _%hd193702193740%_
                           _%hd193699193732%_
                           _%hd193607194103%_)
                          (let () (declare (not safe)) (_%g193598193708%_)))))
                  (let () (declare (not safe)) (_%g193598193708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193645193931%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193608194105%_))
                                          (let ((_%e193683193826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193608194105%_))))
                                            (let ((_%tl193685193831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193683193826%_)))
                                                  (_%hd193684193829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193683193826%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193685193831%_))
                                                  (let ((_%e193686193834%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193685193831%_))))
                                                    (let ((_%tl193688193839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193686193834%_)))
                                                          (_%hd193687193837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193686193834%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193688193839%_))
                                                          (_%__match198304198305%_
                                                           _%e193603194092%_
                                                           _%hd193604194095%_
                                                           _%tl193605194097%_
                                                           _%e193606194100%_
                                                           _%hd193607194103%_
                                                           _%tl193608194105%_
                                                           _%e193609194108%_
                                                           _%hd193610194111%_
                                                           _%tl193611194113%_
                                                           _%e193634193902%_
                                                           _%hd193635193905%_
                                                           _%tl193636193907%_
                                                           _%e193637193910%_
                                                           _%hd193638193913%_
                                                           _%tl193639193915%_
                                                           _%e193640193918%_
                                                           _%hd193641193921%_
                                                           _%tl193642193923%_
                                                           _%e193643193926%_
                                                           _%hd193644193929%_
                                                           _%tl193645193931%_
                                                           _%e193683193826%_
                                                           _%hd193684193829%_
                                                           _%tl193685193831%_
                                                           _%e193686193834%_
                                                           _%hd193687193837%_
                                                           _%tl193688193839%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193598193708%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193598193708%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193608194105%_))
                                          (let ((_%e193698193729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193608194105%_))))
                                            (let ((_%tl193700193734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193698193729%_)))
                                                  (_%hd193699193732%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193698193729%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193700193734%_))
                                                  (let ((_%e193701193737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193700193734%_))))
                                                    (let ((_%tl193703193742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193701193737%_)))
                                                          (_%hd193702193740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193701193737%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193703193742%_))
                                                          (_%__kont198105198106%_
                                                           _%hd193702193740%_
                                                           _%hd193699193732%_
                                                           _%hd193607194103%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193598193708%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193598193708%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193645193931%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193608194105%_))
                                      (let ((_%e193683193826%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193608194105%_))))
                                        (let ((_%tl193685193831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193683193826%_)))
                                              (_%hd193684193829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193683193826%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193685193831%_))
                                              (let ((_%e193686193834%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193685193831%_))))
                                                (let ((_%tl193688193839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193686193834%_)))
                                                      (_%hd193687193837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193686193834%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193688193839%_))
                                                      (_%__match198304198305%_
                                                       _%e193603194092%_
                                                       _%hd193604194095%_
                                                       _%tl193605194097%_
                                                       _%e193606194100%_
                                                       _%hd193607194103%_
                                                       _%tl193608194105%_
                                                       _%e193609194108%_
                                                       _%hd193610194111%_
                                                       _%tl193611194113%_
                                                       _%e193634193902%_
                                                       _%hd193635193905%_
                                                       _%tl193636193907%_
                                                       _%e193637193910%_
                                                       _%hd193638193913%_
                                                       _%tl193639193915%_
                                                       _%e193640193918%_
                                                       _%hd193641193921%_
                                                       _%tl193642193923%_
                                                       _%e193643193926%_
                                                       _%hd193644193929%_
                                                       _%tl193645193931%_
                                                       _%e193683193826%_
                                                       _%hd193684193829%_
                                                       _%tl193685193831%_
                                                       _%e193686193834%_
                                                       _%hd193687193837%_
                                                       _%tl193688193839%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193598193708%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193598193708%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193598193708%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193608194105%_))
                                      (let ((_%e193698193729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193608194105%_))))
                                        (let ((_%tl193700193734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193698193729%_)))
                                              (_%hd193699193732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193698193729%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193700193734%_))
                                              (let ((_%e193701193737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193700193734%_))))
                                                (let ((_%tl193703193742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193701193737%_)))
                                                      (_%hd193702193740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193701193737%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193703193742%_))
                                                      (_%__kont198105198106%_
                                                       _%hd193702193740%_
                                                       _%hd193699193732%_
                                                       _%hd193607194103%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193598193708%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193598193708%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193598193708%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193645193931%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193608194105%_))
                                  (let ((_%e193683193826%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193608194105%_))))
                                    (let ((_%tl193685193831%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193683193826%_)))
                                          (_%hd193684193829%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193683193826%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193685193831%_))
                                          (let ((_%e193686193834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193685193831%_))))
                                            (let ((_%tl193688193839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193686193834%_)))
                                                  (_%hd193687193837%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193686193834%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193688193839%_))
                                                  (_%__match198304198305%_
                                                   _%e193603194092%_
                                                   _%hd193604194095%_
                                                   _%tl193605194097%_
                                                   _%e193606194100%_
                                                   _%hd193607194103%_
                                                   _%tl193608194105%_
                                                   _%e193609194108%_
                                                   _%hd193610194111%_
                                                   _%tl193611194113%_
                                                   _%e193634193902%_
                                                   _%hd193635193905%_
                                                   _%tl193636193907%_
                                                   _%e193637193910%_
                                                   _%hd193638193913%_
                                                   _%tl193639193915%_
                                                   _%e193640193918%_
                                                   _%hd193641193921%_
                                                   _%tl193642193923%_
                                                   _%e193643193926%_
                                                   _%hd193644193929%_
                                                   _%tl193645193931%_
                                                   _%e193683193826%_
                                                   _%hd193684193829%_
                                                   _%tl193685193831%_
                                                   _%e193686193834%_
                                                   _%hd193687193837%_
                                                   _%tl193688193839%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193598193708%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193598193708%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193608194105%_))
                                  (let ((_%e193698193729%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193608194105%_))))
                                    (let ((_%tl193700193734%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193698193729%_)))
                                          (_%hd193699193732%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193698193729%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193700193734%_))
                                          (let ((_%e193701193737%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193700193734%_))))
                                            (let ((_%tl193703193742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193701193737%_)))
                                                  (_%hd193702193740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193701193737%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193703193742%_))
                                                  (_%__kont198105198106%_
                                                   _%hd193702193740%_
                                                   _%hd193699193732%_
                                                   _%hd193607194103%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193598193708%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193598193708%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193645193931%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193608194105%_))
                          (let ((_%e193683193826%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193608194105%_))))
                            (let ((_%tl193685193831%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193683193826%_)))
                                  (_%hd193684193829%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193683193826%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193685193831%_))
                                  (let ((_%e193686193834%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193685193831%_))))
                                    (let ((_%tl193688193839%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193686193834%_)))
                                          (_%hd193687193837%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193686193834%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193688193839%_))
                                          (_%__match198304198305%_
                                           _%e193603194092%_
                                           _%hd193604194095%_
                                           _%tl193605194097%_
                                           _%e193606194100%_
                                           _%hd193607194103%_
                                           _%tl193608194105%_
                                           _%e193609194108%_
                                           _%hd193610194111%_
                                           _%tl193611194113%_
                                           _%e193634193902%_
                                           _%hd193635193905%_
                                           _%tl193636193907%_
                                           _%e193637193910%_
                                           _%hd193638193913%_
                                           _%tl193639193915%_
                                           _%e193640193918%_
                                           _%hd193641193921%_
                                           _%tl193642193923%_
                                           _%e193643193926%_
                                           _%hd193644193929%_
                                           _%tl193645193931%_
                                           _%e193683193826%_
                                           _%hd193684193829%_
                                           _%tl193685193831%_
                                           _%e193686193834%_
                                           _%hd193687193837%_
                                           _%tl193688193839%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193598193708%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193598193708%_)))))
                          (let () (declare (not safe)) (_%g193598193708%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193608194105%_))
                          (let ((_%e193698193729%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193608194105%_))))
                            (let ((_%tl193700193734%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193698193729%_)))
                                  (_%hd193699193732%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193698193729%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193700193734%_))
                                  (let ((_%e193701193737%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193700193734%_))))
                                    (let ((_%tl193703193742%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193701193737%_)))
                                          (_%hd193702193740%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193701193737%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193703193742%_))
                                          (_%__kont198105198106%_
                                           _%hd193702193740%_
                                           _%hd193699193732%_
                                           _%hd193607194103%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193598193708%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193598193708%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g193598193708%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193608194105%_))
                                                      (let ((_%e193698193729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193608194105%_))))
                (let ((_%tl193700193734%_
                       (let () (declare (not safe)) (##cdr _%e193698193729%_)))
                      (_%hd193699193732%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193698193729%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193700193734%_))
                      (let ((_%e193701193737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193700193734%_))))
                        (let ((_%tl193703193742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193701193737%_)))
                              (_%hd193702193740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193701193737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193703193742%_))
                              (_%__kont198105198106%_
                               _%hd193702193740%_
                               _%hd193699193732%_
                               _%hd193607194103%_)
                              (let ()
                                (declare (not safe))
                                (_%g193598193708%_)))))
                      (let () (declare (not safe)) (_%g193598193708%_)))))
              (let () (declare (not safe)) (_%g193598193708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193608194105%_))
                                                  (let ((_%e193698193729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193608194105%_))))
                                                    (let ((_%tl193700193734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193698193729%_)))
                                                          (_%hd193699193732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193698193729%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193700193734%_))
                                                          (let ((_%e193701193737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193700193734%_))))
                    (let ((_%tl193703193742%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193701193737%_)))
                          (_%hd193702193740%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193701193737%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193703193742%_))
                          (_%__kont198105198106%_
                           _%hd193702193740%_
                           _%hd193699193732%_
                           _%hd193607194103%_)
                          (let () (declare (not safe)) (_%g193598193708%_)))))
                  (let () (declare (not safe)) (_%g193598193708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193608194105%_))
                                          (let ((_%e193698193729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193608194105%_))))
                                            (let ((_%tl193700193734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193698193729%_)))
                                                  (_%hd193699193732%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193698193729%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193700193734%_))
                                                  (let ((_%e193701193737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193700193734%_))))
                                                    (let ((_%tl193703193742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193701193737%_)))
                                                          (_%hd193702193740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193701193737%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193703193742%_))
                                                          (_%__kont198105198106%_
                                                           _%hd193702193740%_
                                                           _%hd193699193732%_
                                                           _%hd193607194103%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193598193708%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193598193708%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193608194105%_))
                                      (let ((_%e193698193729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193608194105%_))))
                                        (let ((_%tl193700193734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193698193729%_)))
                                              (_%hd193699193732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193698193729%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193700193734%_))
                                              (let ((_%e193701193737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193700193734%_))))
                                                (let ((_%tl193703193742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193701193737%_)))
                                                      (_%hd193702193740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193701193737%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193703193742%_))
                                                      (_%__kont198105198106%_
                                                       _%hd193702193740%_
                                                       _%hd193699193732%_
                                                       _%hd193607194103%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193598193708%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193598193708%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193598193708%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193608194105%_))
                                  (let ((_%e193698193729%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193608194105%_))))
                                    (let ((_%tl193700193734%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193698193729%_)))
                                          (_%hd193699193732%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193698193729%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193700193734%_))
                                          (let ((_%e193701193737%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193700193734%_))))
                                            (let ((_%tl193703193742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193701193737%_)))
                                                  (_%hd193702193740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193701193737%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193703193742%_))
                                                  (_%__kont198105198106%_
                                                   _%hd193702193740%_
                                                   _%hd193699193732%_
                                                   _%hd193607194103%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193598193708%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193598193708%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193598193708%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193608194105%_))
                          (let ((_%e193698193729%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193608194105%_))))
                            (let ((_%tl193700193734%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193698193729%_)))
                                  (_%hd193699193732%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193698193729%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193700193734%_))
                                  (let ((_%e193701193737%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193700193734%_))))
                                    (let ((_%tl193703193742%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193701193737%_)))
                                          (_%hd193702193740%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193701193737%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193703193742%_))
                                          (_%__kont198105198106%_
                                           _%hd193702193740%_
                                           _%hd193699193732%_
                                           _%hd193607194103%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193598193708%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193598193708%_)))))
                          (let () (declare (not safe)) (_%g193598193708%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl193608194105%_))
                  (let ((_%e193698193729%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193608194105%_))))
                    (let ((_%tl193700193734%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193698193729%_)))
                          (_%hd193699193732%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193698193729%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193700193734%_))
                          (let ((_%e193701193737%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193700193734%_))))
                            (let ((_%tl193703193742%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193701193737%_)))
                                  (_%hd193702193740%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193701193737%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193703193742%_))
                                  (_%__kont198105198106%_
                                   _%hd193702193740%_
                                   _%hd193699193732%_
                                   _%hd193607194103%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g193598193708%_)))))
                          (let () (declare (not safe)) (_%g193598193708%_)))))
                  (let () (declare (not safe)) (_%g193598193708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193608194105%_))
                                                      (let ((_%e193698193729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193608194105%_))))
                (let ((_%tl193700193734%_
                       (let () (declare (not safe)) (##cdr _%e193698193729%_)))
                      (_%hd193699193732%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193698193729%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193700193734%_))
                      (let ((_%e193701193737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193700193734%_))))
                        (let ((_%tl193703193742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193701193737%_)))
                              (_%hd193702193740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193701193737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193703193742%_))
                              (_%__kont198105198106%_
                               _%hd193702193740%_
                               _%hd193699193732%_
                               _%hd193607194103%_)
                              (let ()
                                (declare (not safe))
                                (_%g193598193708%_)))))
                      (let () (declare (not safe)) (_%g193598193708%_)))))
              (let () (declare (not safe)) (_%g193598193708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193608194105%_))
                                              (let ((_%e193698193729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193608194105%_))))
                                                (let ((_%tl193700193734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193698193729%_)))
                                                      (_%hd193699193732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193698193729%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193700193734%_))
                                                      (let ((_%e193701193737%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193700193734%_))))
                (let ((_%tl193703193742%_
                       (let () (declare (not safe)) (##cdr _%e193701193737%_)))
                      (_%hd193702193740%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193701193737%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193703193742%_))
                      (_%__kont198105198106%_
                       _%hd193702193740%_
                       _%hd193699193732%_
                       _%hd193607194103%_)
                      (let () (declare (not safe)) (_%g193598193708%_)))))
              (let () (declare (not safe)) (_%g193598193708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g193598193708%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193608194105%_))
                                      (let ((_%e193698193729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193608194105%_))))
                                        (let ((_%tl193700193734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193698193729%_)))
                                              (_%hd193699193732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193698193729%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193700193734%_))
                                              (let ((_%e193701193737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193700193734%_))))
                                                (let ((_%tl193703193742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193701193737%_)))
                                                      (_%hd193702193740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193701193737%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193703193742%_))
                                                      (_%__kont198105198106%_
                                                       _%hd193702193740%_
                                                       _%hd193699193732%_
                                                       _%hd193607194103%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193598193708%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193598193708%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193598193708%_))))))
                          (let () (declare (not safe)) (_%g193598193708%_)))))
                  (let () (declare (not safe)) (_%g193598193708%_))))))))))
