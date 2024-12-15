(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1734279335)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp198336 (list gxc#::basic-xform::t))
            (__tmp198335 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp198336
         '()
         __tmp198335
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args197613%_
        (apply make-instance gxc#::optimize-call::t _%$args197613%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp198337
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
        (__make-promise __tmp198337)))
    (define gxc#apply-optimize-call
      (lambda (_%stx197605%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self197608%_
                (let ((__obj198327
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj198327))
               (__tmp198338
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197608%_ _%stx197605%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198338
           gxc#current-compile-method
           _%self197608%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp198340 (list gxc#::void::t))
            (__tmp198339 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp198340
         '()
         __tmp198339
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args197602%_
        (apply make-instance gxc#::check-return-type::t _%$args197602%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp198341
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
        (__make-promise __tmp198341)))
    (define gxc#apply-check-return-type
      (lambda (_%stx197594%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self197597%_
                (let ((__obj198329
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj198329))
               (__tmp198342
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197597%_ _%stx197594%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198342
           gxc#current-compile-method
           _%self197597%_))))
    (define gxc#optimize-call%
      (lambda (_%self197195%_ _%stx197196%_)
        (let* ((_%__stx197682197683%_ _%stx197196%_)
               (_%g197199197245%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197682197683%_)))))
          (let ((_%__kont197684197685%_
                 (lambda (_%L197388%_ _%L197389%_)
                   (let* ((_%rator-id197409%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L197389%_)))
                          (_%rator-type197411%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id197409%_))))
                     (if (or (not _%rator-type197411%_)
                             (eq? (##structure-ref
                                   _%rator-type197411%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self197195%_ _%stx197196%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type197411%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp198343
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type197411%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id197409%_
                                  '" => "
                                  _%rator-type197411%_
                                  '" "
                                  __tmp198343))
                               (let* ((_%optimized197426%_
                                       (let ((__method198330
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type197411%_
                                                 'optimize-call))))
                                         (if __method198330
                                             (let ((__tmp198344
                                                    (let ((__tmp198345
                                                           (lambda (_%g197418197421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197419197423%_)
                     (cons _%g197418197421%_ _%g197419197423%_))))
              (declare (not safe))
              (__foldr1 __tmp198345 '() _%L197388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method198330
                                                _%rator-type197411%_
                                                _%self197195%_
                                                _%stx197196%_
                                                __tmp198344))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type197411%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx197630197631%_
                                       _%optimized197426%_)
                                      (_%g197429197458%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx197630197631%_)))))
                                 (let ((_%__kont197632197633%_
                                        (lambda (_%L197526%_ _%L197527%_)
                                          (let* ((_%optimized-rator-id197554%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L197527%_)))
                                                 (_%rator-type197559%_
                                                  (let ((_%$e197556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id197554%_))))
                                                    (if _%$e197556%_
                                                        _%$e197556%_
                                                        _%rator-type197411%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type197559%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id197554%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type197559%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type197559%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized197426%_
                                                (let ((__tmp198346
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L197527%_ '()))
                           (let ((__tmp198347
                                  (lambda (_%g197567197570%_ _%g197568197572%_)
                                    (cons _%g197567197570%_
                                          _%g197568197572%_))))
                             (declare (not safe))
                             (__foldr1 __tmp198347 '() _%L197526%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp198346
                                                   _%stx197196%_))))))
                                       (_%__kont197636197637%_
                                        (lambda () _%optimized197426%_)))
                                   (let ((_%__match197679197680%_
                                          (lambda (_%e197433197470%_
                                                   _%hd197434197473%_
                                                   _%tl197435197475%_
                                                   _%e197436197478%_
                                                   _%hd197437197481%_
                                                   _%tl197438197483%_
                                                   _%e197439197486%_
                                                   _%hd197440197489%_
                                                   _%tl197441197491%_
                                                   _%e197442197494%_
                                                   _%hd197443197497%_
                                                   _%tl197444197499%_
                                                   _%__splice197634197635%_
                                                   _%target197445197502%_
                                                   _%tl197447197504%_)
                                            (letrec ((_%loop197448197507%_
                                                      (lambda (_%hd197446197510%_
                                                               _%arg197452197512%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd197446197510%_))
                                                            (let ((_%e197449197515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd197446197510%_))))
                      (let ((_%lp-tl197451197520%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197449197515%_)))
                            (_%lp-hd197450197518%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197449197515%_))))
                        (_%loop197448197507%_
                         _%lp-tl197451197520%_
                         (cons _%lp-hd197450197518%_ _%arg197452197512%_))))
                    (let ((_%arg197453197523%_ (reverse _%arg197452197512%_)))
                      (_%__kont197632197633%_
                       _%arg197453197523%_
                       _%hd197443197497%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop197448197507%_
                                               _%target197445197502%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx197630197631%_))
                                         (let ((_%e197433197470%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx197630197631%_))))
                                           (let ((_%tl197435197475%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197433197470%_)))
                                                 (_%hd197434197473%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197433197470%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197434197473%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd197434197473%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197435197475%_))
                                                         (let ((_%e197436197478%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197435197475%_))))
                   (let ((_%tl197438197483%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197436197478%_)))
                         (_%hd197437197481%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197436197478%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd197437197481%_))
                         (let ((_%e197439197486%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd197437197481%_))))
                           (let ((_%tl197441197491%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197439197486%_)))
                                 (_%hd197440197489%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197439197486%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd197440197489%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd197440197489%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl197441197491%_))
                                         (let ((_%e197442197494%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl197441197491%_))))
                                           (let ((_%tl197444197499%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197442197494%_)))
                                                 (_%hd197443197497%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197442197494%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl197444197499%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl197438197483%_))
                                                     (let ((_%__splice197634197635%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl197438197483%_
                                                               '0))))
                                                       (let ((_%tl197447197504%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice197634197635%_ '1)))
                     (_%target197445197502%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice197634197635%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197447197504%_))
                     (_%__match197679197680%_
                      _%e197433197470%_
                      _%hd197434197473%_
                      _%tl197435197475%_
                      _%e197436197478%_
                      _%hd197437197481%_
                      _%tl197438197483%_
                      _%e197439197486%_
                      _%hd197440197489%_
                      _%tl197441197491%_
                      _%e197442197494%_
                      _%hd197443197497%_
                      _%tl197444197499%_
                      _%__splice197634197635%_
                      _%target197445197502%_
                      _%tl197447197504%_)
                     (_%__kont197636197637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197636197637%_))
                                                 (_%__kont197636197637%_))))
                                         (_%__kont197636197637%_))
                                     (_%__kont197636197637%_))
                                 (_%__kont197636197637%_))))
                         (_%__kont197636197637%_))))
                 (_%__kont197636197637%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197636197637%_))
                                                 (_%__kont197636197637%_))))
                                         (_%__kont197636197637%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type197411%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type197411%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp198348
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L197389%_
                                                                '()))
                                                    (map (lambda (_%g197578197580%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self197195%_
                                                              _%g197578197580%_)))
                                                         (let ((__tmp198349
                                                                (lambda (_%g197582197585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g197583197587%_)
                          (cons _%g197582197585%_ _%g197583197587%_))))
                   (declare (not safe))
                   (__foldr1 __tmp198349 '() _%L197388%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp198348
                                    _%stx197196%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx197196%_
                                    _%rator-type197411%_))))))))
                (_%__kont197688197689%_
                 (lambda (_%L197290%_ _%L197291%_)
                   (let ((_%rator-type197308%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L197291%_))))
                     (if (and _%rator-type197308%_
                              (eq? (##structure-ref
                                    _%rator-type197308%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type197308%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type197308%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type197308%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp198350
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197195%_
                                               _%L197291%_))
                                            (map (lambda (_%g197310197312%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197195%_
                                                      _%g197310197312%_)))
                                                 (let ((__tmp198351
                                                        (lambda (_%g197314197317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g197315197319%_)
                  (cons _%g197314197317%_ _%g197315197319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp198351
                                                    '()
                                                    _%L197290%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198350 _%stx197196%_))
                         (if (or (not _%rator-type197308%_)
                                 (let ((__tmp198352
                                        (##structure-ref
                                         _%rator-type197308%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp198352 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self197195%_ _%stx197196%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx197196%_
                                _%rator-type197308%_))))))))
            (let* ((_%__match197749197750%_
                    (lambda (_%e197226197250%_
                             _%hd197227197253%_
                             _%tl197228197255%_
                             _%e197229197258%_
                             _%hd197230197261%_
                             _%tl197231197263%_
                             _%__splice197690197691%_
                             _%target197232197266%_
                             _%tl197234197268%_)
                      (letrec ((_%loop197235197271%_
                                (lambda (_%hd197233197274%_
                                         _%rand197239197276%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197233197274%_))
                                      (let ((_%e197236197279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197233197274%_))))
                                        (let ((_%lp-tl197238197284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197236197279%_)))
                                              (_%lp-hd197237197282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197236197279%_))))
                                          (_%loop197235197271%_
                                           _%lp-tl197238197284%_
                                           (cons _%lp-hd197237197282%_
                                                 _%rand197239197276%_))))
                                      (let ((_%rand197240197287%_
                                             (reverse _%rand197239197276%_)))
                                        (_%__kont197688197689%_
                                         _%rand197240197287%_
                                         _%hd197230197261%_))))))
                        (_%loop197235197271%_ _%target197232197266%_ '()))))
                   (_%__match197729197730%_
                    (lambda (_%e197203197332%_
                             _%hd197204197335%_
                             _%tl197205197337%_
                             _%e197206197340%_
                             _%hd197207197343%_
                             _%tl197208197345%_
                             _%e197209197348%_
                             _%hd197210197351%_
                             _%tl197211197353%_
                             _%e197212197356%_
                             _%hd197213197359%_
                             _%tl197214197361%_
                             _%__splice197686197687%_
                             _%target197215197364%_
                             _%tl197217197366%_)
                      (letrec ((_%loop197218197369%_
                                (lambda (_%hd197216197372%_
                                         _%rand197222197374%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197216197372%_))
                                      (let ((_%e197219197377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197216197372%_))))
                                        (let ((_%lp-tl197221197382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197219197377%_)))
                                              (_%lp-hd197220197380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197219197377%_))))
                                          (_%loop197218197369%_
                                           _%lp-tl197221197382%_
                                           (cons _%lp-hd197220197380%_
                                                 _%rand197222197374%_))))
                                      (let ((_%rand197223197385%_
                                             (reverse _%rand197222197374%_)))
                                        (_%__kont197684197685%_
                                         _%rand197223197385%_
                                         _%hd197213197359%_))))))
                        (_%loop197218197369%_ _%target197215197364%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197682197683%_))
                  (let ((_%e197203197332%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197682197683%_))))
                    (let ((_%tl197205197337%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197203197332%_)))
                          (_%hd197204197335%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197203197332%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197205197337%_))
                          (let ((_%e197206197340%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197205197337%_))))
                            (let ((_%tl197208197345%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197206197340%_)))
                                  (_%hd197207197343%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197206197340%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197207197343%_))
                                  (let ((_%e197209197348%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197207197343%_))))
                                    (let ((_%tl197211197353%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197209197348%_)))
                                          (_%hd197210197351%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197209197348%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197210197351%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197210197351%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197211197353%_))
                                                  (let ((_%e197212197356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197211197353%_))))
                                                    (let ((_%tl197214197361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197212197356%_)))
                                                          (_%hd197213197359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197212197356%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197214197361%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197208197345%_))
                      (let ((_%__splice197686197687%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197208197345%_
                                '0))))
                        (let ((_%tl197217197366%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197686197687%_ '1)))
                              (_%target197215197364%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197686197687%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197217197366%_))
                              (_%__match197729197730%_
                               _%e197203197332%_
                               _%hd197204197335%_
                               _%tl197205197337%_
                               _%e197206197340%_
                               _%hd197207197343%_
                               _%tl197208197345%_
                               _%e197209197348%_
                               _%hd197210197351%_
                               _%tl197211197353%_
                               _%e197212197356%_
                               _%hd197213197359%_
                               _%tl197214197361%_
                               _%__splice197686197687%_
                               _%target197215197364%_
                               _%tl197217197366%_)
                              (let ()
                                (declare (not safe))
                                (_%g197199197245%_)))))
                      (let () (declare (not safe)) (_%g197199197245%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197208197345%_))
                      (let ((_%__splice197690197691%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197208197345%_
                                '0))))
                        (let ((_%tl197234197268%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197690197691%_ '1)))
                              (_%target197232197266%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197690197691%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197234197268%_))
                              (_%__match197749197750%_
                               _%e197203197332%_
                               _%hd197204197335%_
                               _%tl197205197337%_
                               _%e197206197340%_
                               _%hd197207197343%_
                               _%tl197208197345%_
                               _%__splice197690197691%_
                               _%target197232197266%_
                               _%tl197234197268%_)
                              (let ()
                                (declare (not safe))
                                (_%g197199197245%_)))))
                      (let () (declare (not safe)) (_%g197199197245%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197208197345%_))
                                                      (let ((_%__splice197690197691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197208197345%_ '0))))
                (let ((_%tl197234197268%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197690197691%_ '1)))
                      (_%target197232197266%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197690197691%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197234197268%_))
                      (_%__match197749197750%_
                       _%e197203197332%_
                       _%hd197204197335%_
                       _%tl197205197337%_
                       _%e197206197340%_
                       _%hd197207197343%_
                       _%tl197208197345%_
                       _%__splice197690197691%_
                       _%target197232197266%_
                       _%tl197234197268%_)
                      (let () (declare (not safe)) (_%g197199197245%_)))))
              (let () (declare (not safe)) (_%g197199197245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl197208197345%_))
                                                  (let ((_%__splice197690197691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl197208197345%_
                                                            '0))))
                                                    (let ((_%tl197234197268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197690197691%_
                                                              '1)))
                                                          (_%target197232197266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197690197691%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197234197268%_))
                                                          (_%__match197749197750%_
                                                           _%e197203197332%_
                                                           _%hd197204197335%_
                                                           _%tl197205197337%_
                                                           _%e197206197340%_
                                                           _%hd197207197343%_
                                                           _%tl197208197345%_
                                                           _%__splice197690197691%_
                                                           _%target197232197266%_
                                                           _%tl197234197268%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197199197245%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197199197245%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197208197345%_))
                                              (let ((_%__splice197690197691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197208197345%_
                                                        '0))))
                                                (let ((_%tl197234197268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197690197691%_
                                                          '1)))
                                                      (_%target197232197266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197690197691%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197234197268%_))
                                                      (_%__match197749197750%_
                                                       _%e197203197332%_
                                                       _%hd197204197335%_
                                                       _%tl197205197337%_
                                                       _%e197206197340%_
                                                       _%hd197207197343%_
                                                       _%tl197208197345%_
                                                       _%__splice197690197691%_
                                                       _%target197232197266%_
                                                       _%tl197234197268%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197199197245%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197199197245%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197208197345%_))
                                      (let ((_%__splice197690197691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197208197345%_
                                                '0))))
                                        (let ((_%tl197234197268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197690197691%_
                                                  '1)))
                                              (_%target197232197266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197690197691%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197234197268%_))
                                              (_%__match197749197750%_
                                               _%e197203197332%_
                                               _%hd197204197335%_
                                               _%tl197205197337%_
                                               _%e197206197340%_
                                               _%hd197207197343%_
                                               _%tl197208197345%_
                                               _%__splice197690197691%_
                                               _%target197232197266%_
                                               _%tl197234197268%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197199197245%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197199197245%_))))))
                          (let () (declare (not safe)) (_%g197199197245%_)))))
                  (let () (declare (not safe)) (_%g197199197245%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self193574197155%_ _%ctx197157%_ _%stx197158%_ _%args197159%_)
        (let* ((_%self197161%_ _%self193574197155%_)
               (_%self197163%_ _%self197161%_))
          (if (let ((__method198331
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self197163%_ 'check-arguments))))
                (if __method198331
                    (let ()
                      (declare (not safe))
                      (__method198331
                       _%self197163%_
                       _%ctx197157%_
                       _%stx197158%_
                       _%args197159%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self197163%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature197173%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197163%_ '2 '#f '#f)))
                     (_%signature197175%_ _%signature197173%_)
                     (_%$e197185%_
                      (if _%signature197175%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature197175%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e197185%_
                    ((lambda (_%unchecked197188%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked197188%_))
                           (let ((__tmp198353
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked197188%_
                                                          '()))
                                              (map (lambda (_%g197189197191%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx197157%_
                                                        _%g197189197191%_)))
                                                   _%args197159%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp198353
                              _%stx197158%_
                              _%ctx197157%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx197157%_ _%stx197158%_))))
                     _%$e197185%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx197157%_ _%stx197158%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx197157%_ _%stx197158%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass197615 __method-table197616)
        (let ((__check-arguments197617
               (let ((__tmp198354
                      (lambda ()
                        (let ((__method197618
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197616
                                  'check-arguments
                                  '#f))))
                          (if __method197618
                              __method197618
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198354))))
          (lambda (_%self193574197155%_
                   _%ctx197157%_
                   _%stx197158%_
                   _%args197159%_)
            (let* ((_%self197161%_ _%self193574197155%_)
                   (_%self197163%_ _%self197161%_))
              (if ((force __check-arguments197617)
                   _%self197163%_
                   _%ctx197157%_
                   _%stx197158%_
                   _%args197159%_)
                  (let* ((_%signature197173%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self197163%_
                             '2
                             '#f
                             '#f)))
                         (_%signature197175%_ _%signature197173%_)
                         (_%$e197185%_
                          (if _%signature197175%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature197175%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e197185%_
                        ((lambda (_%unchecked197188%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked197188%_))
                               (let ((__tmp198355
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked197188%_
                                                              '()))
                                                  (map (lambda (_%g197189197191%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx197157%_
                                                            _%g197189197191%_)))
                                                       _%args197159%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp198355
                                  _%stx197158%_
                                  _%ctx197157%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx197157%_
                                  _%stx197158%_))))
                         _%$e197185%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx197157%_ _%stx197158%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx197157%_ _%stx197158%_))))))))
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
      (lambda (_%self193575196904%_ _%ctx196906%_ _%stx196907%_ _%args196908%_)
        (let* ((_%self196910%_ _%self193575196904%_)
               (_%self196912%_ _%self196910%_)
               (_%signature196921196923%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196912%_ '2 '#f '#f))))
          (if _%signature196921196923%_
              (let* ((_%signature196926%_ _%signature196921196923%_)
                     (_%argument-types196927196929%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature196926%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types196927196929%_
                    (let* ((_%argument-types196932%_
                            _%argument-types196927196929%_)
                           (_%argument-types196937%_
                            (let ((__tmp198356
                                   (lambda (_%t196935%_)
                                     (if _%t196935%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196907%_
                                            _%t196935%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp198356
                               _%argument-types196932%_))))
                      (let _%loop196939%_ ((_%rest-args196941%_ _%args196908%_)
                                           (_%rest-types196942%_
                                            _%argument-types196937%_)
                                           (_%result196943%_ '#t))
                        (let* ((_%rest-args196944196952%_ _%rest-args196941%_)
                               (_%else196946196960%_
                                (lambda () _%result196943%_))
                               (_%K196948197021%_
                                (lambda (_%rest-args196963%_ _%arg196964%_)
                                  (let* ((_%rest-types196965196976%_
                                          _%rest-types196942%_)
                                         (_%E196969196980%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types196965196976%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K196972197009%_
                                           (lambda (_%rest-types197006%_
                                                    _%type197007%_)
                                             (_%loop196939%_
                                              _%rest-args196963%_
                                              _%rest-types197006%_
                                              (if (gxc#check-expression-type!
                                                   _%stx196907%_
                                                   _%arg196964%_
                                                   _%type197007%_)
                                                  _%result196943%_
                                                  '#f))))
                                          (_%K196971197000%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx196907%_
                                                _%argument-types196937%_))))
                                          (_%K196970196990%_
                                           (lambda (_%tail-type196984%_)
                                             (if (let ((__tmp198357
                                                        (lambda (_%g196985196987%_)
                                                          (gxc#check-expression-type!
                                                           _%stx196907%_
                                                           _%g196985196987%_
                                                           _%tail-type196984%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp198357
                                                    _%rest-args196963%_))
                                                 _%result196943%_
                                                 '#f))))
                                      (let ((_%try-match196967197003%_
                                             (lambda ()
                                               (if (null? _%rest-types196965196976%_)
                                                   (_%K196971197000%_)
                                                   (let ((_%tail-type196993%_
                                                          _%rest-types196965196976%_))
                                                     (_%K196970196990%_
                                                      _%tail-type196993%_))))))
                                        (if (pair? _%rest-types196965196976%_)
                                            (let ((_%tl196974197014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types196965196976%_)))
                                                  (_%hd196973197012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types196965196976%_))))
                                              (let ((_%type197017%_
                                                     _%hd196973197012%_)
                                                    (_%rest-types197019%_
                                                     _%tl196974197014%_))
                                                (_%K196972197009%_
                                                 _%rest-types197019%_
                                                 _%type197017%_)))
                                            (_%try-match196967197003%_))))))))
                          (if (pair? _%rest-args196944196952%_)
                              (let ((_%hd196949197024%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args196944196952%_)))
                                    (_%tl196950197026%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args196944196952%_))))
                                (let* ((_%arg197029%_ _%hd196949197024%_)
                                       (_%rest-args197031%_
                                        _%tl196950197026%_))
                                  (_%K196948197021%_
                                   _%rest-args197031%_
                                   _%arg197029%_)))
                              (_%else196946196960%_)))))
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
      (lambda (_%self193576196713%_ _%ctx196715%_ _%stx196716%_ _%args196717%_)
        (let* ((_%self196719%_ _%self193576196713%_)
               (_%self196721%_ _%self196719%_)
               (_%g196731196741%_
                (lambda (_%g196732196738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196732196738%_))))
               (_%g196730196779%_
                (lambda (_%g196732196744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196732196744%_))
                      (let ((_%e196734196746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196732196744%_))))
                        (let ((_%hd196735196749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196734196746%_)))
                              (_%tl196736196751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196734196746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196736196751%_))
                              ((lambda (_%L196754%_)
                                 (let* ((_%klass196766%_
                                         (let ((__tmp198358
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196721%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196716%_
                                            __tmp198358)))
                                        (_%object196768%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196715%_
                                            _%L196754%_)))
                                        (_%instance?196773%_
                                         (let ((_%$e196770%_
                                                (gxc#expression-type?
                                                 _%object196768%_
                                                 _%klass196766%_)))
                                           (if _%$e196770%_
                                               _%$e196770%_
                                               (gxc#expression-type?
                                                _%L196754%_
                                                _%klass196766%_)))))
                                   (if _%instance?196773%_
                                       (let ((__tmp198359
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196768%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196754%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196768%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198359
                                          _%stx196716%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx196715%_
                                          _%stx196716%_)))))
                               _%hd196735196749%_)
                              (_%g196731196741%_ _%g196732196744%_))))
                      (_%g196731196741%_ _%g196732196744%_)))))
          (_%g196730196779%_ _%args196717%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self193577196507%_ _%ctx196509%_ _%stx196510%_ _%args196511%_)
        (let* ((_%self196513%_ _%self193577196507%_)
               (_%self196515%_ _%self196513%_)
               (_%g196525196535%_
                (lambda (_%g196526196532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196526196532%_))))
               (_%g196524196588%_
                (lambda (_%g196526196538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196526196538%_))
                      (let ((_%e196528196540%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196526196538%_))))
                        (let ((_%hd196529196543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196528196540%_)))
                              (_%tl196530196545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196528196540%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196530196545%_))
                              ((lambda (_%L196548%_)
                                 (let* ((_%klass196560%_
                                         (let ((__tmp198360
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196515%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196510%_
                                            __tmp198360)))
                                        (_%object196562%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196509%_
                                            _%L196548%_)))
                                        (_%instance?196567%_
                                         (let ((_%$e196564%_
                                                (gxc#expression-type?
                                                 _%object196562%_
                                                 _%klass196560%_)))
                                           (if _%$e196564%_
                                               _%$e196564%_
                                               (gxc#expression-type?
                                                _%L196548%_
                                                _%klass196560%_))))
                                        (_%klass196570%_ _%klass196560%_))
                                   (if _%instance?196567%_
                                       (let ((__tmp198361
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196562%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196548%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196562%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198361
                                          _%stx196510%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass196570%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198362
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass196570%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object196562%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198362
                                              _%stx196510%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass196570%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198363
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass196570%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object196562%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198363
                                                  _%stx196510%_))
                                               (let ((__tmp198364
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self196515%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object196562%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198364
                                                  _%stx196510%_)))))))
                               _%hd196529196543%_)
                              (_%g196525196535%_ _%g196526196538%_))))
                      (_%g196525196535%_ _%g196526196538%_)))))
          (_%g196524196588%_ _%args196511%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx196170%_)
        (let* ((_%__stx197759197760%_ _%stx196170%_)
               (_%g196175196216%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197759197760%_)))))
          (let ((_%__kont197761197762%_ (lambda () '#t))
                (_%__kont197763197764%_ (lambda () '#t))
                (_%__kont197765197766%_
                 (lambda (_%L196284%_ _%L196285%_)
                   (let ((_%rator-type196306196308%_
                          (let ((__tmp198365
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L196285%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp198365))))
                     (if _%rator-type196306196308%_
                         (let* ((_%rator-type196311%_
                                 _%rator-type196306196308%_)
                                (_%rator-signature196312196314%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type196311%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type196311%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature196312196314%_
                               (let* ((_%rator-signature196317%_
                                       _%rator-signature196312196314%_)
                                      (_%rator-effect196318196320%_
                                       (if _%rator-signature196317%_
                                           (##direct-structure-ref
                                            _%rator-signature196317%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect196318196320%_
                                     (let ((_%rator-effect196323%_
                                            _%rator-effect196318196320%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect196323%_)
                                               (equal? '(alloc)
                                                       _%rator-effect196323%_))
                                           (let ((__tmp198366
                                                  (let ((__tmp198367
                                                         (lambda (_%g196328196331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g196329196333%_)
                   (cons _%g196328196331%_ _%g196329196333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp198367
                                                     '()
                                                     _%L196284%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp198366))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont197769197770%_ (lambda () '#f)))
            (let ((_%__match197848197849%_
                   (lambda (_%e196191196228%_
                            _%hd196192196231%_
                            _%tl196193196233%_
                            _%e196194196236%_
                            _%hd196195196239%_
                            _%tl196196196241%_
                            _%e196197196244%_
                            _%hd196198196247%_
                            _%tl196199196249%_
                            _%e196200196252%_
                            _%hd196201196255%_
                            _%tl196202196257%_
                            _%__splice197767197768%_
                            _%target196203196260%_
                            _%tl196205196262%_)
                     (letrec ((_%loop196206196265%_
                               (lambda (_%hd196204196268%_
                                        _%rand196210196270%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196204196268%_))
                                     (let ((_%e196207196273%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196204196268%_))))
                                       (let ((_%lp-tl196209196278%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196207196273%_)))
                                             (_%lp-hd196208196276%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196207196273%_))))
                                         (_%loop196206196265%_
                                          _%lp-tl196209196278%_
                                          (cons _%lp-hd196208196276%_
                                                _%rand196210196270%_))))
                                     (let ((_%rand196211196281%_
                                            (reverse _%rand196210196270%_)))
                                       (_%__kont197765197766%_
                                        _%rand196211196281%_
                                        _%hd196201196255%_))))))
                       (_%loop196206196265%_ _%target196203196260%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197759197760%_))
                  (let ((_%e196177196364%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197759197760%_))))
                    (let ((_%tl196179196369%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196177196364%_)))
                          (_%hd196178196367%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196177196364%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd196178196367%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd196178196367%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196179196369%_))
                                  (let ((_%e196180196372%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196179196369%_))))
                                    (let ((_%tl196182196377%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196180196372%_)))
                                          (_%hd196181196375%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196180196372%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196182196377%_))
                                          (_%__kont197761197762%_)
                                          (_%__kont197769197770%_))))
                                  (_%__kont197769197770%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd196178196367%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196179196369%_))
                                      (let ((_%e196186196349%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196179196369%_))))
                                        (let ((_%tl196188196354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196186196349%_)))
                                              (_%hd196187196352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196186196349%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196188196354%_))
                                              (_%__kont197763197764%_)
                                              (_%__kont197769197770%_))))
                                      (_%__kont197769197770%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd196178196367%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196179196369%_))
                                          (let ((_%e196194196236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196179196369%_))))
                                            (let ((_%tl196196196241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196194196236%_)))
                                                  (_%hd196195196239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196194196236%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196195196239%_))
                                                  (let ((_%e196197196244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196195196239%_))))
                                                    (let ((_%tl196199196249%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196197196244%_)))
                                                          (_%hd196198196247%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196197196244%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196198196247%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd196198196247%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196199196249%_))
                          (let ((_%e196200196252%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196199196249%_))))
                            (let ((_%tl196202196257%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196200196252%_)))
                                  (_%hd196201196255%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196200196252%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196202196257%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196196196241%_))
                                      (let ((_%__splice197767197768%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196196196241%_
                                                '0))))
                                        (let ((_%tl196205196262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197767197768%_
                                                  '1)))
                                              (_%target196203196260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197767197768%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196205196262%_))
                                              (_%__match197848197849%_
                                               _%e196177196364%_
                                               _%hd196178196367%_
                                               _%tl196179196369%_
                                               _%e196194196236%_
                                               _%hd196195196239%_
                                               _%tl196196196241%_
                                               _%e196197196244%_
                                               _%hd196198196247%_
                                               _%tl196199196249%_
                                               _%e196200196252%_
                                               _%hd196201196255%_
                                               _%tl196202196257%_
                                               _%__splice197767197768%_
                                               _%target196203196260%_
                                               _%tl196205196262%_)
                                              (_%__kont197769197770%_))))
                                      (_%__kont197769197770%_))
                                  (_%__kont197769197770%_))))
                          (_%__kont197769197770%_))
                      (_%__kont197769197770%_))
                  (_%__kont197769197770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197769197770%_))))
                                          (_%__kont197769197770%_))
                                      (_%__kont197769197770%_))))
                          (_%__kont197769197770%_))))
                  (_%__kont197769197770%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx196165%_ _%klass196166%_)
        (let ((_%expr-type196168%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx196165%_))))
          (if _%expr-type196168%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type196168%_ _%klass196166%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx196143%_ _%expr196144%_ _%type196145%_)
        (if (not _%type196145%_)
            '#f
            (let ((_%$e196148%_
                   (eq? (##structure-ref _%type196145%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e196148%_
                  _%$e196148%_
                  (let ((_%expr-type196152%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr196144%_))))
                    (if (not _%expr-type196152%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type196152%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e196156%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type196152%_
                                      'gxc#!abort::t))))
                              (if _%$e196156%_
                                  _%$e196156%_
                                  (let ((_%$e196159%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type196152%_
                                            _%type196145%_))))
                                    (if _%$e196159%_
                                        _%$e196159%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type196145%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type196145%_
                                                   _%expr-type196152%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx196143%_
                                                   _%expr196144%_
                                                   _%expr-type196152%_
                                                   _%type196145%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self193578195955%_ _%ctx195957%_ _%stx195958%_ _%args195959%_)
        (let* ((_%self195961%_ _%self193578195955%_)
               (_%self195963%_ _%self195961%_)
               (_%klass195973%_
                (let ((__tmp198368
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195963%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx195958%_ __tmp198368)))
               (_%fields195975%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195973%_
                           '5
                           '#f
                           '#f))))
               (_%args195981%_
                (map (lambda (_%g195976195978%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx195957%_ _%g195976195978%_)))
                     _%args195959%_))
               (_%inline-make-object195983%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self195963%_
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
                           _%self195963%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields195975%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass195986%_ _%klass195973%_)
               (_%$e196000%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass195986%_ '6 '#f '#f))))
          (if _%$e196000%_
              ((lambda (_%ctor196003%_)
                 (let ((_%$obj196005%_
                        (let ((__tmp198369
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp198369)))
                       (_%ctor-impl196006%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass195986%_
                           _%ctor196003%_))))
                   (let ((__tmp198370
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196005%_ '())
                                                  (cons _%inline-make-object195983%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl196006%_
                                                            (let ((__tmp198371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl196006%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj196005%_ '()))
                                             _%args195981%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp198371
                       _%stx195958%_
                       _%ctx195957%_))
                    (let ((_%$ctor196008%_
                           (let ((__tmp198372
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198372))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor196008%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195963%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj196005%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor196003%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor196008%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor196008%_ '()))
                              (cons (cons '%#ref (cons _%$obj196005%_ '()))
                                    _%args195981%_)))
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
                             _%self195963%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor196003%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj196005%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp198370 _%stx195958%_))))
               _%$e196000%_)
              (let ((_%$e196010%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass195986%_
                        '10
                        '#f
                        '#f))))
                (if _%$e196010%_
                    ((lambda (_%metaclass196013%_)
                       (let* ((_%$obj196015%_
                               (let ((__tmp198373
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198373)))
                              (_%metakons196017%_
                               (let ((__tmp198374
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx195958%_
                                         _%metaclass196013%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp198374
                                  'instance-init!)))
                              (__tmp198375
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj196015%_
                                                             '())
                                                       (cons _%inline-make-object195983%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons196017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp198376
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons196017%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self195963%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args195981%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp198376
                            _%stx195958%_
                            _%ctx195957%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195963%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj196015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args195981%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj196015%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp198375 _%stx195958%_)))
                     _%$e196010%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass195986%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp198377
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args195981%_))))
                              (declare (not safe))
                              (##fx= __tmp198377 _%fields195975%_))
                            (let ((__tmp198378
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self195963%_
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
                                              _%self195963%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args195981%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp198378
                               _%stx195958%_))
                            (let ((__tmp198380
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self195963%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp198379
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195986%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx195958%_
                               __tmp198380
                               __tmp198379)))
                        (let ((_%$obj196022%_
                               (let ((__tmp198381
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198381))))
                          (let _%lp196024%_ ((_%rest196026%_ _%args195981%_)
                                             (_%initializers196027%_ '()))
                            (let* ((_%__stx197851197852%_ _%rest196026%_)
                                   (_%g196031196052%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx197851197852%_)))))
                              (let ((_%__kont197853197854%_
                                     (lambda (_%L196106%_
                                              _%L196107%_
                                              _%L196108%_)
                                       (let* ((_%slot196135%_
                                               (let ((__tmp198382
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L196108%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp198382)))
                                              (_%off196137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass195986%_
                                                  _%slot196135%_))))
                                         (if _%off196137%_
                                             (_%lp196024%_
                                              _%L196106%_
                                              (cons (cons _%off196137%_
                                                          _%L196107%_)
                                                    _%initializers196027%_))
                                             (let ((__tmp198383
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195963%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx195958%_
                                                __tmp198383
                                                _%slot196135%_))))))
                                    (_%__kont197855197856%_
                                     (lambda ()
                                       (let ((__tmp198384
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195983%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp198387
                                     (cons (cons '%#ref
                                                 (cons _%$obj196022%_ '()))
                                           '()))
                                    (__tmp198385
                                     (let ((__tmp198386
                                            (lambda (_%i196066%_ _%r196067%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195963%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i196066%_) '()))
                              (cons (cons '%#ref (cons _%$obj196022%_ '()))
                                    (cons (cdr _%i196066%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r196067%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp198386
                                        '()
                                        _%initializers196027%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp198387 __tmp198385)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198384
                                          _%stx195958%_))))
                                    (_%__kont197857197858%_
                                     (lambda ()
                                       (let ((__tmp198388
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object195983%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj196022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args195981%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj196022%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198388
                                          _%stx195958%_)))))
                                (let* ((_%g196029196069%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx197851197852%_))
                                              (_%__kont197855197856%_)
                                              (_%__kont197857197858%_))))
                                       (_%__match197888197889%_
                                        (lambda (_%e196036196074%_
                                                 _%hd196037196077%_
                                                 _%tl196038196079%_
                                                 _%e196039196082%_
                                                 _%hd196040196085%_
                                                 _%tl196041196087%_
                                                 _%e196042196090%_
                                                 _%hd196043196093%_
                                                 _%tl196044196095%_
                                                 _%e196045196098%_
                                                 _%hd196046196101%_
                                                 _%tl196047196103%_)
                                          (let ((_%L196106%_
                                                 _%tl196047196103%_)
                                                (_%L196107%_
                                                 _%hd196046196101%_)
                                                (_%L196108%_
                                                 _%hd196043196093%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L196108%_))
                                                (_%__kont197853197854%_
                                                 _%L196106%_
                                                 _%L196107%_
                                                 _%L196108%_)
                                                (_%__kont197857197858%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx197851197852%_))
                                      (let ((_%e196036196074%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx197851197852%_))))
                                        (let ((_%tl196038196079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196036196074%_)))
                                              (_%hd196037196077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196036196074%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd196037196077%_))
                                              (let ((_%e196039196082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd196037196077%_))))
                                                (let ((_%tl196041196087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196039196082%_)))
                                                      (_%hd196040196085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196039196082%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd196040196085%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd196040196085%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196041196087%_))
                      (let ((_%e196042196090%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196041196087%_))))
                        (let ((_%tl196044196095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196042196090%_)))
                              (_%hd196043196093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196042196090%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196044196095%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196038196079%_))
                                  (let ((_%e196045196098%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196038196079%_))))
                                    (let ((_%tl196047196103%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196045196098%_)))
                                          (_%hd196046196101%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196045196098%_))))
                                      (_%__match197888197889%_
                                       _%e196036196074%_
                                       _%hd196037196077%_
                                       _%tl196038196079%_
                                       _%e196039196082%_
                                       _%hd196040196085%_
                                       _%tl196041196087%_
                                       _%e196042196090%_
                                       _%hd196043196093%_
                                       _%tl196044196095%_
                                       _%e196045196098%_
                                       _%hd196046196101%_
                                       _%tl196047196103%_)))
                                  (_%__kont197857197858%_))
                              (_%__kont197857197858%_))))
                      (_%__kont197857197858%_))
                  (_%__kont197857197858%_))
              (_%__kont197857197858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont197857197858%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196029196069%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self193579195736%_ _%ctx195738%_ _%stx195739%_ _%args195740%_)
        (let* ((_%self195742%_ _%self193579195736%_)
               (_%self195744%_ _%self195742%_)
               (_%arguments-ok?195754%_
                (let ((__method198332
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195744%_ 'check-arguments))))
                  (if __method198332
                      (let ()
                        (declare (not safe))
                        (__method198332
                         _%self195744%_
                         _%ctx195738%_
                         _%stx195739%_
                         _%args195740%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195744%_
                                 'check-arguments))
                        '#!void))))
               (_%g195756195766%_
                (lambda (_%g195757195763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195757195763%_))))
               (_%g195755195830%_
                (lambda (_%g195757195769%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195757195769%_))
                      (let ((_%e195759195771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195757195769%_))))
                        (let ((_%hd195760195774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195759195771%_)))
                              (_%tl195761195776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195759195771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195761195776%_))
                              ((lambda (_%L195779%_)
                                 (let* ((_%klass195792%_
                                         (let ((__tmp198389
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195744%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195739%_
                                            __tmp198389)))
                                        (_%field195794%_
                                         (let ((__tmp198390
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195744%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass195792%_
                                            __tmp198390)))
                                        (_%object195796%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195738%_
                                            _%L195779%_)))
                                        (_%klass195799%_ _%klass195792%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass195799%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp198391
                                              (cons (if (or _%arguments-ok?195754%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195744%_
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
                                 _%self195744%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field195794%_ '()))
                        (cons _%object195796%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198391
                                          _%stx195739%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195799%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp198392
                                                  (cons (if (or _%arguments-ok?195754%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195744%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195744%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195794%_ '()))
                            (cons _%object195796%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198392
                                              _%stx195739%_))
                                           (let ((_%$e195818%_
                                                  (let ((__tmp198393
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195744%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass195799%_
                                                     __tmp198393))))
                                             (if _%$e195818%_
                                                 ((lambda (_%klass195821%_)
                                                    (let ((__tmp198394
                                                           (cons (if (or _%arguments-ok?195754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195744%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self195744%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field195794%_ '()))
                                     (cons _%object195796%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp198394 _%stx195739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e195818%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self195744%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp198395
                                                            (let ((_%$obj195827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp198396
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198396))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj195827%_ '())
                                              (cons _%object195796%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass195799%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj195827%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195744%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195794%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195827%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?195754%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195827%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195744%_
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
                                                             _%self195744%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj195827%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self195744%_
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
               (gxc#xform-wrap-source __tmp198395 _%stx195739%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp198397
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object195796%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195744%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp198397 _%stx195739%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd195760195774%_)
                              (_%g195756195766%_ _%g195757195769%_))))
                      (_%g195756195766%_ _%g195757195769%_)))))
          (_%g195755195830%_ _%args195740%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass197619 __method-table197620)
        (let ((__check-arguments197621
               (let ((__tmp198398
                      (lambda ()
                        (let ((__method197622
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197620
                                  'check-arguments
                                  '#f))))
                          (if __method197622
                              __method197622
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198398)))
              (__slot197623
               (let ((__slot197624
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass197619 'slot))))
                 (if __slot197624
                     __slot197624
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self193579195736%_
                   _%ctx195738%_
                   _%stx195739%_
                   _%args195740%_)
            (let* ((_%self195742%_ _%self193579195736%_)
                   (_%self195744%_ _%self195742%_)
                   (_%arguments-ok?195754%_
                    ((force __check-arguments197621)
                     _%self195744%_
                     _%ctx195738%_
                     _%stx195739%_
                     _%args195740%_))
                   (_%g195756195766%_
                    (lambda (_%g195757195763%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195757195763%_))))
                   (_%g195755195830%_
                    (lambda (_%g195757195769%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195757195769%_))
                          (let ((_%e195759195771%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195757195769%_))))
                            (let ((_%hd195760195774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195759195771%_)))
                                  (_%tl195761195776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195759195771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195761195776%_))
                                  ((lambda (_%L195779%_)
                                     (let* ((_%klass195792%_
                                             (let ((__tmp198399
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195744%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx195739%_
                                                __tmp198399)))
                                            (_%field195794%_
                                             (let ((__tmp198400
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195744%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass195792%_
                                                __tmp198400)))
                                            (_%object195796%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx195738%_
                                                _%L195779%_)))
                                            (_%klass195799%_ _%klass195792%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195799%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198401
                                                  (cons (if (or _%arguments-ok?195754%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195744%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195744%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195794%_ '()))
                            (cons _%object195796%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198401
                                              _%stx195739%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195799%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198402
                                                      (cons (if (or _%arguments-ok?195754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195744%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195744%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195794%_ '()))
                                (cons _%object195796%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198402
                                                  _%stx195739%_))
                                               (let ((_%$e195818%_
                                                      (let ((__tmp198403
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self195744%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass195799%_ __tmp198403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e195818%_
                                                     ((lambda (_%klass195821%_)
                                                        (let ((__tmp198404
                                                               (cons (if (or _%arguments-ok?195754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195744%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self195744%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field195794%_ '()))
                                         (cons _%object195796%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp198404 _%stx195739%_)))
              _%$e195818%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195744%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp198405
                                                                (let ((_%$obj195827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp198406
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198406))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj195827%_ '())
                                                  (cons _%object195796%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass195799%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj195827%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195744%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195794%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195827%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?195754%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195827%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195744%_
                               __slot197623
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
                        (##unchecked-structure-ref _%self195744%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj195827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195744%_
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
                   (gxc#xform-wrap-source __tmp198405 _%stx195739%_))
                 (let ((__tmp198407
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object195796%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195744%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp198407 _%stx195739%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd195760195774%_)
                                  (_%g195756195766%_ _%g195757195769%_))))
                          (_%g195756195766%_ _%g195757195769%_)))))
              (_%g195755195830%_ _%args195740%_))))))
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
      (lambda (_%self193580195498%_ _%ctx195500%_ _%stx195501%_ _%args195502%_)
        (let* ((_%self195504%_ _%self193580195498%_)
               (_%self195506%_ _%self195504%_)
               (_%arguments-ok?195516%_
                (let ((__method198333
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195506%_ 'check-arguments))))
                  (if __method198333
                      (let ()
                        (declare (not safe))
                        (__method198333
                         _%self195506%_
                         _%ctx195500%_
                         _%stx195501%_
                         _%args195502%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195506%_
                                 'check-arguments))
                        '#!void))))
               (_%g195518195532%_
                (lambda (_%g195519195529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195519195529%_))))
               (_%g195517195611%_
                (lambda (_%g195519195535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195519195535%_))
                      (let ((_%e195522195537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195519195535%_))))
                        (let ((_%hd195523195540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195522195537%_)))
                              (_%tl195524195542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195522195537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195524195542%_))
                              (let ((_%e195525195545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195524195542%_))))
                                (let ((_%hd195526195548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195525195545%_)))
                                      (_%tl195527195550%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195525195545%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195527195550%_))
                                      ((lambda (_%L195553%_ _%L195554%_)
                                         (let* ((_%klass195570%_
                                                 (let ((__tmp198408
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195506%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx195501%_
                                                    __tmp198408)))
                                                (_%field195572%_
                                                 (let ((__tmp198409
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195506%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass195570%_
                                                    __tmp198409)))
                                                (_%object195574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195500%_
                                                    _%L195554%_)))
                                                (_%value195576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195500%_
                                                    _%L195553%_)))
                                                (_%klass195579%_
                                                 _%klass195570%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195579%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198410
                                                      (cons (if (or _%arguments-ok?195516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195506%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195506%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195572%_ '()))
                                (cons _%object195574%_
                                      (cons _%value195576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198410
                                                  _%stx195501%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195579%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198411
                                                          (cons (if (or _%arguments-ok?195516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195506%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195506%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195572%_ '()))
                                    (cons _%object195574%_
                                          (cons _%value195576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198411
                                                      _%stx195501%_))
                                                   (let ((_%$e195599%_
                                                          (let ((__tmp198412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195506%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass195579%_
                     __tmp198412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e195599%_
                                                         ((lambda (_%klass195602%_)
                                                            (let ((__tmp198413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?195516%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195506%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self195506%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field195572%_ '()))
                                             (cons _%object195574%_
                                                   (cons _%value195576%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198413 _%stx195501%_)))
                  _%$e195599%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self195506%_ '4 '#f '#f))
                     (let ((__tmp198414
                            (let ((_%$obj195608%_
                                   (let ((__tmp198415
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp198415))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj195608%_ '())
                                                      (cons _%object195574%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass195579%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj195608%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195506%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field195572%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195608%_
                                                              '()))
                                                  (cons _%value195576%_
                                                        '())))))
                          (cons (if _%arguments-ok?195516%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self195506%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value195576%_ '())))))
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
                             _%self195506%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj195608%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195506%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value195576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp198414 _%stx195501%_))
                     (let ((__tmp198416
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object195574%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195506%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value195576%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp198416
                        _%stx195501%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195526195548%_
                                       _%hd195523195540%_)
                                      (_%g195518195532%_ _%g195519195535%_))))
                              (_%g195518195532%_ _%g195519195535%_))))
                      (_%g195518195532%_ _%g195519195535%_)))))
          (_%g195517195611%_ _%args195502%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass197625 __method-table197626)
        (let ((__check-arguments197627
               (let ((__tmp198417
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
                 (__make-promise __tmp198417))))
          (lambda (_%self193580195498%_
                   _%ctx195500%_
                   _%stx195501%_
                   _%args195502%_)
            (let* ((_%self195504%_ _%self193580195498%_)
                   (_%self195506%_ _%self195504%_)
                   (_%arguments-ok?195516%_
                    ((force __check-arguments197627)
                     _%self195506%_
                     _%ctx195500%_
                     _%stx195501%_
                     _%args195502%_))
                   (_%g195518195532%_
                    (lambda (_%g195519195529%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195519195529%_))))
                   (_%g195517195611%_
                    (lambda (_%g195519195535%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195519195535%_))
                          (let ((_%e195522195537%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195519195535%_))))
                            (let ((_%hd195523195540%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195522195537%_)))
                                  (_%tl195524195542%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195522195537%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195524195542%_))
                                  (let ((_%e195525195545%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195524195542%_))))
                                    (let ((_%hd195526195548%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195525195545%_)))
                                          (_%tl195527195550%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195525195545%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195527195550%_))
                                          ((lambda (_%L195553%_ _%L195554%_)
                                             (let* ((_%klass195570%_
                                                     (let ((__tmp198418
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195506%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx195501%_
                                                        __tmp198418)))
                                                    (_%field195572%_
                                                     (let ((__tmp198419
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195506%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass195570%_
                                                        __tmp198419)))
                                                    (_%object195574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195500%_
                                                        _%L195554%_)))
                                                    (_%value195576%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195500%_
                                                        _%L195553%_)))
                                                    (_%klass195579%_
                                                     _%klass195570%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195579%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198420
                                                          (cons (if (or _%arguments-ok?195516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195506%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195506%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195572%_ '()))
                                    (cons _%object195574%_
                                          (cons _%value195576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198420
                                                      _%stx195501%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass195579%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp198421
                                                              (cons (if (or _%arguments-ok?195516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self195506%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195506%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195572%_ '()))
                                        (cons _%object195574%_
                                              (cons _%value195576%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp198421 _%stx195501%_))
               (let ((_%$e195599%_
                      (let ((__tmp198422
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195506%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass195579%_
                         __tmp198422))))
                 (if _%$e195599%_
                     ((lambda (_%klass195602%_)
                        (let ((__tmp198423
                               (cons (if (or _%arguments-ok?195516%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195506%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195506%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field195572%_
                                                             '()))
                                                 (cons _%object195574%_
                                                       (cons _%value195576%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp198423 _%stx195501%_)))
                      _%$e195599%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195506%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp198424
                                (let ((_%$obj195608%_
                                       (let ((__tmp198425
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp198425))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj195608%_
                                                                '())
                                                          (cons _%object195574%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass195579%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195608%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self195506%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field195572%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value195576%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?195516%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj195608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195506%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value195576%_ '())))))
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
                                 _%self195506%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj195608%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195506%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value195576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198424 _%stx195501%_))
                         (let ((__tmp198426
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object195574%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195506%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value195576%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp198426
                            _%stx195501%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd195526195548%_
                                           _%hd195523195540%_)
                                          (_%g195518195532%_
                                           _%g195519195535%_))))
                                  (_%g195518195532%_ _%g195519195535%_))))
                          (_%g195518195532%_ _%g195519195535%_)))))
              (_%g195517195611%_ _%args195502%_))))))
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
      (lambda (_%self193581195311%_ _%ctx195313%_ _%stx195314%_ _%args195315%_)
        (let* ((_%self195317%_ _%self193581195311%_)
               (_%self195319%_ _%self195317%_)
               (_%self195328195338%_ _%self195319%_)
               (_%E195330195342%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195328195338%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K195331195352%_
                (lambda (_%inline195345%_ _%dispatch195346%_ _%arity195347%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self195319%_
                         _%args195315%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx195314%_
                         _%arity195347%_)))
                  (if _%inline195345%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp198427 (_%inline195345%_ _%stx195314%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp198427
                           _%stx195314%_
                           _%ctx195313%_)))
                      (if (and _%dispatch195346%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch195346%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch195346%_))
                            (let ((__tmp198428
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch195346%_
                                                           '()))
                                               _%args195315%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp198428
                               _%stx195314%_
                               _%ctx195313%_)))
                          (gxc#!procedure::optimize-call
                           _%self195319%_
                           _%ctx195313%_
                           _%stx195314%_
                           _%args195315%_)))))
               (_%e195332195355%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195328195338%_ '1 '#f '#f)))
               (_%e195333195358%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195328195338%_ '2 '#f '#f)))
               (_%e195334195361%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195328195338%_ '3 '#f '#f)))
               (_%arity195364%_ _%e195334195361%_)
               (_%e195335195366%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195328195338%_ '4 '#f '#f)))
               (_%dispatch195369%_ _%e195335195366%_)
               (_%e195336195371%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195328195338%_ '5 '#f '#f)))
               (_%inline195374%_ _%e195336195371%_))
          (_%K195331195352%_
           _%inline195374%_
           _%dispatch195369%_
           _%arity195364%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self193582195161%_ _%ctx195163%_ _%stx195164%_ _%args195165%_)
        (let* ((_%self195167%_ _%self193582195161%_)
               (_%self195169%_ _%self195167%_)
               (_%$e195183%_
                (let ((__tmp198430
                       (lambda (_%g195178195180%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g195178195180%_
                            _%args195165%_))))
                      (__tmp198429
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195169%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp198430 __tmp198429))))
          (if _%$e195183%_
              ((lambda (_%clause195186%_)
                 (let ((__method198334
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause195186%_ 'optimize-call))))
                   (if __method198334
                       (let ()
                         (declare (not safe))
                         (__method198334
                          _%clause195186%_
                          _%ctx195163%_
                          _%stx195164%_
                          _%args195165%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause195186%_
                                  'optimize-call))
                         '#!void))))
               _%$e195183%_)
              (let ((__tmp198431
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self195169%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx195164%_
                 __tmp198431))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self193583194899%_ _%ctx194901%_ _%stx194902%_ _%args194903%_)
        (let* ((_%self194905%_ _%self193583194899%_)
               (_%self194907%_ _%self194905%_)
               (_%self194916194925%_ _%self194907%_)
               (_%E194918194929%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self194916194925%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K194919195020%_
                (lambda (_%dispatch194932%_ _%table194933%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch194932%_))
                      (let* ((_%g194934194944%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch194932%_)))
                             (_%else194936194952%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch194932%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx194901%_
                                   _%stx194902%_))))
                             (_%K194938195001%_
                              (lambda (_%main194955%_ _%keys194956%_)
                                (let ((_g198432_
                                       (gxc#!kw-lambda-split-args
                                        _%stx194902%_
                                        _%args194903%_)))
                                  (begin
                                    (let ((_g198433_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198432_)
                                                 (##values-length _g198432_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198433_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198433_)))
                                    (let ((_%pargs194958%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198432_ 0)))
                                          (_%kwargs194959%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198432_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main194955%_))
                                        (if _%table194933%_
                                            (let ((_%xargs194967%_
                                                   (map (lambda (_%key194961%_)
                                                          (let ((_%$e194963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key194961%_ _%kwargs194959%_))))
                    (if _%$e194963%_ _%$e194963%_ '(%#ref absent-value))))
                _%keys194956%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw194969%_)
                                                 (if (memq (car _%kw194969%_)
                                                           _%keys194956%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx194902%_
                                                        _%keys194956%_
                                                        _%kw194969%_))))
                                               _%kwargs194959%_)
                                              (let ((__tmp198434
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main194955%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs194958%_
                                  _%xargs194967%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp198434
                                                 _%stx194902%_
                                                 _%ctx194901%_)))
                                            (let* ((_%kwt194971%_
                                                    (let ((__tmp198435
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp198435)))
                                                   (_%kwvars194975%_
                                                    (map (lambda (_%_194973%_)
                                                           (let ((__tmp198436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp198436)))
                 _%kwargs194959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind194980%_
                                                    (map (lambda (_%kw194977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194978%_)
                   (cons (cons _%kwvar194978%_ '())
                         (cons (cdr _%kw194977%_) '())))
                 _%kwargs194959%_
                 _%kwvars194975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset194985%_
                                                    (map (lambda (_%kw194982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194983%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt194971%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw194982%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar194983%_
                                                             '()))
                                                 '()))))))
                 _%kwargs194959%_
                 _%kwvars194975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs194990%_
                                                    (map (lambda (_%kw194987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar194988%_)
                   (cons (car _%kw194987%_)
                         (cons '%#ref (cons _%kwvar194988%_ '()))))
                 _%kwargs194959%_
                 _%kwvars194975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs194998%_
                                                    (map (lambda (_%key194992%_)
                                                           (let ((_%$e194994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key194992%_ _%xkwargs194990%_))))
                     (if _%$e194994%_ _%$e194994%_ '(%#ref absent-value))))
                 _%keys194956%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198437
                                                    (cons '%#let-values
                                                          (cons _%kwbind194980%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt194971%_ '())
                                                      (cons (let ((__tmp198438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs194959%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198438 _%stx194902%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp198439
                                                             (cons (let ((__tmp198440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main194955%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt194971%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs194958%_
                                                       _%xargs194998%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp198440 _%stx194902%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp198439 _%kwset194985%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp198437
                                               _%stx194902%_
                                               _%ctx194901%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g194934194944%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e194939195004%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194934194944%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e194940195007%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194934194944%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e194941195010%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194934194944%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys195013%_ _%e194941195010%_)
                                   (_%e194942195015%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g194934194944%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main195018%_ _%e194942195015%_))
                              (_%K194938195001%_
                               _%main195018%_
                               _%keys195013%_))
                            (_%else194936194952%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx194901%_ _%stx194902%_)))))
               (_%e194920195023%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194916194925%_ '1 '#f '#f)))
               (_%e194921195026%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194916194925%_ '2 '#f '#f)))
               (_%e194922195029%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194916194925%_ '3 '#f '#f)))
               (_%table195032%_ _%e194922195029%_)
               (_%e194923195034%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194916194925%_ '4 '#f '#f)))
               (_%dispatch195037%_ _%e194923195034%_))
          (_%K194919195020%_ _%dispatch195037%_ _%table195032%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx194512%_ _%args194513%_)
        (let _%lp194515%_ ((_%rest194517%_ _%args194513%_)
                           (_%pargs194518%_ '())
                           (_%kwargs194519%_ '()))
          (let* ((_%__stx197893197894%_ _%rest194517%_)
                 (_%g194525194577%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx197893197894%_)))))
            (let ((_%__kont197895197896%_
                   (lambda (_%L194756%_ _%L194757%_)
                     (_%lp194515%_
                      _%L194756%_
                      (cons _%L194757%_ _%pargs194518%_)
                      _%kwargs194519%_)))
                  (_%__kont197897197898%_
                   (lambda (_%L194702%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L194702%_ _%pargs194518%_))
                             (reverse _%kwargs194519%_))))
                  (_%__kont197899197900%_
                   (lambda (_%L194649%_ _%L194650%_ _%L194651%_)
                     (let ((_%kw194668%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L194651%_))))
                       (if (assq _%kw194668%_ _%kwargs194519%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx194512%_
                              _%kw194668%_))
                           (_%lp194515%_
                            _%L194649%_
                            _%pargs194518%_
                            (cons (cons _%kw194668%_ _%L194650%_)
                                  _%kwargs194519%_))))))
                  (_%__kont197901197902%_
                   (lambda (_%L194597%_ _%L194598%_)
                     (_%lp194515%_
                      _%L194597%_
                      (cons _%L194598%_ _%pargs194518%_)
                      _%kwargs194519%_)))
                  (_%__kont197903197904%_
                   (lambda ()
                     (values (reverse _%pargs194518%_)
                             (reverse _%kwargs194519%_)))))
              (let ((_%__match198000198001%_
                     (lambda (_%e194556194617%_
                              _%hd194557194620%_
                              _%tl194558194622%_
                              _%e194559194625%_
                              _%hd194560194628%_
                              _%tl194561194630%_
                              _%e194562194633%_
                              _%hd194563194636%_
                              _%tl194564194638%_
                              _%e194565194641%_
                              _%hd194566194644%_
                              _%tl194567194646%_)
                       (let ((_%L194649%_ _%tl194567194646%_)
                             (_%L194650%_ _%hd194566194644%_)
                             (_%L194651%_ _%hd194563194636%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L194651%_))
                             (_%__kont197899197900%_
                              _%L194649%_
                              _%L194650%_
                              _%L194651%_)
                             (_%__kont197901197902%_
                              _%tl194558194622%_
                              _%hd194557194620%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx197893197894%_))
                    (let ((_%e194529194721%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx197893197894%_))))
                      (let ((_%tl194531194726%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194529194721%_)))
                            (_%hd194530194724%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194529194721%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd194530194724%_))
                            (let ((_%e194532194729%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd194530194724%_))))
                              (let ((_%tl194534194734%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194532194729%_)))
                                    (_%hd194533194732%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194532194729%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd194533194732%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd194533194732%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194534194734%_))
                                            (let ((_%e194535194737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194534194734%_))))
                                              (let ((_%tl194537194742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194535194737%_)))
                                                    (_%hd194536194740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194535194737%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd194536194740%_))
                                                    (let ((_%e194538194745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd194536194740%_))))
                                                      (if (equal? _%e194538194745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194537194742%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194531194726%_))
                          (let ((_%e194539194748%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194531194726%_))))
                            (let ((_%tl194541194753%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194539194748%_)))
                                  (_%hd194540194751%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194539194748%_))))
                              (_%__kont197895197896%_
                               _%tl194541194753%_
                               _%hd194540194751%_)))
                          (_%__kont197901197902%_
                           _%tl194531194726%_
                           _%hd194530194724%_))
                      (_%__kont197901197902%_
                       _%tl194531194726%_
                       _%hd194530194724%_))
                  (if (equal? _%e194538194745%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194537194742%_))
                          (_%__kont197897197898%_ _%tl194531194726%_)
                          (_%__kont197901197902%_
                           _%tl194531194726%_
                           _%hd194530194724%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194537194742%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194531194726%_))
                              (let ((_%e194565194641%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194531194726%_))))
                                (let ((_%tl194567194646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194565194641%_)))
                                      (_%hd194566194644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194565194641%_))))
                                  (_%__match198000198001%_
                                   _%e194529194721%_
                                   _%hd194530194724%_
                                   _%tl194531194726%_
                                   _%e194532194729%_
                                   _%hd194533194732%_
                                   _%tl194534194734%_
                                   _%e194535194737%_
                                   _%hd194536194740%_
                                   _%tl194537194742%_
                                   _%e194565194641%_
                                   _%hd194566194644%_
                                   _%tl194567194646%_)))
                              (_%__kont197901197902%_
                               _%tl194531194726%_
                               _%hd194530194724%_))
                          (_%__kont197901197902%_
                           _%tl194531194726%_
                           _%hd194530194724%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194537194742%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl194531194726%_))
                                                            (let ((_%e194565194641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194531194726%_))))
                      (let ((_%tl194567194646%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194565194641%_)))
                            (_%hd194566194644%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194565194641%_))))
                        (_%__match198000198001%_
                         _%e194529194721%_
                         _%hd194530194724%_
                         _%tl194531194726%_
                         _%e194532194729%_
                         _%hd194533194732%_
                         _%tl194534194734%_
                         _%e194535194737%_
                         _%hd194536194740%_
                         _%tl194537194742%_
                         _%e194565194641%_
                         _%hd194566194644%_
                         _%tl194567194646%_)))
                    (_%__kont197901197902%_
                     _%tl194531194726%_
                     _%hd194530194724%_))
                (_%__kont197901197902%_
                 _%tl194531194726%_
                 _%hd194530194724%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont197901197902%_
                                             _%tl194531194726%_
                                             _%hd194530194724%_))
                                        (_%__kont197901197902%_
                                         _%tl194531194726%_
                                         _%hd194530194724%_))
                                    (_%__kont197901197902%_
                                     _%tl194531194726%_
                                     _%hd194530194724%_))))
                            (_%__kont197901197902%_
                             _%tl194531194726%_
                             _%hd194530194724%_))))
                    (_%__kont197903197904%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self193584194494%_ _%ctx194496%_ _%stx194497%_ _%args194498%_)
        (let* ((_%self194500%_ _%self193584194494%_)
               (_%self194502%_ _%self194500%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx194496%_ _%stx194497%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self194182%_ _%stx194183%_)
        (let* ((_%__stx198009198010%_ _%stx194183%_)
               (_%g194186194226%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198009198010%_)))))
          (let ((_%__kont198011198012%_
                 (lambda (_%L194332%_ _%L194333%_)
                   (let ((_%$e194360%_
                          (member 'return:
                                  (let ((__tmp198441
                                         (lambda (_%g194352194355%_
                                                  _%g194353194357%_)
                                           (cons _%g194352194355%_
                                                 _%g194353194357%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp198441 '() _%L194333%_))
                                  gx#stx-eq?)))
                     (if _%$e194360%_
                         ((lambda (_%tail194363%_)
                            (let ((_%type194365%_
                                   (let ((__tmp198442
                                          (let ((__tmp198443
                                                 (cadr _%tail194363%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp198443))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx194183%_
                                      __tmp198442))))
                              (gxc#check-return-type!
                               _%stx194183%_
                               _%L194332%_
                               _%type194365%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self194182%_
                                 _%L194332%_))))
                          _%$e194360%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self194182%_ _%L194332%_))))))
                (_%__kont198015198016%_
                 (lambda (_%L194255%_ _%L194256%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self194182%_ _%L194255%_)))))
            (let ((_%__match198046198047%_
                   (lambda (_%e194190194276%_
                            _%hd194191194279%_
                            _%tl194192194281%_
                            _%e194193194284%_
                            _%hd194194194287%_
                            _%tl194195194289%_
                            _%e194196194292%_
                            _%hd194197194295%_
                            _%tl194198194297%_
                            _%__splice198013198014%_
                            _%target194199194300%_
                            _%tl194201194302%_)
                     (letrec ((_%loop194202194305%_
                               (lambda (_%hd194200194308%_
                                        _%signature194206194310%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd194200194308%_))
                                     (let ((_%e194203194313%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd194200194308%_))))
                                       (let ((_%lp-tl194205194318%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e194203194313%_)))
                                             (_%lp-hd194204194316%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e194203194313%_))))
                                         (_%loop194202194305%_
                                          _%lp-tl194205194318%_
                                          (cons _%lp-hd194204194316%_
                                                _%signature194206194310%_))))
                                     (let ((_%signature194207194321%_
                                            (reverse _%signature194206194310%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl194195194289%_))
                                           (let ((_%e194208194324%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl194195194289%_))))
                                             (let ((_%tl194210194329%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e194208194324%_)))
                                                   (_%hd194209194327%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e194208194324%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl194210194329%_))
                                                   (_%__kont198011198012%_
                                                    _%hd194209194327%_
                                                    _%signature194207194321%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g194186194226%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g194186194226%_))))))))
                       (_%loop194202194305%_ _%target194199194300%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198009198010%_))
                  (let ((_%e194190194276%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198009198010%_))))
                    (let ((_%tl194192194281%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194190194276%_)))
                          (_%hd194191194279%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194190194276%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194192194281%_))
                          (let ((_%e194193194284%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194192194281%_))))
                            (let ((_%tl194195194289%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194193194284%_)))
                                  (_%hd194194194287%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194193194284%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194194194287%_))
                                  (let ((_%e194196194292%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194194194287%_))))
                                    (let ((_%tl194198194297%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194196194292%_)))
                                          (_%hd194197194295%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194196194292%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194197194295%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd194197194295%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194198194297%_))
                                                  (let ((_%__splice198013198014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194198194297%_
                                                            '0))))
                                                    (let ((_%tl194201194302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198013198014%_
                                                              '1)))
                                                          (_%target194199194300%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198013198014%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194201194302%_))
                                                          (_%__match198046198047%_
                                                           _%e194190194276%_
                                                           _%hd194191194279%_
                                                           _%tl194192194281%_
                                                           _%e194193194284%_
                                                           _%hd194194194287%_
                                                           _%tl194195194289%_
                                                           _%e194196194292%_
                                                           _%hd194197194295%_
                                                           _%tl194198194297%_
                                                           _%__splice198013198014%_
                                                           _%target194199194300%_
                                                           _%tl194201194302%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194195194289%_))
                      (let ((_%e194219194247%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194195194289%_))))
                        (let ((_%tl194221194252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194219194247%_)))
                              (_%hd194220194250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194219194247%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194221194252%_))
                              (_%__kont198015198016%_
                               _%hd194220194250%_
                               _%hd194194194287%_)
                              (let ()
                                (declare (not safe))
                                (_%g194186194226%_)))))
                      (let () (declare (not safe)) (_%g194186194226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194195194289%_))
                                                      (let ((_%e194219194247%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194195194289%_))))
                (let ((_%tl194221194252%_
                       (let () (declare (not safe)) (##cdr _%e194219194247%_)))
                      (_%hd194220194250%_
                       (let ()
                         (declare (not safe))
                         (##car _%e194219194247%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194221194252%_))
                      (_%__kont198015198016%_
                       _%hd194220194250%_
                       _%hd194194194287%_)
                      (let () (declare (not safe)) (_%g194186194226%_)))))
              (let () (declare (not safe)) (_%g194186194226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194195194289%_))
                                                  (let ((_%e194219194247%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194195194289%_))))
                                                    (let ((_%tl194221194252%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194219194247%_)))
                                                          (_%hd194220194250%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194219194247%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194221194252%_))
                                                          (_%__kont198015198016%_
                                                           _%hd194220194250%_
                                                           _%hd194194194287%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194186194226%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194186194226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194195194289%_))
                                              (let ((_%e194219194247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194195194289%_))))
                                                (let ((_%tl194221194252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194219194247%_)))
                                                      (_%hd194220194250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194219194247%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194221194252%_))
                                                      (_%__kont198015198016%_
                                                       _%hd194220194250%_
                                                       _%hd194194194287%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194186194226%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194186194226%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194195194289%_))
                                      (let ((_%e194219194247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194195194289%_))))
                                        (let ((_%tl194221194252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194219194247%_)))
                                              (_%hd194220194250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194219194247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194221194252%_))
                                              (_%__kont198015198016%_
                                               _%hd194220194250%_
                                               _%hd194194194287%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194186194226%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194186194226%_))))))
                          (let () (declare (not safe)) (_%g194186194226%_)))))
                  (let () (declare (not safe)) (_%g194186194226%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx194160%_ _%expr194161%_ _%type194162%_)
        (let ((_%$e194164%_ (not _%type194162%_)))
          (if _%$e194164%_
              _%$e194164%_
              (let ((_%$e194167%_
                     (eq? (##structure-ref _%type194162%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e194167%_
                    _%$e194167%_
                    (let ((_%expr-type194171%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr194161%_))))
                      (if (not _%expr-type194171%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx194160%_
                             _%type194162%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type194171%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx194160%_
                                 _%type194162%_
                                 _%expr-type194171%_))
                              (let ((_%$e194175%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type194171%_
                                        'gxc#!abort::t))))
                                (if _%$e194175%_
                                    _%$e194175%_
                                    (let ((_%$e194178%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type194171%_
                                              _%type194162%_))))
                                      (if _%$e194178%_
                                          _%$e194178%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx194160%_
                                             _%type194162%_
                                             _%expr-type194171%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self193586%_ _%stx193587%_)
        (let* ((_%__stx198091198092%_ _%stx193587%_)
               (_%g193592193702%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198091198092%_)))))
          (let ((_%__kont198093198094%_
                 (lambda (_%L194134%_ _%L194135%_ _%L194136%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L194136%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193586%_ _%L194135%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193586%_ _%L194134%_)))))
                (_%__kont198095198096%_
                 (lambda (_%L193960%_ _%L193961%_ _%L193962%_ _%L193963%_)
                   (let ((_%$e193995%_
                          (let ((__tmp198444
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193963%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp198444))))
                     (if _%$e193995%_
                         ((lambda (_%pred-type193998%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type193998%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type193998%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test194003%_
                                        (let ((__tmp198445
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L193963%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L193962%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp198445
                                           _%stx193587%_
                                           _%self193586%_)))
                                       (_%K194007%_
                                        (let ((__tmp198446
                                               (lambda ()
                                                 (let ((__tmp198449
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self193586%_
                                                             _%L193961%_))))
                                                       (__tmp198447
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L193962%_))
                            (let ((__tmp198448
                                   (##structure-ref
                                    _%pred-type193998%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx193587%_
                               __tmp198448)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp198449
                                                    gxc#current-compile-path-type
                                                    __tmp198447)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198446)))
                                       (_%E194010%_
                                        (let ((__tmp198450
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self193586%_
                                                    _%L193960%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198450)))
                                       (_%__stx198069198070%_ _%test194003%_)
                                       (_%g194014194028%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx198069198070%_)))))
                                  (let ((_%__kont198071198072%_
                                         (lambda (_%L194056%_ _%L194057%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L194056%_))
                                               (force _%K194007%_)
                                               (force _%E194010%_))))
                                        (_%__kont198073198074%_
                                         (lambda ()
                                           (let ((__tmp198451
                                                  (cons '%#if
                                                        (cons _%test194003%_
                                                              (cons (force _%K194007%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E194010%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198451
                                              _%stx193587%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx198069198070%_))
                                        (let ((_%e194018194040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx198069198070%_))))
                                          (let ((_%tl194020194045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194018194040%_)))
                                                (_%hd194019194043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194018194040%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194020194045%_))
                                                (let ((_%e194021194048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194020194045%_))))
                                                  (let ((_%tl194023194053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194021194048%_)))
                                                        (_%hd194022194051%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194021194048%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194023194053%_))
                                                        (_%__kont198071198072%_
                                                         _%hd194022194051%_
                                                         _%hd194019194043%_)
                                                        (_%__kont198073198074%_))))
                                                (_%__kont198073198074%_))))
                                        (_%__kont198073198074%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self193586%_
                                   _%stx193587%_))))
                          _%$e193995%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self193586%_
                            _%stx193587%_))))))
                (_%__kont198097198098%_
                 (lambda (_%L193836%_ _%L193837%_ _%L193838%_ _%L193839%_)
                   (gxc#optimize-if%
                    _%self193586%_
                    (let ((__tmp198452
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L193838%_
                                       (cons _%L193836%_
                                             (cons _%L193837%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198452 _%stx193587%_)))))
                (_%__kont198099198100%_
                 (lambda (_%L193739%_ _%L193740%_ _%L193741%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self193586%_ _%stx193587%_)))))
            (let ((_%__match198298198299%_
                   (lambda (_%e193656193764%_
                            _%hd193657193767%_
                            _%tl193658193769%_
                            _%e193659193772%_
                            _%hd193660193775%_
                            _%tl193661193777%_
                            _%e193662193780%_
                            _%hd193663193783%_
                            _%tl193664193785%_
                            _%e193665193788%_
                            _%hd193666193791%_
                            _%tl193667193793%_
                            _%e193668193796%_
                            _%hd193669193799%_
                            _%tl193670193801%_
                            _%e193671193804%_
                            _%hd193672193807%_
                            _%tl193673193809%_
                            _%e193674193812%_
                            _%hd193675193815%_
                            _%tl193676193817%_
                            _%e193677193820%_
                            _%hd193678193823%_
                            _%tl193679193825%_
                            _%e193680193828%_
                            _%hd193681193831%_
                            _%tl193682193833%_)
                     (let ((_%L193836%_ _%hd193681193831%_)
                           (_%L193837%_ _%hd193678193823%_)
                           (_%L193838%_ _%hd193675193815%_)
                           (_%L193839%_ _%hd193672193807%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L193839%_ 'not))
                           (_%__kont198097198098%_
                            _%L193836%_
                            _%L193837%_
                            _%L193838%_
                            _%L193839%_)
                           (_%__kont198099198100%_
                            _%hd193681193831%_
                            _%hd193678193823%_
                            _%hd193660193775%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198091198092%_))
                  (let ((_%e193597194086%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198091198092%_))))
                    (let ((_%tl193599194091%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193597194086%_)))
                          (_%hd193598194089%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193597194086%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193599194091%_))
                          (let ((_%e193600194094%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193599194091%_))))
                            (let ((_%tl193602194099%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193600194094%_)))
                                  (_%hd193601194097%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193600194094%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193601194097%_))
                                  (let ((_%e193603194102%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193601194097%_))))
                                    (let ((_%tl193605194107%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193603194102%_)))
                                          (_%hd193604194105%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193603194102%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193604194105%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd193604194105%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193605194107%_))
                                                  (let ((_%e193606194110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193605194107%_))))
                                                    (let ((_%tl193608194115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193606194110%_)))
                                                          (_%hd193607194113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193606194110%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193608194115%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193602194099%_))
                      (let ((_%e193609194118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193602194099%_))))
                        (let ((_%tl193611194123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193609194118%_)))
                              (_%hd193610194121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193609194118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193611194123%_))
                              (let ((_%e193612194126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193611194123%_))))
                                (let ((_%tl193614194131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193612194126%_)))
                                      (_%hd193613194129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193612194126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193614194131%_))
                                      (_%__kont198093198094%_
                                       _%hd193613194129%_
                                       _%hd193610194121%_
                                       _%hd193607194113%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193592193702%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193592193702%_)))))
                      (let () (declare (not safe)) (_%g193592193702%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193602194099%_))
                      (let ((_%e193692193723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193602194099%_))))
                        (let ((_%tl193694193728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193692193723%_)))
                              (_%hd193693193726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193692193723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193694193728%_))
                              (let ((_%e193695193731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193694193728%_))))
                                (let ((_%tl193697193736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193695193731%_)))
                                      (_%hd193696193734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193695193731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193697193736%_))
                                      (_%__kont198099198100%_
                                       _%hd193696193734%_
                                       _%hd193693193726%_
                                       _%hd193601194097%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193592193702%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193592193702%_)))))
                      (let () (declare (not safe)) (_%g193592193702%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193602194099%_))
                                                      (let ((_%e193692193723%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193602194099%_))))
                (let ((_%tl193694193728%_
                       (let () (declare (not safe)) (##cdr _%e193692193723%_)))
                      (_%hd193693193726%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193692193723%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193694193728%_))
                      (let ((_%e193695193731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193694193728%_))))
                        (let ((_%tl193697193736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193695193731%_)))
                              (_%hd193696193734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193695193731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193697193736%_))
                              (_%__kont198099198100%_
                               _%hd193696193734%_
                               _%hd193693193726%_
                               _%hd193601194097%_)
                              (let ()
                                (declare (not safe))
                                (_%g193592193702%_)))))
                      (let () (declare (not safe)) (_%g193592193702%_)))))
              (let () (declare (not safe)) (_%g193592193702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd193604194105%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193605194107%_))
                                                      (let ((_%e193628193896%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193605194107%_))))
                (let ((_%tl193630193901%_
                       (let () (declare (not safe)) (##cdr _%e193628193896%_)))
                      (_%hd193629193899%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193628193896%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193629193899%_))
                      (let ((_%e193631193904%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193629193899%_))))
                        (let ((_%tl193633193909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193631193904%_)))
                              (_%hd193632193907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193631193904%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193632193907%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193632193907%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193633193909%_))
                                      (let ((_%e193634193912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193633193909%_))))
                                        (let ((_%tl193636193917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193634193912%_)))
                                              (_%hd193635193915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193634193912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193636193917%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193630193901%_))
                                                  (let ((_%e193637193920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193630193901%_))))
                                                    (let ((_%tl193639193925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193637193920%_)))
                                                          (_%hd193638193923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193637193920%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193638193923%_))
                                                          (let ((_%e193640193928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193638193923%_))))
                    (let ((_%tl193642193933%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193640193928%_)))
                          (_%hd193641193931%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193640193928%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193641193931%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd193641193931%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193642193933%_))
                                  (let ((_%e193643193936%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193642193933%_))))
                                    (let ((_%tl193645193941%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193643193936%_)))
                                          (_%hd193644193939%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193643193936%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193645193941%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193639193925%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193602194099%_))
                                                  (let ((_%e193646193944%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193602194099%_))))
                                                    (let ((_%tl193648193949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193646193944%_)))
                                                          (_%hd193647193947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193646193944%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193648193949%_))
                                                          (let ((_%e193649193952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193648193949%_))))
                    (let ((_%tl193651193957%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193649193952%_)))
                          (_%hd193650193955%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193649193952%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193651193957%_))
                          (_%__kont198095198096%_
                           _%hd193650193955%_
                           _%hd193647193947%_
                           _%hd193644193939%_
                           _%hd193635193915%_)
                          (let () (declare (not safe)) (_%g193592193702%_)))))
                  (let () (declare (not safe)) (_%g193592193702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193602194099%_))
                                                  (let ((_%e193692193723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193602194099%_))))
                                                    (let ((_%tl193694193728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193692193723%_)))
                                                          (_%hd193693193726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193692193723%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193694193728%_))
                                                          (let ((_%e193695193731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193694193728%_))))
                    (let ((_%tl193697193736%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193695193731%_)))
                          (_%hd193696193734%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193695193731%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193697193736%_))
                          (_%__kont198099198100%_
                           _%hd193696193734%_
                           _%hd193693193726%_
                           _%hd193601194097%_)
                          (let () (declare (not safe)) (_%g193592193702%_)))))
                  (let () (declare (not safe)) (_%g193592193702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193639193925%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193602194099%_))
                                                  (let ((_%e193677193820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193602194099%_))))
                                                    (let ((_%tl193679193825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193677193820%_)))
                                                          (_%hd193678193823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193677193820%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193679193825%_))
                                                          (let ((_%e193680193828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193679193825%_))))
                    (let ((_%tl193682193833%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193680193828%_)))
                          (_%hd193681193831%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193680193828%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193682193833%_))
                          (_%__match198298198299%_
                           _%e193597194086%_
                           _%hd193598194089%_
                           _%tl193599194091%_
                           _%e193600194094%_
                           _%hd193601194097%_
                           _%tl193602194099%_
                           _%e193603194102%_
                           _%hd193604194105%_
                           _%tl193605194107%_
                           _%e193628193896%_
                           _%hd193629193899%_
                           _%tl193630193901%_
                           _%e193631193904%_
                           _%hd193632193907%_
                           _%tl193633193909%_
                           _%e193634193912%_
                           _%hd193635193915%_
                           _%tl193636193917%_
                           _%e193637193920%_
                           _%hd193638193923%_
                           _%tl193639193925%_
                           _%e193677193820%_
                           _%hd193678193823%_
                           _%tl193679193825%_
                           _%e193680193828%_
                           _%hd193681193831%_
                           _%tl193682193833%_)
                          (let () (declare (not safe)) (_%g193592193702%_)))))
                  (let () (declare (not safe)) (_%g193592193702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193602194099%_))
                                                  (let ((_%e193692193723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193602194099%_))))
                                                    (let ((_%tl193694193728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193692193723%_)))
                                                          (_%hd193693193726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193692193723%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193694193728%_))
                                                          (let ((_%e193695193731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193694193728%_))))
                    (let ((_%tl193697193736%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193695193731%_)))
                          (_%hd193696193734%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193695193731%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193697193736%_))
                          (_%__kont198099198100%_
                           _%hd193696193734%_
                           _%hd193693193726%_
                           _%hd193601194097%_)
                          (let () (declare (not safe)) (_%g193592193702%_)))))
                  (let () (declare (not safe)) (_%g193592193702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193639193925%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193602194099%_))
                                          (let ((_%e193677193820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193602194099%_))))
                                            (let ((_%tl193679193825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193677193820%_)))
                                                  (_%hd193678193823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193677193820%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193679193825%_))
                                                  (let ((_%e193680193828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193679193825%_))))
                                                    (let ((_%tl193682193833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193680193828%_)))
                                                          (_%hd193681193831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193680193828%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193682193833%_))
                                                          (_%__match198298198299%_
                                                           _%e193597194086%_
                                                           _%hd193598194089%_
                                                           _%tl193599194091%_
                                                           _%e193600194094%_
                                                           _%hd193601194097%_
                                                           _%tl193602194099%_
                                                           _%e193603194102%_
                                                           _%hd193604194105%_
                                                           _%tl193605194107%_
                                                           _%e193628193896%_
                                                           _%hd193629193899%_
                                                           _%tl193630193901%_
                                                           _%e193631193904%_
                                                           _%hd193632193907%_
                                                           _%tl193633193909%_
                                                           _%e193634193912%_
                                                           _%hd193635193915%_
                                                           _%tl193636193917%_
                                                           _%e193637193920%_
                                                           _%hd193638193923%_
                                                           _%tl193639193925%_
                                                           _%e193677193820%_
                                                           _%hd193678193823%_
                                                           _%tl193679193825%_
                                                           _%e193680193828%_
                                                           _%hd193681193831%_
                                                           _%tl193682193833%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193592193702%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193592193702%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193602194099%_))
                                          (let ((_%e193692193723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193602194099%_))))
                                            (let ((_%tl193694193728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193692193723%_)))
                                                  (_%hd193693193726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193692193723%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193694193728%_))
                                                  (let ((_%e193695193731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193694193728%_))))
                                                    (let ((_%tl193697193736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193695193731%_)))
                                                          (_%hd193696193734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193695193731%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193697193736%_))
                                                          (_%__kont198099198100%_
                                                           _%hd193696193734%_
                                                           _%hd193693193726%_
                                                           _%hd193601194097%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193592193702%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193592193702%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193639193925%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193602194099%_))
                                      (let ((_%e193677193820%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193602194099%_))))
                                        (let ((_%tl193679193825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193677193820%_)))
                                              (_%hd193678193823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193677193820%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193679193825%_))
                                              (let ((_%e193680193828%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193679193825%_))))
                                                (let ((_%tl193682193833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193680193828%_)))
                                                      (_%hd193681193831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193680193828%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193682193833%_))
                                                      (_%__match198298198299%_
                                                       _%e193597194086%_
                                                       _%hd193598194089%_
                                                       _%tl193599194091%_
                                                       _%e193600194094%_
                                                       _%hd193601194097%_
                                                       _%tl193602194099%_
                                                       _%e193603194102%_
                                                       _%hd193604194105%_
                                                       _%tl193605194107%_
                                                       _%e193628193896%_
                                                       _%hd193629193899%_
                                                       _%tl193630193901%_
                                                       _%e193631193904%_
                                                       _%hd193632193907%_
                                                       _%tl193633193909%_
                                                       _%e193634193912%_
                                                       _%hd193635193915%_
                                                       _%tl193636193917%_
                                                       _%e193637193920%_
                                                       _%hd193638193923%_
                                                       _%tl193639193925%_
                                                       _%e193677193820%_
                                                       _%hd193678193823%_
                                                       _%tl193679193825%_
                                                       _%e193680193828%_
                                                       _%hd193681193831%_
                                                       _%tl193682193833%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193592193702%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193592193702%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193592193702%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193602194099%_))
                                      (let ((_%e193692193723%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193602194099%_))))
                                        (let ((_%tl193694193728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193692193723%_)))
                                              (_%hd193693193726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193692193723%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193694193728%_))
                                              (let ((_%e193695193731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193694193728%_))))
                                                (let ((_%tl193697193736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193695193731%_)))
                                                      (_%hd193696193734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193695193731%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193697193736%_))
                                                      (_%__kont198099198100%_
                                                       _%hd193696193734%_
                                                       _%hd193693193726%_
                                                       _%hd193601194097%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193592193702%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193592193702%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193592193702%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193639193925%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193602194099%_))
                                  (let ((_%e193677193820%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193602194099%_))))
                                    (let ((_%tl193679193825%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193677193820%_)))
                                          (_%hd193678193823%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193677193820%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193679193825%_))
                                          (let ((_%e193680193828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193679193825%_))))
                                            (let ((_%tl193682193833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193680193828%_)))
                                                  (_%hd193681193831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193680193828%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193682193833%_))
                                                  (_%__match198298198299%_
                                                   _%e193597194086%_
                                                   _%hd193598194089%_
                                                   _%tl193599194091%_
                                                   _%e193600194094%_
                                                   _%hd193601194097%_
                                                   _%tl193602194099%_
                                                   _%e193603194102%_
                                                   _%hd193604194105%_
                                                   _%tl193605194107%_
                                                   _%e193628193896%_
                                                   _%hd193629193899%_
                                                   _%tl193630193901%_
                                                   _%e193631193904%_
                                                   _%hd193632193907%_
                                                   _%tl193633193909%_
                                                   _%e193634193912%_
                                                   _%hd193635193915%_
                                                   _%tl193636193917%_
                                                   _%e193637193920%_
                                                   _%hd193638193923%_
                                                   _%tl193639193925%_
                                                   _%e193677193820%_
                                                   _%hd193678193823%_
                                                   _%tl193679193825%_
                                                   _%e193680193828%_
                                                   _%hd193681193831%_
                                                   _%tl193682193833%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193592193702%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193592193702%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193602194099%_))
                                  (let ((_%e193692193723%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193602194099%_))))
                                    (let ((_%tl193694193728%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193692193723%_)))
                                          (_%hd193693193726%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193692193723%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193694193728%_))
                                          (let ((_%e193695193731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193694193728%_))))
                                            (let ((_%tl193697193736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193695193731%_)))
                                                  (_%hd193696193734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193695193731%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193697193736%_))
                                                  (_%__kont198099198100%_
                                                   _%hd193696193734%_
                                                   _%hd193693193726%_
                                                   _%hd193601194097%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193592193702%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193592193702%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193639193925%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193602194099%_))
                          (let ((_%e193677193820%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193602194099%_))))
                            (let ((_%tl193679193825%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193677193820%_)))
                                  (_%hd193678193823%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193677193820%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193679193825%_))
                                  (let ((_%e193680193828%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193679193825%_))))
                                    (let ((_%tl193682193833%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193680193828%_)))
                                          (_%hd193681193831%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193680193828%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193682193833%_))
                                          (_%__match198298198299%_
                                           _%e193597194086%_
                                           _%hd193598194089%_
                                           _%tl193599194091%_
                                           _%e193600194094%_
                                           _%hd193601194097%_
                                           _%tl193602194099%_
                                           _%e193603194102%_
                                           _%hd193604194105%_
                                           _%tl193605194107%_
                                           _%e193628193896%_
                                           _%hd193629193899%_
                                           _%tl193630193901%_
                                           _%e193631193904%_
                                           _%hd193632193907%_
                                           _%tl193633193909%_
                                           _%e193634193912%_
                                           _%hd193635193915%_
                                           _%tl193636193917%_
                                           _%e193637193920%_
                                           _%hd193638193923%_
                                           _%tl193639193925%_
                                           _%e193677193820%_
                                           _%hd193678193823%_
                                           _%tl193679193825%_
                                           _%e193680193828%_
                                           _%hd193681193831%_
                                           _%tl193682193833%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193592193702%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193592193702%_)))))
                          (let () (declare (not safe)) (_%g193592193702%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193602194099%_))
                          (let ((_%e193692193723%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193602194099%_))))
                            (let ((_%tl193694193728%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193692193723%_)))
                                  (_%hd193693193726%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193692193723%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193694193728%_))
                                  (let ((_%e193695193731%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193694193728%_))))
                                    (let ((_%tl193697193736%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193695193731%_)))
                                          (_%hd193696193734%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193695193731%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193697193736%_))
                                          (_%__kont198099198100%_
                                           _%hd193696193734%_
                                           _%hd193693193726%_
                                           _%hd193601194097%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193592193702%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193592193702%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g193592193702%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193602194099%_))
                                                      (let ((_%e193692193723%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193602194099%_))))
                (let ((_%tl193694193728%_
                       (let () (declare (not safe)) (##cdr _%e193692193723%_)))
                      (_%hd193693193726%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193692193723%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193694193728%_))
                      (let ((_%e193695193731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193694193728%_))))
                        (let ((_%tl193697193736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193695193731%_)))
                              (_%hd193696193734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193695193731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193697193736%_))
                              (_%__kont198099198100%_
                               _%hd193696193734%_
                               _%hd193693193726%_
                               _%hd193601194097%_)
                              (let ()
                                (declare (not safe))
                                (_%g193592193702%_)))))
                      (let () (declare (not safe)) (_%g193592193702%_)))))
              (let () (declare (not safe)) (_%g193592193702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193602194099%_))
                                                  (let ((_%e193692193723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193602194099%_))))
                                                    (let ((_%tl193694193728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193692193723%_)))
                                                          (_%hd193693193726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193692193723%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193694193728%_))
                                                          (let ((_%e193695193731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193694193728%_))))
                    (let ((_%tl193697193736%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193695193731%_)))
                          (_%hd193696193734%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193695193731%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193697193736%_))
                          (_%__kont198099198100%_
                           _%hd193696193734%_
                           _%hd193693193726%_
                           _%hd193601194097%_)
                          (let () (declare (not safe)) (_%g193592193702%_)))))
                  (let () (declare (not safe)) (_%g193592193702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193602194099%_))
                                          (let ((_%e193692193723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193602194099%_))))
                                            (let ((_%tl193694193728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193692193723%_)))
                                                  (_%hd193693193726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193692193723%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193694193728%_))
                                                  (let ((_%e193695193731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193694193728%_))))
                                                    (let ((_%tl193697193736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193695193731%_)))
                                                          (_%hd193696193734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193695193731%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193697193736%_))
                                                          (_%__kont198099198100%_
                                                           _%hd193696193734%_
                                                           _%hd193693193726%_
                                                           _%hd193601194097%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193592193702%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193592193702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193602194099%_))
                                      (let ((_%e193692193723%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193602194099%_))))
                                        (let ((_%tl193694193728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193692193723%_)))
                                              (_%hd193693193726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193692193723%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193694193728%_))
                                              (let ((_%e193695193731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193694193728%_))))
                                                (let ((_%tl193697193736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193695193731%_)))
                                                      (_%hd193696193734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193695193731%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193697193736%_))
                                                      (_%__kont198099198100%_
                                                       _%hd193696193734%_
                                                       _%hd193693193726%_
                                                       _%hd193601194097%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193592193702%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193592193702%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193592193702%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193602194099%_))
                                  (let ((_%e193692193723%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193602194099%_))))
                                    (let ((_%tl193694193728%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193692193723%_)))
                                          (_%hd193693193726%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193692193723%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193694193728%_))
                                          (let ((_%e193695193731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193694193728%_))))
                                            (let ((_%tl193697193736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193695193731%_)))
                                                  (_%hd193696193734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193695193731%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193697193736%_))
                                                  (_%__kont198099198100%_
                                                   _%hd193696193734%_
                                                   _%hd193693193726%_
                                                   _%hd193601194097%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193592193702%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193592193702%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193592193702%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193602194099%_))
                          (let ((_%e193692193723%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193602194099%_))))
                            (let ((_%tl193694193728%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193692193723%_)))
                                  (_%hd193693193726%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193692193723%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193694193728%_))
                                  (let ((_%e193695193731%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193694193728%_))))
                                    (let ((_%tl193697193736%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193695193731%_)))
                                          (_%hd193696193734%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193695193731%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193697193736%_))
                                          (_%__kont198099198100%_
                                           _%hd193696193734%_
                                           _%hd193693193726%_
                                           _%hd193601194097%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193592193702%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193592193702%_)))))
                          (let () (declare (not safe)) (_%g193592193702%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl193602194099%_))
                  (let ((_%e193692193723%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193602194099%_))))
                    (let ((_%tl193694193728%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193692193723%_)))
                          (_%hd193693193726%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193692193723%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193694193728%_))
                          (let ((_%e193695193731%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193694193728%_))))
                            (let ((_%tl193697193736%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193695193731%_)))
                                  (_%hd193696193734%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193695193731%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193697193736%_))
                                  (_%__kont198099198100%_
                                   _%hd193696193734%_
                                   _%hd193693193726%_
                                   _%hd193601194097%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g193592193702%_)))))
                          (let () (declare (not safe)) (_%g193592193702%_)))))
                  (let () (declare (not safe)) (_%g193592193702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193602194099%_))
                                                      (let ((_%e193692193723%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193602194099%_))))
                (let ((_%tl193694193728%_
                       (let () (declare (not safe)) (##cdr _%e193692193723%_)))
                      (_%hd193693193726%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193692193723%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193694193728%_))
                      (let ((_%e193695193731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193694193728%_))))
                        (let ((_%tl193697193736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193695193731%_)))
                              (_%hd193696193734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193695193731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193697193736%_))
                              (_%__kont198099198100%_
                               _%hd193696193734%_
                               _%hd193693193726%_
                               _%hd193601194097%_)
                              (let ()
                                (declare (not safe))
                                (_%g193592193702%_)))))
                      (let () (declare (not safe)) (_%g193592193702%_)))))
              (let () (declare (not safe)) (_%g193592193702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193602194099%_))
                                              (let ((_%e193692193723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193602194099%_))))
                                                (let ((_%tl193694193728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193692193723%_)))
                                                      (_%hd193693193726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193692193723%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193694193728%_))
                                                      (let ((_%e193695193731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193694193728%_))))
                (let ((_%tl193697193736%_
                       (let () (declare (not safe)) (##cdr _%e193695193731%_)))
                      (_%hd193696193734%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193695193731%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193697193736%_))
                      (_%__kont198099198100%_
                       _%hd193696193734%_
                       _%hd193693193726%_
                       _%hd193601194097%_)
                      (let () (declare (not safe)) (_%g193592193702%_)))))
              (let () (declare (not safe)) (_%g193592193702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g193592193702%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193602194099%_))
                                      (let ((_%e193692193723%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193602194099%_))))
                                        (let ((_%tl193694193728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193692193723%_)))
                                              (_%hd193693193726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193692193723%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193694193728%_))
                                              (let ((_%e193695193731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193694193728%_))))
                                                (let ((_%tl193697193736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193695193731%_)))
                                                      (_%hd193696193734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193695193731%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193697193736%_))
                                                      (_%__kont198099198100%_
                                                       _%hd193696193734%_
                                                       _%hd193693193726%_
                                                       _%hd193601194097%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193592193702%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193592193702%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193592193702%_))))))
                          (let () (declare (not safe)) (_%g193592193702%_)))))
                  (let () (declare (not safe)) (_%g193592193702%_))))))))))
