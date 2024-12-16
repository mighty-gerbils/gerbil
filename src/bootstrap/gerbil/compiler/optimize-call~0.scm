(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1734357968)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp198435 (list gxc#::basic-xform::t))
            (__tmp198434 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp198435
         '()
         __tmp198434
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args197712%_
        (apply make-instance gxc#::optimize-call::t _%$args197712%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp198436
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
        (__make-promise __tmp198436)))
    (define gxc#apply-optimize-call
      (lambda (_%stx197704%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self197707%_
                (let ((__obj198426
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj198426))
               (__tmp198437
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197707%_ _%stx197704%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198437
           gxc#current-compile-method
           _%self197707%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp198439 (list gxc#::void::t))
            (__tmp198438 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp198439
         '()
         __tmp198438
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args197701%_
        (apply make-instance gxc#::check-return-type::t _%$args197701%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp198440
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
        (__make-promise __tmp198440)))
    (define gxc#apply-check-return-type
      (lambda (_%stx197693%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self197696%_
                (let ((__obj198428
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj198428))
               (__tmp198441
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197696%_ _%stx197693%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198441
           gxc#current-compile-method
           _%self197696%_))))
    (define gxc#optimize-call%
      (lambda (_%self197294%_ _%stx197295%_)
        (let* ((_%__stx197781197782%_ _%stx197295%_)
               (_%g197298197344%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197781197782%_)))))
          (let ((_%__kont197783197784%_
                 (lambda (_%L197487%_ _%L197488%_)
                   (let* ((_%rator-id197508%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L197488%_)))
                          (_%rator-type197510%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id197508%_))))
                     (if (or (not _%rator-type197510%_)
                             (eq? (##structure-ref
                                   _%rator-type197510%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self197294%_ _%stx197295%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type197510%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp198442
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type197510%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id197508%_
                                  '" => "
                                  _%rator-type197510%_
                                  '" "
                                  __tmp198442))
                               (let* ((_%optimized197525%_
                                       (let ((__method198429
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type197510%_
                                                 'optimize-call))))
                                         (if __method198429
                                             (let ((__tmp198443
                                                    (let ((__tmp198444
                                                           (lambda (_%g197517197520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197518197522%_)
                     (cons _%g197517197520%_ _%g197518197522%_))))
              (declare (not safe))
              (__foldr1 __tmp198444 '() _%L197487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method198429
                                                _%rator-type197510%_
                                                _%self197294%_
                                                _%stx197295%_
                                                __tmp198443))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type197510%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx197729197730%_
                                       _%optimized197525%_)
                                      (_%g197528197557%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx197729197730%_)))))
                                 (let ((_%__kont197731197732%_
                                        (lambda (_%L197625%_ _%L197626%_)
                                          (let* ((_%optimized-rator-id197653%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L197626%_)))
                                                 (_%rator-type197658%_
                                                  (let ((_%$e197655%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id197653%_))))
                                                    (if _%$e197655%_
                                                        _%$e197655%_
                                                        _%rator-type197510%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type197658%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id197653%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type197658%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type197658%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized197525%_
                                                (let ((__tmp198445
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L197626%_ '()))
                           (let ((__tmp198446
                                  (lambda (_%g197666197669%_ _%g197667197671%_)
                                    (cons _%g197666197669%_
                                          _%g197667197671%_))))
                             (declare (not safe))
                             (__foldr1 __tmp198446 '() _%L197625%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp198445
                                                   _%stx197295%_))))))
                                       (_%__kont197735197736%_
                                        (lambda () _%optimized197525%_)))
                                   (let ((_%__match197778197779%_
                                          (lambda (_%e197532197569%_
                                                   _%hd197533197572%_
                                                   _%tl197534197574%_
                                                   _%e197535197577%_
                                                   _%hd197536197580%_
                                                   _%tl197537197582%_
                                                   _%e197538197585%_
                                                   _%hd197539197588%_
                                                   _%tl197540197590%_
                                                   _%e197541197593%_
                                                   _%hd197542197596%_
                                                   _%tl197543197598%_
                                                   _%__splice197733197734%_
                                                   _%target197544197601%_
                                                   _%tl197546197603%_)
                                            (letrec ((_%loop197547197606%_
                                                      (lambda (_%hd197545197609%_
                                                               _%arg197551197611%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd197545197609%_))
                                                            (let ((_%e197548197614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd197545197609%_))))
                      (let ((_%lp-tl197550197619%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197548197614%_)))
                            (_%lp-hd197549197617%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197548197614%_))))
                        (_%loop197547197606%_
                         _%lp-tl197550197619%_
                         (cons _%lp-hd197549197617%_ _%arg197551197611%_))))
                    (let ((_%arg197552197622%_ (reverse _%arg197551197611%_)))
                      (_%__kont197731197732%_
                       _%arg197552197622%_
                       _%hd197542197596%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop197547197606%_
                                               _%target197544197601%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx197729197730%_))
                                         (let ((_%e197532197569%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx197729197730%_))))
                                           (let ((_%tl197534197574%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197532197569%_)))
                                                 (_%hd197533197572%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197532197569%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197533197572%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd197533197572%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197534197574%_))
                                                         (let ((_%e197535197577%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197534197574%_))))
                   (let ((_%tl197537197582%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197535197577%_)))
                         (_%hd197536197580%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197535197577%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd197536197580%_))
                         (let ((_%e197538197585%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd197536197580%_))))
                           (let ((_%tl197540197590%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197538197585%_)))
                                 (_%hd197539197588%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197538197585%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd197539197588%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd197539197588%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl197540197590%_))
                                         (let ((_%e197541197593%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl197540197590%_))))
                                           (let ((_%tl197543197598%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197541197593%_)))
                                                 (_%hd197542197596%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197541197593%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl197543197598%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl197537197582%_))
                                                     (let ((_%__splice197733197734%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl197537197582%_
                                                               '0))))
                                                       (let ((_%tl197546197603%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice197733197734%_ '1)))
                     (_%target197544197601%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice197733197734%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197546197603%_))
                     (_%__match197778197779%_
                      _%e197532197569%_
                      _%hd197533197572%_
                      _%tl197534197574%_
                      _%e197535197577%_
                      _%hd197536197580%_
                      _%tl197537197582%_
                      _%e197538197585%_
                      _%hd197539197588%_
                      _%tl197540197590%_
                      _%e197541197593%_
                      _%hd197542197596%_
                      _%tl197543197598%_
                      _%__splice197733197734%_
                      _%target197544197601%_
                      _%tl197546197603%_)
                     (_%__kont197735197736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197735197736%_))
                                                 (_%__kont197735197736%_))))
                                         (_%__kont197735197736%_))
                                     (_%__kont197735197736%_))
                                 (_%__kont197735197736%_))))
                         (_%__kont197735197736%_))))
                 (_%__kont197735197736%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197735197736%_))
                                                 (_%__kont197735197736%_))))
                                         (_%__kont197735197736%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type197510%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type197510%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp198447
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L197488%_
                                                                '()))
                                                    (map (lambda (_%g197677197679%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self197294%_
                                                              _%g197677197679%_)))
                                                         (let ((__tmp198448
                                                                (lambda (_%g197681197684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g197682197686%_)
                          (cons _%g197681197684%_ _%g197682197686%_))))
                   (declare (not safe))
                   (__foldr1 __tmp198448 '() _%L197487%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp198447
                                    _%stx197295%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx197295%_
                                    _%rator-type197510%_))))))))
                (_%__kont197787197788%_
                 (lambda (_%L197389%_ _%L197390%_)
                   (let ((_%rator-type197407%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L197390%_))))
                     (if (and _%rator-type197407%_
                              (eq? (##structure-ref
                                    _%rator-type197407%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type197407%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type197407%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type197407%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp198449
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197294%_
                                               _%L197390%_))
                                            (map (lambda (_%g197409197411%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197294%_
                                                      _%g197409197411%_)))
                                                 (let ((__tmp198450
                                                        (lambda (_%g197413197416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g197414197418%_)
                  (cons _%g197413197416%_ _%g197414197418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp198450
                                                    '()
                                                    _%L197389%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198449 _%stx197295%_))
                         (if (or (not _%rator-type197407%_)
                                 (let ((__tmp198451
                                        (##structure-ref
                                         _%rator-type197407%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp198451 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self197294%_ _%stx197295%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx197295%_
                                _%rator-type197407%_))))))))
            (let* ((_%__match197848197849%_
                    (lambda (_%e197325197349%_
                             _%hd197326197352%_
                             _%tl197327197354%_
                             _%e197328197357%_
                             _%hd197329197360%_
                             _%tl197330197362%_
                             _%__splice197789197790%_
                             _%target197331197365%_
                             _%tl197333197367%_)
                      (letrec ((_%loop197334197370%_
                                (lambda (_%hd197332197373%_
                                         _%rand197338197375%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197332197373%_))
                                      (let ((_%e197335197378%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197332197373%_))))
                                        (let ((_%lp-tl197337197383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197335197378%_)))
                                              (_%lp-hd197336197381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197335197378%_))))
                                          (_%loop197334197370%_
                                           _%lp-tl197337197383%_
                                           (cons _%lp-hd197336197381%_
                                                 _%rand197338197375%_))))
                                      (let ((_%rand197339197386%_
                                             (reverse _%rand197338197375%_)))
                                        (_%__kont197787197788%_
                                         _%rand197339197386%_
                                         _%hd197329197360%_))))))
                        (_%loop197334197370%_ _%target197331197365%_ '()))))
                   (_%__match197828197829%_
                    (lambda (_%e197302197431%_
                             _%hd197303197434%_
                             _%tl197304197436%_
                             _%e197305197439%_
                             _%hd197306197442%_
                             _%tl197307197444%_
                             _%e197308197447%_
                             _%hd197309197450%_
                             _%tl197310197452%_
                             _%e197311197455%_
                             _%hd197312197458%_
                             _%tl197313197460%_
                             _%__splice197785197786%_
                             _%target197314197463%_
                             _%tl197316197465%_)
                      (letrec ((_%loop197317197468%_
                                (lambda (_%hd197315197471%_
                                         _%rand197321197473%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197315197471%_))
                                      (let ((_%e197318197476%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197315197471%_))))
                                        (let ((_%lp-tl197320197481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197318197476%_)))
                                              (_%lp-hd197319197479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197318197476%_))))
                                          (_%loop197317197468%_
                                           _%lp-tl197320197481%_
                                           (cons _%lp-hd197319197479%_
                                                 _%rand197321197473%_))))
                                      (let ((_%rand197322197484%_
                                             (reverse _%rand197321197473%_)))
                                        (_%__kont197783197784%_
                                         _%rand197322197484%_
                                         _%hd197312197458%_))))))
                        (_%loop197317197468%_ _%target197314197463%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197781197782%_))
                  (let ((_%e197302197431%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197781197782%_))))
                    (let ((_%tl197304197436%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197302197431%_)))
                          (_%hd197303197434%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197302197431%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197304197436%_))
                          (let ((_%e197305197439%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197304197436%_))))
                            (let ((_%tl197307197444%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197305197439%_)))
                                  (_%hd197306197442%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197305197439%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197306197442%_))
                                  (let ((_%e197308197447%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197306197442%_))))
                                    (let ((_%tl197310197452%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197308197447%_)))
                                          (_%hd197309197450%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197308197447%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197309197450%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197309197450%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197310197452%_))
                                                  (let ((_%e197311197455%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197310197452%_))))
                                                    (let ((_%tl197313197460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197311197455%_)))
                                                          (_%hd197312197458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197311197455%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197313197460%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197307197444%_))
                      (let ((_%__splice197785197786%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197307197444%_
                                '0))))
                        (let ((_%tl197316197465%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197785197786%_ '1)))
                              (_%target197314197463%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197785197786%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197316197465%_))
                              (_%__match197828197829%_
                               _%e197302197431%_
                               _%hd197303197434%_
                               _%tl197304197436%_
                               _%e197305197439%_
                               _%hd197306197442%_
                               _%tl197307197444%_
                               _%e197308197447%_
                               _%hd197309197450%_
                               _%tl197310197452%_
                               _%e197311197455%_
                               _%hd197312197458%_
                               _%tl197313197460%_
                               _%__splice197785197786%_
                               _%target197314197463%_
                               _%tl197316197465%_)
                              (let ()
                                (declare (not safe))
                                (_%g197298197344%_)))))
                      (let () (declare (not safe)) (_%g197298197344%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197307197444%_))
                      (let ((_%__splice197789197790%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197307197444%_
                                '0))))
                        (let ((_%tl197333197367%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197789197790%_ '1)))
                              (_%target197331197365%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197789197790%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197333197367%_))
                              (_%__match197848197849%_
                               _%e197302197431%_
                               _%hd197303197434%_
                               _%tl197304197436%_
                               _%e197305197439%_
                               _%hd197306197442%_
                               _%tl197307197444%_
                               _%__splice197789197790%_
                               _%target197331197365%_
                               _%tl197333197367%_)
                              (let ()
                                (declare (not safe))
                                (_%g197298197344%_)))))
                      (let () (declare (not safe)) (_%g197298197344%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197307197444%_))
                                                      (let ((_%__splice197789197790%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197307197444%_ '0))))
                (let ((_%tl197333197367%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197789197790%_ '1)))
                      (_%target197331197365%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197789197790%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197333197367%_))
                      (_%__match197848197849%_
                       _%e197302197431%_
                       _%hd197303197434%_
                       _%tl197304197436%_
                       _%e197305197439%_
                       _%hd197306197442%_
                       _%tl197307197444%_
                       _%__splice197789197790%_
                       _%target197331197365%_
                       _%tl197333197367%_)
                      (let () (declare (not safe)) (_%g197298197344%_)))))
              (let () (declare (not safe)) (_%g197298197344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl197307197444%_))
                                                  (let ((_%__splice197789197790%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl197307197444%_
                                                            '0))))
                                                    (let ((_%tl197333197367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197789197790%_
                                                              '1)))
                                                          (_%target197331197365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197789197790%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197333197367%_))
                                                          (_%__match197848197849%_
                                                           _%e197302197431%_
                                                           _%hd197303197434%_
                                                           _%tl197304197436%_
                                                           _%e197305197439%_
                                                           _%hd197306197442%_
                                                           _%tl197307197444%_
                                                           _%__splice197789197790%_
                                                           _%target197331197365%_
                                                           _%tl197333197367%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197298197344%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197298197344%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197307197444%_))
                                              (let ((_%__splice197789197790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197307197444%_
                                                        '0))))
                                                (let ((_%tl197333197367%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197789197790%_
                                                          '1)))
                                                      (_%target197331197365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197789197790%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197333197367%_))
                                                      (_%__match197848197849%_
                                                       _%e197302197431%_
                                                       _%hd197303197434%_
                                                       _%tl197304197436%_
                                                       _%e197305197439%_
                                                       _%hd197306197442%_
                                                       _%tl197307197444%_
                                                       _%__splice197789197790%_
                                                       _%target197331197365%_
                                                       _%tl197333197367%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197298197344%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197298197344%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197307197444%_))
                                      (let ((_%__splice197789197790%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197307197444%_
                                                '0))))
                                        (let ((_%tl197333197367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197789197790%_
                                                  '1)))
                                              (_%target197331197365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197789197790%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197333197367%_))
                                              (_%__match197848197849%_
                                               _%e197302197431%_
                                               _%hd197303197434%_
                                               _%tl197304197436%_
                                               _%e197305197439%_
                                               _%hd197306197442%_
                                               _%tl197307197444%_
                                               _%__splice197789197790%_
                                               _%target197331197365%_
                                               _%tl197333197367%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197298197344%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197298197344%_))))))
                          (let () (declare (not safe)) (_%g197298197344%_)))))
                  (let () (declare (not safe)) (_%g197298197344%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self193673197254%_ _%ctx197256%_ _%stx197257%_ _%args197258%_)
        (let* ((_%self197260%_ _%self193673197254%_)
               (_%self197262%_ _%self197260%_))
          (if (let ((__method198430
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self197262%_ 'check-arguments))))
                (if __method198430
                    (let ()
                      (declare (not safe))
                      (__method198430
                       _%self197262%_
                       _%ctx197256%_
                       _%stx197257%_
                       _%args197258%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self197262%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature197272%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197262%_ '2 '#f '#f)))
                     (_%signature197274%_ _%signature197272%_)
                     (_%$e197284%_
                      (if _%signature197274%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature197274%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e197284%_
                    ((lambda (_%unchecked197287%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked197287%_))
                           (let ((__tmp198452
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked197287%_
                                                          '()))
                                              (map (lambda (_%g197288197290%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx197256%_
                                                        _%g197288197290%_)))
                                                   _%args197258%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp198452
                              _%stx197257%_
                              _%ctx197256%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx197256%_ _%stx197257%_))))
                     _%$e197284%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx197256%_ _%stx197257%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx197256%_ _%stx197257%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass197714 __method-table197715)
        (let ((__check-arguments197716
               (let ((__tmp198453
                      (lambda ()
                        (let ((__method197717
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197715
                                  'check-arguments
                                  '#f))))
                          (if __method197717
                              __method197717
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198453))))
          (lambda (_%self193673197254%_
                   _%ctx197256%_
                   _%stx197257%_
                   _%args197258%_)
            (let* ((_%self197260%_ _%self193673197254%_)
                   (_%self197262%_ _%self197260%_))
              (if ((force __check-arguments197716)
                   _%self197262%_
                   _%ctx197256%_
                   _%stx197257%_
                   _%args197258%_)
                  (let* ((_%signature197272%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self197262%_
                             '2
                             '#f
                             '#f)))
                         (_%signature197274%_ _%signature197272%_)
                         (_%$e197284%_
                          (if _%signature197274%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature197274%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e197284%_
                        ((lambda (_%unchecked197287%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked197287%_))
                               (let ((__tmp198454
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked197287%_
                                                              '()))
                                                  (map (lambda (_%g197288197290%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx197256%_
                                                            _%g197288197290%_)))
                                                       _%args197258%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp198454
                                  _%stx197257%_
                                  _%ctx197256%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx197256%_
                                  _%stx197257%_))))
                         _%$e197284%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx197256%_ _%stx197257%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx197256%_ _%stx197257%_))))))))
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
      (lambda (_%self193674197003%_ _%ctx197005%_ _%stx197006%_ _%args197007%_)
        (let* ((_%self197009%_ _%self193674197003%_)
               (_%self197011%_ _%self197009%_)
               (_%signature197020197022%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197011%_ '2 '#f '#f))))
          (if _%signature197020197022%_
              (let* ((_%signature197025%_ _%signature197020197022%_)
                     (_%argument-types197026197028%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature197025%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types197026197028%_
                    (let* ((_%argument-types197031%_
                            _%argument-types197026197028%_)
                           (_%argument-types197036%_
                            (let ((__tmp198455
                                   (lambda (_%t197034%_)
                                     (if _%t197034%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx197006%_
                                            _%t197034%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp198455
                               _%argument-types197031%_))))
                      (let _%loop197038%_ ((_%rest-args197040%_ _%args197007%_)
                                           (_%rest-types197041%_
                                            _%argument-types197036%_)
                                           (_%result197042%_ '#t))
                        (let* ((_%rest-args197043197051%_ _%rest-args197040%_)
                               (_%else197045197059%_
                                (lambda () _%result197042%_))
                               (_%K197047197120%_
                                (lambda (_%rest-args197062%_ _%arg197063%_)
                                  (let* ((_%rest-types197064197075%_
                                          _%rest-types197041%_)
                                         (_%E197068197079%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types197064197075%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K197071197108%_
                                           (lambda (_%rest-types197105%_
                                                    _%type197106%_)
                                             (_%loop197038%_
                                              _%rest-args197062%_
                                              _%rest-types197105%_
                                              (if (gxc#check-expression-type!
                                                   _%stx197006%_
                                                   _%arg197063%_
                                                   _%type197106%_)
                                                  _%result197042%_
                                                  '#f))))
                                          (_%K197070197099%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx197006%_
                                                _%argument-types197036%_))))
                                          (_%K197069197089%_
                                           (lambda (_%tail-type197083%_)
                                             (if (let ((__tmp198456
                                                        (lambda (_%g197084197086%_)
                                                          (gxc#check-expression-type!
                                                           _%stx197006%_
                                                           _%g197084197086%_
                                                           _%tail-type197083%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp198456
                                                    _%rest-args197062%_))
                                                 _%result197042%_
                                                 '#f))))
                                      (let ((_%try-match197066197102%_
                                             (lambda ()
                                               (if (null? _%rest-types197064197075%_)
                                                   (_%K197070197099%_)
                                                   (let ((_%tail-type197092%_
                                                          _%rest-types197064197075%_))
                                                     (_%K197069197089%_
                                                      _%tail-type197092%_))))))
                                        (if (pair? _%rest-types197064197075%_)
                                            (let ((_%tl197073197113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types197064197075%_)))
                                                  (_%hd197072197111%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types197064197075%_))))
                                              (let ((_%type197116%_
                                                     _%hd197072197111%_)
                                                    (_%rest-types197118%_
                                                     _%tl197073197113%_))
                                                (_%K197071197108%_
                                                 _%rest-types197118%_
                                                 _%type197116%_)))
                                            (_%try-match197066197102%_))))))))
                          (if (pair? _%rest-args197043197051%_)
                              (let ((_%hd197048197123%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args197043197051%_)))
                                    (_%tl197049197125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args197043197051%_))))
                                (let* ((_%arg197128%_ _%hd197048197123%_)
                                       (_%rest-args197130%_
                                        _%tl197049197125%_))
                                  (_%K197047197120%_
                                   _%rest-args197130%_
                                   _%arg197128%_)))
                              (_%else197045197059%_)))))
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
      (lambda (_%self193675196812%_ _%ctx196814%_ _%stx196815%_ _%args196816%_)
        (let* ((_%self196818%_ _%self193675196812%_)
               (_%self196820%_ _%self196818%_)
               (_%g196830196840%_
                (lambda (_%g196831196837%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196831196837%_))))
               (_%g196829196878%_
                (lambda (_%g196831196843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196831196843%_))
                      (let ((_%e196833196845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196831196843%_))))
                        (let ((_%hd196834196848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196833196845%_)))
                              (_%tl196835196850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196833196845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196835196850%_))
                              ((lambda (_%L196853%_)
                                 (let* ((_%klass196865%_
                                         (let ((__tmp198457
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196820%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196815%_
                                            __tmp198457)))
                                        (_%object196867%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196814%_
                                            _%L196853%_)))
                                        (_%instance?196872%_
                                         (let ((_%$e196869%_
                                                (gxc#expression-type?
                                                 _%object196867%_
                                                 _%klass196865%_)))
                                           (if _%$e196869%_
                                               _%$e196869%_
                                               (gxc#expression-type?
                                                _%L196853%_
                                                _%klass196865%_)))))
                                   (if _%instance?196872%_
                                       (let ((__tmp198458
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196867%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196853%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196867%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198458
                                          _%stx196815%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx196814%_
                                          _%stx196815%_)))))
                               _%hd196834196848%_)
                              (_%g196830196840%_ _%g196831196843%_))))
                      (_%g196830196840%_ _%g196831196843%_)))))
          (_%g196829196878%_ _%args196816%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self193676196606%_ _%ctx196608%_ _%stx196609%_ _%args196610%_)
        (let* ((_%self196612%_ _%self193676196606%_)
               (_%self196614%_ _%self196612%_)
               (_%g196624196634%_
                (lambda (_%g196625196631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196625196631%_))))
               (_%g196623196687%_
                (lambda (_%g196625196637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196625196637%_))
                      (let ((_%e196627196639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196625196637%_))))
                        (let ((_%hd196628196642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196627196639%_)))
                              (_%tl196629196644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196627196639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196629196644%_))
                              ((lambda (_%L196647%_)
                                 (let* ((_%klass196659%_
                                         (let ((__tmp198459
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196614%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196609%_
                                            __tmp198459)))
                                        (_%object196661%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196608%_
                                            _%L196647%_)))
                                        (_%instance?196666%_
                                         (let ((_%$e196663%_
                                                (gxc#expression-type?
                                                 _%object196661%_
                                                 _%klass196659%_)))
                                           (if _%$e196663%_
                                               _%$e196663%_
                                               (gxc#expression-type?
                                                _%L196647%_
                                                _%klass196659%_))))
                                        (_%klass196669%_ _%klass196659%_))
                                   (if _%instance?196666%_
                                       (let ((__tmp198460
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196661%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196647%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196661%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198460
                                          _%stx196609%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass196669%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198461
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass196669%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object196661%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198461
                                              _%stx196609%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass196669%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198462
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass196669%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object196661%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198462
                                                  _%stx196609%_))
                                               (let ((__tmp198463
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self196614%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object196661%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198463
                                                  _%stx196609%_)))))))
                               _%hd196628196642%_)
                              (_%g196624196634%_ _%g196625196637%_))))
                      (_%g196624196634%_ _%g196625196637%_)))))
          (_%g196623196687%_ _%args196610%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx196269%_)
        (let* ((_%__stx197858197859%_ _%stx196269%_)
               (_%g196274196315%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197858197859%_)))))
          (let ((_%__kont197860197861%_ (lambda () '#t))
                (_%__kont197862197863%_ (lambda () '#t))
                (_%__kont197864197865%_
                 (lambda (_%L196383%_ _%L196384%_)
                   (let ((_%rator-type196405196407%_
                          (let ((__tmp198464
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L196384%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp198464))))
                     (if _%rator-type196405196407%_
                         (let* ((_%rator-type196410%_
                                 _%rator-type196405196407%_)
                                (_%rator-signature196411196413%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type196410%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type196410%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature196411196413%_
                               (let* ((_%rator-signature196416%_
                                       _%rator-signature196411196413%_)
                                      (_%rator-effect196417196419%_
                                       (if _%rator-signature196416%_
                                           (##direct-structure-ref
                                            _%rator-signature196416%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect196417196419%_
                                     (let ((_%rator-effect196422%_
                                            _%rator-effect196417196419%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect196422%_)
                                               (equal? '(alloc)
                                                       _%rator-effect196422%_))
                                           (let ((__tmp198465
                                                  (let ((__tmp198466
                                                         (lambda (_%g196427196430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g196428196432%_)
                   (cons _%g196427196430%_ _%g196428196432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp198466
                                                     '()
                                                     _%L196383%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp198465))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont197868197869%_ (lambda () '#f)))
            (let ((_%__match197947197948%_
                   (lambda (_%e196290196327%_
                            _%hd196291196330%_
                            _%tl196292196332%_
                            _%e196293196335%_
                            _%hd196294196338%_
                            _%tl196295196340%_
                            _%e196296196343%_
                            _%hd196297196346%_
                            _%tl196298196348%_
                            _%e196299196351%_
                            _%hd196300196354%_
                            _%tl196301196356%_
                            _%__splice197866197867%_
                            _%target196302196359%_
                            _%tl196304196361%_)
                     (letrec ((_%loop196305196364%_
                               (lambda (_%hd196303196367%_
                                        _%rand196309196369%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196303196367%_))
                                     (let ((_%e196306196372%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196303196367%_))))
                                       (let ((_%lp-tl196308196377%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196306196372%_)))
                                             (_%lp-hd196307196375%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196306196372%_))))
                                         (_%loop196305196364%_
                                          _%lp-tl196308196377%_
                                          (cons _%lp-hd196307196375%_
                                                _%rand196309196369%_))))
                                     (let ((_%rand196310196380%_
                                            (reverse _%rand196309196369%_)))
                                       (_%__kont197864197865%_
                                        _%rand196310196380%_
                                        _%hd196300196354%_))))))
                       (_%loop196305196364%_ _%target196302196359%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197858197859%_))
                  (let ((_%e196276196463%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197858197859%_))))
                    (let ((_%tl196278196468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196276196463%_)))
                          (_%hd196277196466%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196276196463%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd196277196466%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd196277196466%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196278196468%_))
                                  (let ((_%e196279196471%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196278196468%_))))
                                    (let ((_%tl196281196476%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196279196471%_)))
                                          (_%hd196280196474%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196279196471%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196281196476%_))
                                          (_%__kont197860197861%_)
                                          (_%__kont197868197869%_))))
                                  (_%__kont197868197869%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd196277196466%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196278196468%_))
                                      (let ((_%e196285196448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196278196468%_))))
                                        (let ((_%tl196287196453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196285196448%_)))
                                              (_%hd196286196451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196285196448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196287196453%_))
                                              (_%__kont197862197863%_)
                                              (_%__kont197868197869%_))))
                                      (_%__kont197868197869%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd196277196466%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196278196468%_))
                                          (let ((_%e196293196335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196278196468%_))))
                                            (let ((_%tl196295196340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196293196335%_)))
                                                  (_%hd196294196338%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196293196335%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196294196338%_))
                                                  (let ((_%e196296196343%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196294196338%_))))
                                                    (let ((_%tl196298196348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196296196343%_)))
                                                          (_%hd196297196346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196296196343%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196297196346%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd196297196346%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196298196348%_))
                          (let ((_%e196299196351%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196298196348%_))))
                            (let ((_%tl196301196356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196299196351%_)))
                                  (_%hd196300196354%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196299196351%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196301196356%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196295196340%_))
                                      (let ((_%__splice197866197867%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196295196340%_
                                                '0))))
                                        (let ((_%tl196304196361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197866197867%_
                                                  '1)))
                                              (_%target196302196359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197866197867%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196304196361%_))
                                              (_%__match197947197948%_
                                               _%e196276196463%_
                                               _%hd196277196466%_
                                               _%tl196278196468%_
                                               _%e196293196335%_
                                               _%hd196294196338%_
                                               _%tl196295196340%_
                                               _%e196296196343%_
                                               _%hd196297196346%_
                                               _%tl196298196348%_
                                               _%e196299196351%_
                                               _%hd196300196354%_
                                               _%tl196301196356%_
                                               _%__splice197866197867%_
                                               _%target196302196359%_
                                               _%tl196304196361%_)
                                              (_%__kont197868197869%_))))
                                      (_%__kont197868197869%_))
                                  (_%__kont197868197869%_))))
                          (_%__kont197868197869%_))
                      (_%__kont197868197869%_))
                  (_%__kont197868197869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197868197869%_))))
                                          (_%__kont197868197869%_))
                                      (_%__kont197868197869%_))))
                          (_%__kont197868197869%_))))
                  (_%__kont197868197869%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx196264%_ _%klass196265%_)
        (let ((_%expr-type196267%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx196264%_))))
          (if _%expr-type196267%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type196267%_ _%klass196265%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx196242%_ _%expr196243%_ _%type196244%_)
        (if (not _%type196244%_)
            '#f
            (let ((_%$e196247%_
                   (eq? (##structure-ref _%type196244%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e196247%_
                  _%$e196247%_
                  (let ((_%expr-type196251%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr196243%_))))
                    (if (not _%expr-type196251%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type196251%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e196255%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type196251%_
                                      'gxc#!abort::t))))
                              (if _%$e196255%_
                                  _%$e196255%_
                                  (let ((_%$e196258%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type196251%_
                                            _%type196244%_))))
                                    (if _%$e196258%_
                                        _%$e196258%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type196244%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type196244%_
                                                   _%expr-type196251%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx196242%_
                                                   _%expr196243%_
                                                   _%expr-type196251%_
                                                   _%type196244%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self193677196054%_ _%ctx196056%_ _%stx196057%_ _%args196058%_)
        (let* ((_%self196060%_ _%self193677196054%_)
               (_%self196062%_ _%self196060%_)
               (_%klass196072%_
                (let ((__tmp198467
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self196062%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx196057%_ __tmp198467)))
               (_%fields196074%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass196072%_
                           '5
                           '#f
                           '#f))))
               (_%args196080%_
                (map (lambda (_%g196075196077%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx196056%_ _%g196075196077%_)))
                     _%args196058%_))
               (_%inline-make-object196082%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self196062%_
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
                           _%self196062%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields196074%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass196085%_ _%klass196072%_)
               (_%$e196099%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass196085%_ '6 '#f '#f))))
          (if _%$e196099%_
              ((lambda (_%ctor196102%_)
                 (let ((_%$obj196104%_
                        (let ((__tmp198468
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp198468)))
                       (_%ctor-impl196105%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass196085%_
                           _%ctor196102%_))))
                   (let ((__tmp198469
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196104%_ '())
                                                  (cons _%inline-make-object196082%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl196105%_
                                                            (let ((__tmp198470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl196105%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj196104%_ '()))
                                             _%args196080%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp198470
                       _%stx196057%_
                       _%ctx196056%_))
                    (let ((_%$ctor196107%_
                           (let ((__tmp198471
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198471))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor196107%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self196062%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj196104%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor196102%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor196107%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor196107%_ '()))
                              (cons (cons '%#ref (cons _%$obj196104%_ '()))
                                    _%args196080%_)))
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
                             _%self196062%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor196102%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj196104%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp198469 _%stx196057%_))))
               _%$e196099%_)
              (let ((_%$e196109%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass196085%_
                        '10
                        '#f
                        '#f))))
                (if _%$e196109%_
                    ((lambda (_%metaclass196112%_)
                       (let* ((_%$obj196114%_
                               (let ((__tmp198472
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198472)))
                              (_%metakons196116%_
                               (let ((__tmp198473
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx196057%_
                                         _%metaclass196112%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp198473
                                  'instance-init!)))
                              (__tmp198474
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj196114%_
                                                             '())
                                                       (cons _%inline-make-object196082%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons196116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp198475
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons196116%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self196062%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args196080%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp198475
                            _%stx196057%_
                            _%ctx196056%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self196062%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj196114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args196080%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj196114%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp198474 _%stx196057%_)))
                     _%$e196109%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass196085%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp198476
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args196080%_))))
                              (declare (not safe))
                              (##fx= __tmp198476 _%fields196074%_))
                            (let ((__tmp198477
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self196062%_
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
                                              _%self196062%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args196080%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp198477
                               _%stx196057%_))
                            (let ((__tmp198479
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self196062%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp198478
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass196085%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx196057%_
                               __tmp198479
                               __tmp198478)))
                        (let ((_%$obj196121%_
                               (let ((__tmp198480
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198480))))
                          (let _%lp196123%_ ((_%rest196125%_ _%args196080%_)
                                             (_%initializers196126%_ '()))
                            (let* ((_%__stx197950197951%_ _%rest196125%_)
                                   (_%g196130196151%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx197950197951%_)))))
                              (let ((_%__kont197952197953%_
                                     (lambda (_%L196205%_
                                              _%L196206%_
                                              _%L196207%_)
                                       (let* ((_%slot196234%_
                                               (let ((__tmp198481
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L196207%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp198481)))
                                              (_%off196236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass196085%_
                                                  _%slot196234%_))))
                                         (if _%off196236%_
                                             (_%lp196123%_
                                              _%L196205%_
                                              (cons (cons _%off196236%_
                                                          _%L196206%_)
                                                    _%initializers196126%_))
                                             (let ((__tmp198482
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self196062%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx196057%_
                                                __tmp198482
                                                _%slot196234%_))))))
                                    (_%__kont197954197955%_
                                     (lambda ()
                                       (let ((__tmp198483
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object196082%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp198486
                                     (cons (cons '%#ref
                                                 (cons _%$obj196121%_ '()))
                                           '()))
                                    (__tmp198484
                                     (let ((__tmp198485
                                            (lambda (_%i196165%_ _%r196166%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self196062%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i196165%_) '()))
                              (cons (cons '%#ref (cons _%$obj196121%_ '()))
                                    (cons (cdr _%i196165%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r196166%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp198485
                                        '()
                                        _%initializers196126%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp198486 __tmp198484)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198483
                                          _%stx196057%_))))
                                    (_%__kont197956197957%_
                                     (lambda ()
                                       (let ((__tmp198487
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object196082%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj196121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args196080%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj196121%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198487
                                          _%stx196057%_)))))
                                (let* ((_%g196128196168%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx197950197951%_))
                                              (_%__kont197954197955%_)
                                              (_%__kont197956197957%_))))
                                       (_%__match197987197988%_
                                        (lambda (_%e196135196173%_
                                                 _%hd196136196176%_
                                                 _%tl196137196178%_
                                                 _%e196138196181%_
                                                 _%hd196139196184%_
                                                 _%tl196140196186%_
                                                 _%e196141196189%_
                                                 _%hd196142196192%_
                                                 _%tl196143196194%_
                                                 _%e196144196197%_
                                                 _%hd196145196200%_
                                                 _%tl196146196202%_)
                                          (let ((_%L196205%_
                                                 _%tl196146196202%_)
                                                (_%L196206%_
                                                 _%hd196145196200%_)
                                                (_%L196207%_
                                                 _%hd196142196192%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L196207%_))
                                                (_%__kont197952197953%_
                                                 _%L196205%_
                                                 _%L196206%_
                                                 _%L196207%_)
                                                (_%__kont197956197957%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx197950197951%_))
                                      (let ((_%e196135196173%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx197950197951%_))))
                                        (let ((_%tl196137196178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196135196173%_)))
                                              (_%hd196136196176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196135196173%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd196136196176%_))
                                              (let ((_%e196138196181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd196136196176%_))))
                                                (let ((_%tl196140196186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196138196181%_)))
                                                      (_%hd196139196184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196138196181%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd196139196184%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd196139196184%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196140196186%_))
                      (let ((_%e196141196189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196140196186%_))))
                        (let ((_%tl196143196194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196141196189%_)))
                              (_%hd196142196192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196141196189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196143196194%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196137196178%_))
                                  (let ((_%e196144196197%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196137196178%_))))
                                    (let ((_%tl196146196202%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196144196197%_)))
                                          (_%hd196145196200%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196144196197%_))))
                                      (_%__match197987197988%_
                                       _%e196135196173%_
                                       _%hd196136196176%_
                                       _%tl196137196178%_
                                       _%e196138196181%_
                                       _%hd196139196184%_
                                       _%tl196140196186%_
                                       _%e196141196189%_
                                       _%hd196142196192%_
                                       _%tl196143196194%_
                                       _%e196144196197%_
                                       _%hd196145196200%_
                                       _%tl196146196202%_)))
                                  (_%__kont197956197957%_))
                              (_%__kont197956197957%_))))
                      (_%__kont197956197957%_))
                  (_%__kont197956197957%_))
              (_%__kont197956197957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont197956197957%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196128196168%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self193678195835%_ _%ctx195837%_ _%stx195838%_ _%args195839%_)
        (let* ((_%self195841%_ _%self193678195835%_)
               (_%self195843%_ _%self195841%_)
               (_%arguments-ok?195853%_
                (let ((__method198431
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195843%_ 'check-arguments))))
                  (if __method198431
                      (let ()
                        (declare (not safe))
                        (__method198431
                         _%self195843%_
                         _%ctx195837%_
                         _%stx195838%_
                         _%args195839%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195843%_
                                 'check-arguments))
                        '#!void))))
               (_%g195855195865%_
                (lambda (_%g195856195862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195856195862%_))))
               (_%g195854195929%_
                (lambda (_%g195856195868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195856195868%_))
                      (let ((_%e195858195870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195856195868%_))))
                        (let ((_%hd195859195873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195858195870%_)))
                              (_%tl195860195875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195858195870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195860195875%_))
                              ((lambda (_%L195878%_)
                                 (let* ((_%klass195891%_
                                         (let ((__tmp198488
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195843%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195838%_
                                            __tmp198488)))
                                        (_%field195893%_
                                         (let ((__tmp198489
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195843%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass195891%_
                                            __tmp198489)))
                                        (_%object195895%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195837%_
                                            _%L195878%_)))
                                        (_%klass195898%_ _%klass195891%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass195898%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp198490
                                              (cons (if (or _%arguments-ok?195853%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195843%_
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
                                 _%self195843%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field195893%_ '()))
                        (cons _%object195895%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198490
                                          _%stx195838%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195898%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp198491
                                                  (cons (if (or _%arguments-ok?195853%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195843%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195843%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195893%_ '()))
                            (cons _%object195895%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198491
                                              _%stx195838%_))
                                           (let ((_%$e195917%_
                                                  (let ((__tmp198492
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195843%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass195898%_
                                                     __tmp198492))))
                                             (if _%$e195917%_
                                                 ((lambda (_%klass195920%_)
                                                    (let ((__tmp198493
                                                           (cons (if (or _%arguments-ok?195853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195843%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self195843%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field195893%_ '()))
                                     (cons _%object195895%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp198493 _%stx195838%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e195917%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self195843%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp198494
                                                            (let ((_%$obj195926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp198495
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198495))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj195926%_ '())
                                              (cons _%object195895%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass195898%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj195926%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195843%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195893%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195926%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?195853%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195926%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195843%_
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
                                                             _%self195843%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj195926%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self195843%_
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
               (gxc#xform-wrap-source __tmp198494 _%stx195838%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp198496
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object195895%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195843%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp198496 _%stx195838%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd195859195873%_)
                              (_%g195855195865%_ _%g195856195868%_))))
                      (_%g195855195865%_ _%g195856195868%_)))))
          (_%g195854195929%_ _%args195839%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass197718 __method-table197719)
        (let ((__check-arguments197720
               (let ((__tmp198497
                      (lambda ()
                        (let ((__method197721
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197719
                                  'check-arguments
                                  '#f))))
                          (if __method197721
                              __method197721
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198497)))
              (__slot197722
               (let ((__slot197723
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass197718 'slot))))
                 (if __slot197723
                     __slot197723
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self193678195835%_
                   _%ctx195837%_
                   _%stx195838%_
                   _%args195839%_)
            (let* ((_%self195841%_ _%self193678195835%_)
                   (_%self195843%_ _%self195841%_)
                   (_%arguments-ok?195853%_
                    ((force __check-arguments197720)
                     _%self195843%_
                     _%ctx195837%_
                     _%stx195838%_
                     _%args195839%_))
                   (_%g195855195865%_
                    (lambda (_%g195856195862%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195856195862%_))))
                   (_%g195854195929%_
                    (lambda (_%g195856195868%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195856195868%_))
                          (let ((_%e195858195870%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195856195868%_))))
                            (let ((_%hd195859195873%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195858195870%_)))
                                  (_%tl195860195875%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195858195870%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195860195875%_))
                                  ((lambda (_%L195878%_)
                                     (let* ((_%klass195891%_
                                             (let ((__tmp198498
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195843%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx195838%_
                                                __tmp198498)))
                                            (_%field195893%_
                                             (let ((__tmp198499
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195843%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass195891%_
                                                __tmp198499)))
                                            (_%object195895%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx195837%_
                                                _%L195878%_)))
                                            (_%klass195898%_ _%klass195891%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195898%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198500
                                                  (cons (if (or _%arguments-ok?195853%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195843%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195843%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195893%_ '()))
                            (cons _%object195895%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198500
                                              _%stx195838%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195898%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198501
                                                      (cons (if (or _%arguments-ok?195853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195843%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195843%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195893%_ '()))
                                (cons _%object195895%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198501
                                                  _%stx195838%_))
                                               (let ((_%$e195917%_
                                                      (let ((__tmp198502
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self195843%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass195898%_ __tmp198502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e195917%_
                                                     ((lambda (_%klass195920%_)
                                                        (let ((__tmp198503
                                                               (cons (if (or _%arguments-ok?195853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195843%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self195843%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field195893%_ '()))
                                         (cons _%object195895%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp198503 _%stx195838%_)))
              _%$e195917%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195843%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp198504
                                                                (let ((_%$obj195926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp198505
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198505))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj195926%_ '())
                                                  (cons _%object195895%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass195898%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj195926%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195843%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195893%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj195926%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?195853%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195926%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195843%_
                               __slot197722
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
                        (##unchecked-structure-ref _%self195843%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj195926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195843%_
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
                   (gxc#xform-wrap-source __tmp198504 _%stx195838%_))
                 (let ((__tmp198506
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object195895%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195843%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp198506 _%stx195838%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd195859195873%_)
                                  (_%g195855195865%_ _%g195856195868%_))))
                          (_%g195855195865%_ _%g195856195868%_)))))
              (_%g195854195929%_ _%args195839%_))))))
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
      (lambda (_%self193679195597%_ _%ctx195599%_ _%stx195600%_ _%args195601%_)
        (let* ((_%self195603%_ _%self193679195597%_)
               (_%self195605%_ _%self195603%_)
               (_%arguments-ok?195615%_
                (let ((__method198432
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195605%_ 'check-arguments))))
                  (if __method198432
                      (let ()
                        (declare (not safe))
                        (__method198432
                         _%self195605%_
                         _%ctx195599%_
                         _%stx195600%_
                         _%args195601%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195605%_
                                 'check-arguments))
                        '#!void))))
               (_%g195617195631%_
                (lambda (_%g195618195628%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195618195628%_))))
               (_%g195616195710%_
                (lambda (_%g195618195634%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195618195634%_))
                      (let ((_%e195621195636%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195618195634%_))))
                        (let ((_%hd195622195639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195621195636%_)))
                              (_%tl195623195641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195621195636%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195623195641%_))
                              (let ((_%e195624195644%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195623195641%_))))
                                (let ((_%hd195625195647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195624195644%_)))
                                      (_%tl195626195649%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195624195644%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195626195649%_))
                                      ((lambda (_%L195652%_ _%L195653%_)
                                         (let* ((_%klass195669%_
                                                 (let ((__tmp198507
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195605%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx195600%_
                                                    __tmp198507)))
                                                (_%field195671%_
                                                 (let ((__tmp198508
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195605%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass195669%_
                                                    __tmp198508)))
                                                (_%object195673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195599%_
                                                    _%L195653%_)))
                                                (_%value195675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195599%_
                                                    _%L195652%_)))
                                                (_%klass195678%_
                                                 _%klass195669%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195678%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198509
                                                      (cons (if (or _%arguments-ok?195615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195605%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195605%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195671%_ '()))
                                (cons _%object195673%_
                                      (cons _%value195675%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198509
                                                  _%stx195600%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195678%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198510
                                                          (cons (if (or _%arguments-ok?195615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195605%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195605%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195671%_ '()))
                                    (cons _%object195673%_
                                          (cons _%value195675%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198510
                                                      _%stx195600%_))
                                                   (let ((_%$e195698%_
                                                          (let ((__tmp198511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195605%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass195678%_
                     __tmp198511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e195698%_
                                                         ((lambda (_%klass195701%_)
                                                            (let ((__tmp198512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?195615%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195605%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self195605%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field195671%_ '()))
                                             (cons _%object195673%_
                                                   (cons _%value195675%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198512 _%stx195600%_)))
                  _%$e195698%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self195605%_ '4 '#f '#f))
                     (let ((__tmp198513
                            (let ((_%$obj195707%_
                                   (let ((__tmp198514
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp198514))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj195707%_ '())
                                                      (cons _%object195673%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass195678%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj195707%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195605%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field195671%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195707%_
                                                              '()))
                                                  (cons _%value195675%_
                                                        '())))))
                          (cons (if _%arguments-ok?195615%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self195605%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value195675%_ '())))))
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
                             _%self195605%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj195707%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195605%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value195675%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp198513 _%stx195600%_))
                     (let ((__tmp198515
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object195673%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195605%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value195675%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp198515
                        _%stx195600%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195625195647%_
                                       _%hd195622195639%_)
                                      (_%g195617195631%_ _%g195618195634%_))))
                              (_%g195617195631%_ _%g195618195634%_))))
                      (_%g195617195631%_ _%g195618195634%_)))))
          (_%g195616195710%_ _%args195601%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass197724 __method-table197725)
        (let ((__check-arguments197726
               (let ((__tmp198516
                      (lambda ()
                        (let ((__method197727
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197725
                                  'check-arguments
                                  '#f))))
                          (if __method197727
                              __method197727
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198516))))
          (lambda (_%self193679195597%_
                   _%ctx195599%_
                   _%stx195600%_
                   _%args195601%_)
            (let* ((_%self195603%_ _%self193679195597%_)
                   (_%self195605%_ _%self195603%_)
                   (_%arguments-ok?195615%_
                    ((force __check-arguments197726)
                     _%self195605%_
                     _%ctx195599%_
                     _%stx195600%_
                     _%args195601%_))
                   (_%g195617195631%_
                    (lambda (_%g195618195628%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195618195628%_))))
                   (_%g195616195710%_
                    (lambda (_%g195618195634%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195618195634%_))
                          (let ((_%e195621195636%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195618195634%_))))
                            (let ((_%hd195622195639%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195621195636%_)))
                                  (_%tl195623195641%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195621195636%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195623195641%_))
                                  (let ((_%e195624195644%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195623195641%_))))
                                    (let ((_%hd195625195647%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195624195644%_)))
                                          (_%tl195626195649%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195624195644%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195626195649%_))
                                          ((lambda (_%L195652%_ _%L195653%_)
                                             (let* ((_%klass195669%_
                                                     (let ((__tmp198517
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195605%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx195600%_
                                                        __tmp198517)))
                                                    (_%field195671%_
                                                     (let ((__tmp198518
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195605%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass195669%_
                                                        __tmp198518)))
                                                    (_%object195673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195599%_
                                                        _%L195653%_)))
                                                    (_%value195675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195599%_
                                                        _%L195652%_)))
                                                    (_%klass195678%_
                                                     _%klass195669%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195678%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198519
                                                          (cons (if (or _%arguments-ok?195615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195605%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195605%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195671%_ '()))
                                    (cons _%object195673%_
                                          (cons _%value195675%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198519
                                                      _%stx195600%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass195678%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp198520
                                                              (cons (if (or _%arguments-ok?195615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self195605%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195605%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195671%_ '()))
                                        (cons _%object195673%_
                                              (cons _%value195675%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp198520 _%stx195600%_))
               (let ((_%$e195698%_
                      (let ((__tmp198521
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195605%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass195678%_
                         __tmp198521))))
                 (if _%$e195698%_
                     ((lambda (_%klass195701%_)
                        (let ((__tmp198522
                               (cons (if (or _%arguments-ok?195615%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195605%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195605%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field195671%_
                                                             '()))
                                                 (cons _%object195673%_
                                                       (cons _%value195675%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp198522 _%stx195600%_)))
                      _%$e195698%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195605%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp198523
                                (let ((_%$obj195707%_
                                       (let ((__tmp198524
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp198524))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj195707%_
                                                                '())
                                                          (cons _%object195673%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass195678%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195707%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self195605%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field195671%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value195675%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?195615%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj195707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195605%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value195675%_ '())))))
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
                                 _%self195605%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj195707%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195605%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value195675%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198523 _%stx195600%_))
                         (let ((__tmp198525
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object195673%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195605%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value195675%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp198525
                            _%stx195600%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd195625195647%_
                                           _%hd195622195639%_)
                                          (_%g195617195631%_
                                           _%g195618195634%_))))
                                  (_%g195617195631%_ _%g195618195634%_))))
                          (_%g195617195631%_ _%g195618195634%_)))))
              (_%g195616195710%_ _%args195601%_))))))
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
      (lambda (_%self193680195410%_ _%ctx195412%_ _%stx195413%_ _%args195414%_)
        (let* ((_%self195416%_ _%self193680195410%_)
               (_%self195418%_ _%self195416%_)
               (_%self195427195437%_ _%self195418%_)
               (_%E195429195441%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195427195437%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K195430195451%_
                (lambda (_%inline195444%_ _%dispatch195445%_ _%arity195446%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self195418%_
                         _%args195414%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx195413%_
                         _%arity195446%_)))
                  (if _%inline195444%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp198526 (_%inline195444%_ _%stx195413%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp198526
                           _%stx195413%_
                           _%ctx195412%_)))
                      (if (and _%dispatch195445%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch195445%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch195445%_))
                            (let ((__tmp198527
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch195445%_
                                                           '()))
                                               _%args195414%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp198527
                               _%stx195413%_
                               _%ctx195412%_)))
                          (gxc#!procedure::optimize-call
                           _%self195418%_
                           _%ctx195412%_
                           _%stx195413%_
                           _%args195414%_)))))
               (_%e195431195454%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195427195437%_ '1 '#f '#f)))
               (_%e195432195457%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195427195437%_ '2 '#f '#f)))
               (_%e195433195460%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195427195437%_ '3 '#f '#f)))
               (_%arity195463%_ _%e195433195460%_)
               (_%e195434195465%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195427195437%_ '4 '#f '#f)))
               (_%dispatch195468%_ _%e195434195465%_)
               (_%e195435195470%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195427195437%_ '5 '#f '#f)))
               (_%inline195473%_ _%e195435195470%_))
          (_%K195430195451%_
           _%inline195473%_
           _%dispatch195468%_
           _%arity195463%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self193681195260%_ _%ctx195262%_ _%stx195263%_ _%args195264%_)
        (let* ((_%self195266%_ _%self193681195260%_)
               (_%self195268%_ _%self195266%_)
               (_%$e195282%_
                (let ((__tmp198529
                       (lambda (_%g195277195279%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g195277195279%_
                            _%args195264%_))))
                      (__tmp198528
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195268%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp198529 __tmp198528))))
          (if _%$e195282%_
              ((lambda (_%clause195285%_)
                 (let ((__method198433
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause195285%_ 'optimize-call))))
                   (if __method198433
                       (let ()
                         (declare (not safe))
                         (__method198433
                          _%clause195285%_
                          _%ctx195262%_
                          _%stx195263%_
                          _%args195264%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause195285%_
                                  'optimize-call))
                         '#!void))))
               _%$e195282%_)
              (let ((__tmp198530
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self195268%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx195263%_
                 __tmp198530))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self193682194998%_ _%ctx195000%_ _%stx195001%_ _%args195002%_)
        (let* ((_%self195004%_ _%self193682194998%_)
               (_%self195006%_ _%self195004%_)
               (_%self195015195024%_ _%self195006%_)
               (_%E195017195028%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195015195024%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K195018195119%_
                (lambda (_%dispatch195031%_ _%table195032%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch195031%_))
                      (let* ((_%g195033195043%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch195031%_)))
                             (_%else195035195051%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch195031%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx195000%_
                                   _%stx195001%_))))
                             (_%K195037195100%_
                              (lambda (_%main195054%_ _%keys195055%_)
                                (let ((_g198531_
                                       (gxc#!kw-lambda-split-args
                                        _%stx195001%_
                                        _%args195002%_)))
                                  (begin
                                    (let ((_g198532_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198531_)
                                                 (##values-length _g198531_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198532_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198532_)))
                                    (let ((_%pargs195057%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198531_ 0)))
                                          (_%kwargs195058%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198531_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main195054%_))
                                        (if _%table195032%_
                                            (let ((_%xargs195066%_
                                                   (map (lambda (_%key195060%_)
                                                          (let ((_%$e195062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key195060%_ _%kwargs195058%_))))
                    (if _%$e195062%_ _%$e195062%_ '(%#ref absent-value))))
                _%keys195055%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw195068%_)
                                                 (if (memq (car _%kw195068%_)
                                                           _%keys195055%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx195001%_
                                                        _%keys195055%_
                                                        _%kw195068%_))))
                                               _%kwargs195058%_)
                                              (let ((__tmp198533
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main195054%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs195057%_
                                  _%xargs195066%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp198533
                                                 _%stx195001%_
                                                 _%ctx195000%_)))
                                            (let* ((_%kwt195070%_
                                                    (let ((__tmp198534
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp198534)))
                                                   (_%kwvars195074%_
                                                    (map (lambda (_%_195072%_)
                                                           (let ((__tmp198535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp198535)))
                 _%kwargs195058%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind195079%_
                                                    (map (lambda (_%kw195076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195077%_)
                   (cons (cons _%kwvar195077%_ '())
                         (cons (cdr _%kw195076%_) '())))
                 _%kwargs195058%_
                 _%kwvars195074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset195084%_
                                                    (map (lambda (_%kw195081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195082%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt195070%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw195081%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar195082%_
                                                             '()))
                                                 '()))))))
                 _%kwargs195058%_
                 _%kwvars195074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs195089%_
                                                    (map (lambda (_%kw195086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195087%_)
                   (cons (car _%kw195086%_)
                         (cons '%#ref (cons _%kwvar195087%_ '()))))
                 _%kwargs195058%_
                 _%kwvars195074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs195097%_
                                                    (map (lambda (_%key195091%_)
                                                           (let ((_%$e195093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key195091%_ _%xkwargs195089%_))))
                     (if _%$e195093%_ _%$e195093%_ '(%#ref absent-value))))
                 _%keys195055%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198536
                                                    (cons '%#let-values
                                                          (cons _%kwbind195079%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt195070%_ '())
                                                      (cons (let ((__tmp198537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs195058%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198537 _%stx195001%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp198538
                                                             (cons (let ((__tmp198539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main195054%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt195070%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs195057%_
                                                       _%xargs195097%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp198539 _%stx195001%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp198538 _%kwset195084%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp198536
                                               _%stx195001%_
                                               _%ctx195000%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g195033195043%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e195038195103%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195033195043%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e195039195106%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195033195043%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e195040195109%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195033195043%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys195112%_ _%e195040195109%_)
                                   (_%e195041195114%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195033195043%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main195117%_ _%e195041195114%_))
                              (_%K195037195100%_
                               _%main195117%_
                               _%keys195112%_))
                            (_%else195035195051%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx195000%_ _%stx195001%_)))))
               (_%e195019195122%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195015195024%_ '1 '#f '#f)))
               (_%e195020195125%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195015195024%_ '2 '#f '#f)))
               (_%e195021195128%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195015195024%_ '3 '#f '#f)))
               (_%table195131%_ _%e195021195128%_)
               (_%e195022195133%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195015195024%_ '4 '#f '#f)))
               (_%dispatch195136%_ _%e195022195133%_))
          (_%K195018195119%_ _%dispatch195136%_ _%table195131%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx194611%_ _%args194612%_)
        (let _%lp194614%_ ((_%rest194616%_ _%args194612%_)
                           (_%pargs194617%_ '())
                           (_%kwargs194618%_ '()))
          (let* ((_%__stx197992197993%_ _%rest194616%_)
                 (_%g194624194676%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx197992197993%_)))))
            (let ((_%__kont197994197995%_
                   (lambda (_%L194855%_ _%L194856%_)
                     (_%lp194614%_
                      _%L194855%_
                      (cons _%L194856%_ _%pargs194617%_)
                      _%kwargs194618%_)))
                  (_%__kont197996197997%_
                   (lambda (_%L194801%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L194801%_ _%pargs194617%_))
                             (reverse _%kwargs194618%_))))
                  (_%__kont197998197999%_
                   (lambda (_%L194748%_ _%L194749%_ _%L194750%_)
                     (let ((_%kw194767%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L194750%_))))
                       (if (assq _%kw194767%_ _%kwargs194618%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx194611%_
                              _%kw194767%_))
                           (_%lp194614%_
                            _%L194748%_
                            _%pargs194617%_
                            (cons (cons _%kw194767%_ _%L194749%_)
                                  _%kwargs194618%_))))))
                  (_%__kont198000198001%_
                   (lambda (_%L194696%_ _%L194697%_)
                     (_%lp194614%_
                      _%L194696%_
                      (cons _%L194697%_ _%pargs194617%_)
                      _%kwargs194618%_)))
                  (_%__kont198002198003%_
                   (lambda ()
                     (values (reverse _%pargs194617%_)
                             (reverse _%kwargs194618%_)))))
              (let ((_%__match198099198100%_
                     (lambda (_%e194655194716%_
                              _%hd194656194719%_
                              _%tl194657194721%_
                              _%e194658194724%_
                              _%hd194659194727%_
                              _%tl194660194729%_
                              _%e194661194732%_
                              _%hd194662194735%_
                              _%tl194663194737%_
                              _%e194664194740%_
                              _%hd194665194743%_
                              _%tl194666194745%_)
                       (let ((_%L194748%_ _%tl194666194745%_)
                             (_%L194749%_ _%hd194665194743%_)
                             (_%L194750%_ _%hd194662194735%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L194750%_))
                             (_%__kont197998197999%_
                              _%L194748%_
                              _%L194749%_
                              _%L194750%_)
                             (_%__kont198000198001%_
                              _%tl194657194721%_
                              _%hd194656194719%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx197992197993%_))
                    (let ((_%e194628194820%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx197992197993%_))))
                      (let ((_%tl194630194825%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194628194820%_)))
                            (_%hd194629194823%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194628194820%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd194629194823%_))
                            (let ((_%e194631194828%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd194629194823%_))))
                              (let ((_%tl194633194833%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194631194828%_)))
                                    (_%hd194632194831%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194631194828%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd194632194831%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd194632194831%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194633194833%_))
                                            (let ((_%e194634194836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194633194833%_))))
                                              (let ((_%tl194636194841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194634194836%_)))
                                                    (_%hd194635194839%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194634194836%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd194635194839%_))
                                                    (let ((_%e194637194844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd194635194839%_))))
                                                      (if (equal? _%e194637194844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194636194841%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194630194825%_))
                          (let ((_%e194638194847%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194630194825%_))))
                            (let ((_%tl194640194852%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194638194847%_)))
                                  (_%hd194639194850%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194638194847%_))))
                              (_%__kont197994197995%_
                               _%tl194640194852%_
                               _%hd194639194850%_)))
                          (_%__kont198000198001%_
                           _%tl194630194825%_
                           _%hd194629194823%_))
                      (_%__kont198000198001%_
                       _%tl194630194825%_
                       _%hd194629194823%_))
                  (if (equal? _%e194637194844%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194636194841%_))
                          (_%__kont197996197997%_ _%tl194630194825%_)
                          (_%__kont198000198001%_
                           _%tl194630194825%_
                           _%hd194629194823%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194636194841%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194630194825%_))
                              (let ((_%e194664194740%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194630194825%_))))
                                (let ((_%tl194666194745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194664194740%_)))
                                      (_%hd194665194743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194664194740%_))))
                                  (_%__match198099198100%_
                                   _%e194628194820%_
                                   _%hd194629194823%_
                                   _%tl194630194825%_
                                   _%e194631194828%_
                                   _%hd194632194831%_
                                   _%tl194633194833%_
                                   _%e194634194836%_
                                   _%hd194635194839%_
                                   _%tl194636194841%_
                                   _%e194664194740%_
                                   _%hd194665194743%_
                                   _%tl194666194745%_)))
                              (_%__kont198000198001%_
                               _%tl194630194825%_
                               _%hd194629194823%_))
                          (_%__kont198000198001%_
                           _%tl194630194825%_
                           _%hd194629194823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194636194841%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl194630194825%_))
                                                            (let ((_%e194664194740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194630194825%_))))
                      (let ((_%tl194666194745%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194664194740%_)))
                            (_%hd194665194743%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194664194740%_))))
                        (_%__match198099198100%_
                         _%e194628194820%_
                         _%hd194629194823%_
                         _%tl194630194825%_
                         _%e194631194828%_
                         _%hd194632194831%_
                         _%tl194633194833%_
                         _%e194634194836%_
                         _%hd194635194839%_
                         _%tl194636194841%_
                         _%e194664194740%_
                         _%hd194665194743%_
                         _%tl194666194745%_)))
                    (_%__kont198000198001%_
                     _%tl194630194825%_
                     _%hd194629194823%_))
                (_%__kont198000198001%_
                 _%tl194630194825%_
                 _%hd194629194823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont198000198001%_
                                             _%tl194630194825%_
                                             _%hd194629194823%_))
                                        (_%__kont198000198001%_
                                         _%tl194630194825%_
                                         _%hd194629194823%_))
                                    (_%__kont198000198001%_
                                     _%tl194630194825%_
                                     _%hd194629194823%_))))
                            (_%__kont198000198001%_
                             _%tl194630194825%_
                             _%hd194629194823%_))))
                    (_%__kont198002198003%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self193683194593%_ _%ctx194595%_ _%stx194596%_ _%args194597%_)
        (let* ((_%self194599%_ _%self193683194593%_)
               (_%self194601%_ _%self194599%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx194595%_ _%stx194596%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self194281%_ _%stx194282%_)
        (let* ((_%__stx198108198109%_ _%stx194282%_)
               (_%g194285194325%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198108198109%_)))))
          (let ((_%__kont198110198111%_
                 (lambda (_%L194431%_ _%L194432%_)
                   (let ((_%$e194459%_
                          (member 'return:
                                  (let ((__tmp198540
                                         (lambda (_%g194451194454%_
                                                  _%g194452194456%_)
                                           (cons _%g194451194454%_
                                                 _%g194452194456%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp198540 '() _%L194432%_))
                                  gx#stx-eq?)))
                     (if _%$e194459%_
                         ((lambda (_%tail194462%_)
                            (let ((_%type194464%_
                                   (let ((__tmp198541
                                          (let ((__tmp198542
                                                 (cadr _%tail194462%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp198542))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx194282%_
                                      __tmp198541))))
                              (gxc#check-return-type!
                               _%stx194282%_
                               _%L194431%_
                               _%type194464%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self194281%_
                                 _%L194431%_))))
                          _%$e194459%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self194281%_ _%L194431%_))))))
                (_%__kont198114198115%_
                 (lambda (_%L194354%_ _%L194355%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self194281%_ _%L194354%_)))))
            (let ((_%__match198145198146%_
                   (lambda (_%e194289194375%_
                            _%hd194290194378%_
                            _%tl194291194380%_
                            _%e194292194383%_
                            _%hd194293194386%_
                            _%tl194294194388%_
                            _%e194295194391%_
                            _%hd194296194394%_
                            _%tl194297194396%_
                            _%__splice198112198113%_
                            _%target194298194399%_
                            _%tl194300194401%_)
                     (letrec ((_%loop194301194404%_
                               (lambda (_%hd194299194407%_
                                        _%signature194305194409%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd194299194407%_))
                                     (let ((_%e194302194412%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd194299194407%_))))
                                       (let ((_%lp-tl194304194417%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e194302194412%_)))
                                             (_%lp-hd194303194415%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e194302194412%_))))
                                         (_%loop194301194404%_
                                          _%lp-tl194304194417%_
                                          (cons _%lp-hd194303194415%_
                                                _%signature194305194409%_))))
                                     (let ((_%signature194306194420%_
                                            (reverse _%signature194305194409%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl194294194388%_))
                                           (let ((_%e194307194423%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl194294194388%_))))
                                             (let ((_%tl194309194428%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e194307194423%_)))
                                                   (_%hd194308194426%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e194307194423%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl194309194428%_))
                                                   (_%__kont198110198111%_
                                                    _%hd194308194426%_
                                                    _%signature194306194420%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g194285194325%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g194285194325%_))))))))
                       (_%loop194301194404%_ _%target194298194399%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198108198109%_))
                  (let ((_%e194289194375%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198108198109%_))))
                    (let ((_%tl194291194380%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194289194375%_)))
                          (_%hd194290194378%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194289194375%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194291194380%_))
                          (let ((_%e194292194383%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194291194380%_))))
                            (let ((_%tl194294194388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194292194383%_)))
                                  (_%hd194293194386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194292194383%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194293194386%_))
                                  (let ((_%e194295194391%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194293194386%_))))
                                    (let ((_%tl194297194396%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194295194391%_)))
                                          (_%hd194296194394%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194295194391%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194296194394%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd194296194394%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194297194396%_))
                                                  (let ((_%__splice198112198113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194297194396%_
                                                            '0))))
                                                    (let ((_%tl194300194401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198112198113%_
                                                              '1)))
                                                          (_%target194298194399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198112198113%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194300194401%_))
                                                          (_%__match198145198146%_
                                                           _%e194289194375%_
                                                           _%hd194290194378%_
                                                           _%tl194291194380%_
                                                           _%e194292194383%_
                                                           _%hd194293194386%_
                                                           _%tl194294194388%_
                                                           _%e194295194391%_
                                                           _%hd194296194394%_
                                                           _%tl194297194396%_
                                                           _%__splice198112198113%_
                                                           _%target194298194399%_
                                                           _%tl194300194401%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194294194388%_))
                      (let ((_%e194318194346%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194294194388%_))))
                        (let ((_%tl194320194351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194318194346%_)))
                              (_%hd194319194349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194318194346%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194320194351%_))
                              (_%__kont198114198115%_
                               _%hd194319194349%_
                               _%hd194293194386%_)
                              (let ()
                                (declare (not safe))
                                (_%g194285194325%_)))))
                      (let () (declare (not safe)) (_%g194285194325%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194294194388%_))
                                                      (let ((_%e194318194346%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194294194388%_))))
                (let ((_%tl194320194351%_
                       (let () (declare (not safe)) (##cdr _%e194318194346%_)))
                      (_%hd194319194349%_
                       (let ()
                         (declare (not safe))
                         (##car _%e194318194346%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194320194351%_))
                      (_%__kont198114198115%_
                       _%hd194319194349%_
                       _%hd194293194386%_)
                      (let () (declare (not safe)) (_%g194285194325%_)))))
              (let () (declare (not safe)) (_%g194285194325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194294194388%_))
                                                  (let ((_%e194318194346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194294194388%_))))
                                                    (let ((_%tl194320194351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194318194346%_)))
                                                          (_%hd194319194349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194318194346%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194320194351%_))
                                                          (_%__kont198114198115%_
                                                           _%hd194319194349%_
                                                           _%hd194293194386%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194285194325%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194285194325%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194294194388%_))
                                              (let ((_%e194318194346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194294194388%_))))
                                                (let ((_%tl194320194351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194318194346%_)))
                                                      (_%hd194319194349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194318194346%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194320194351%_))
                                                      (_%__kont198114198115%_
                                                       _%hd194319194349%_
                                                       _%hd194293194386%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194285194325%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194285194325%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194294194388%_))
                                      (let ((_%e194318194346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194294194388%_))))
                                        (let ((_%tl194320194351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194318194346%_)))
                                              (_%hd194319194349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194318194346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194320194351%_))
                                              (_%__kont198114198115%_
                                               _%hd194319194349%_
                                               _%hd194293194386%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194285194325%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194285194325%_))))))
                          (let () (declare (not safe)) (_%g194285194325%_)))))
                  (let () (declare (not safe)) (_%g194285194325%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx194259%_ _%expr194260%_ _%type194261%_)
        (let ((_%$e194263%_ (not _%type194261%_)))
          (if _%$e194263%_
              _%$e194263%_
              (let ((_%$e194266%_
                     (eq? (##structure-ref _%type194261%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e194266%_
                    _%$e194266%_
                    (let ((_%expr-type194270%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr194260%_))))
                      (if (not _%expr-type194270%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx194259%_
                             _%type194261%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type194270%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx194259%_
                                 _%type194261%_
                                 _%expr-type194270%_))
                              (let ((_%$e194274%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type194270%_
                                        'gxc#!abort::t))))
                                (if _%$e194274%_
                                    _%$e194274%_
                                    (let ((_%$e194277%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type194270%_
                                              _%type194261%_))))
                                      (if _%$e194277%_
                                          _%$e194277%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx194259%_
                                             _%type194261%_
                                             _%expr-type194270%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self193685%_ _%stx193686%_)
        (let* ((_%__stx198190198191%_ _%stx193686%_)
               (_%g193691193801%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198190198191%_)))))
          (let ((_%__kont198192198193%_
                 (lambda (_%L194233%_ _%L194234%_ _%L194235%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L194235%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193685%_ _%L194234%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193685%_ _%L194233%_)))))
                (_%__kont198194198195%_
                 (lambda (_%L194059%_ _%L194060%_ _%L194061%_ _%L194062%_)
                   (let ((_%$e194094%_
                          (let ((__tmp198543
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L194062%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp198543))))
                     (if _%$e194094%_
                         ((lambda (_%pred-type194097%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194097%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194097%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test194102%_
                                        (let ((__tmp198544
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L194062%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L194061%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp198544
                                           _%stx193686%_
                                           _%self193685%_)))
                                       (_%K194106%_
                                        (let ((__tmp198545
                                               (lambda ()
                                                 (let ((__tmp198548
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self193685%_
                                                             _%L194060%_))))
                                                       (__tmp198546
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L194061%_))
                            (let ((__tmp198547
                                   (##structure-ref
                                    _%pred-type194097%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx193686%_
                               __tmp198547)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp198548
                                                    gxc#current-compile-path-type
                                                    __tmp198546)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198545)))
                                       (_%E194109%_
                                        (let ((__tmp198549
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self193685%_
                                                    _%L194059%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198549)))
                                       (_%__stx198168198169%_ _%test194102%_)
                                       (_%g194113194127%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx198168198169%_)))))
                                  (let ((_%__kont198170198171%_
                                         (lambda (_%L194155%_ _%L194156%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L194155%_))
                                               (force _%K194106%_)
                                               (force _%E194109%_))))
                                        (_%__kont198172198173%_
                                         (lambda ()
                                           (let ((__tmp198550
                                                  (cons '%#if
                                                        (cons _%test194102%_
                                                              (cons (force _%K194106%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E194109%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198550
                                              _%stx193686%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx198168198169%_))
                                        (let ((_%e194117194139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx198168198169%_))))
                                          (let ((_%tl194119194144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194117194139%_)))
                                                (_%hd194118194142%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194117194139%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194119194144%_))
                                                (let ((_%e194120194147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194119194144%_))))
                                                  (let ((_%tl194122194152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194120194147%_)))
                                                        (_%hd194121194150%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194120194147%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194122194152%_))
                                                        (_%__kont198170198171%_
                                                         _%hd194121194150%_
                                                         _%hd194118194142%_)
                                                        (_%__kont198172198173%_))))
                                                (_%__kont198172198173%_))))
                                        (_%__kont198172198173%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self193685%_
                                   _%stx193686%_))))
                          _%$e194094%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self193685%_
                            _%stx193686%_))))))
                (_%__kont198196198197%_
                 (lambda (_%L193935%_ _%L193936%_ _%L193937%_ _%L193938%_)
                   (gxc#optimize-if%
                    _%self193685%_
                    (let ((__tmp198551
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L193937%_
                                       (cons _%L193935%_
                                             (cons _%L193936%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198551 _%stx193686%_)))))
                (_%__kont198198198199%_
                 (lambda (_%L193838%_ _%L193839%_ _%L193840%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self193685%_ _%stx193686%_)))))
            (let ((_%__match198397198398%_
                   (lambda (_%e193755193863%_
                            _%hd193756193866%_
                            _%tl193757193868%_
                            _%e193758193871%_
                            _%hd193759193874%_
                            _%tl193760193876%_
                            _%e193761193879%_
                            _%hd193762193882%_
                            _%tl193763193884%_
                            _%e193764193887%_
                            _%hd193765193890%_
                            _%tl193766193892%_
                            _%e193767193895%_
                            _%hd193768193898%_
                            _%tl193769193900%_
                            _%e193770193903%_
                            _%hd193771193906%_
                            _%tl193772193908%_
                            _%e193773193911%_
                            _%hd193774193914%_
                            _%tl193775193916%_
                            _%e193776193919%_
                            _%hd193777193922%_
                            _%tl193778193924%_
                            _%e193779193927%_
                            _%hd193780193930%_
                            _%tl193781193932%_)
                     (let ((_%L193935%_ _%hd193780193930%_)
                           (_%L193936%_ _%hd193777193922%_)
                           (_%L193937%_ _%hd193774193914%_)
                           (_%L193938%_ _%hd193771193906%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L193938%_ 'not))
                           (_%__kont198196198197%_
                            _%L193935%_
                            _%L193936%_
                            _%L193937%_
                            _%L193938%_)
                           (_%__kont198198198199%_
                            _%hd193780193930%_
                            _%hd193777193922%_
                            _%hd193759193874%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198190198191%_))
                  (let ((_%e193696194185%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198190198191%_))))
                    (let ((_%tl193698194190%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193696194185%_)))
                          (_%hd193697194188%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193696194185%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193698194190%_))
                          (let ((_%e193699194193%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193698194190%_))))
                            (let ((_%tl193701194198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193699194193%_)))
                                  (_%hd193700194196%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193699194193%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193700194196%_))
                                  (let ((_%e193702194201%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193700194196%_))))
                                    (let ((_%tl193704194206%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193702194201%_)))
                                          (_%hd193703194204%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193702194201%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193703194204%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd193703194204%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193704194206%_))
                                                  (let ((_%e193705194209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193704194206%_))))
                                                    (let ((_%tl193707194214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193705194209%_)))
                                                          (_%hd193706194212%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193705194209%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193707194214%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193701194198%_))
                      (let ((_%e193708194217%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193701194198%_))))
                        (let ((_%tl193710194222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193708194217%_)))
                              (_%hd193709194220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193708194217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193710194222%_))
                              (let ((_%e193711194225%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193710194222%_))))
                                (let ((_%tl193713194230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193711194225%_)))
                                      (_%hd193712194228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193711194225%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193713194230%_))
                                      (_%__kont198192198193%_
                                       _%hd193712194228%_
                                       _%hd193709194220%_
                                       _%hd193706194212%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193691193801%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193691193801%_)))))
                      (let () (declare (not safe)) (_%g193691193801%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193701194198%_))
                      (let ((_%e193791193822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193701194198%_))))
                        (let ((_%tl193793193827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193791193822%_)))
                              (_%hd193792193825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193791193822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193793193827%_))
                              (let ((_%e193794193830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193793193827%_))))
                                (let ((_%tl193796193835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193794193830%_)))
                                      (_%hd193795193833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193794193830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193796193835%_))
                                      (_%__kont198198198199%_
                                       _%hd193795193833%_
                                       _%hd193792193825%_
                                       _%hd193700194196%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193691193801%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193691193801%_)))))
                      (let () (declare (not safe)) (_%g193691193801%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193701194198%_))
                                                      (let ((_%e193791193822%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193701194198%_))))
                (let ((_%tl193793193827%_
                       (let () (declare (not safe)) (##cdr _%e193791193822%_)))
                      (_%hd193792193825%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193791193822%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193793193827%_))
                      (let ((_%e193794193830%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193793193827%_))))
                        (let ((_%tl193796193835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193794193830%_)))
                              (_%hd193795193833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193794193830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193796193835%_))
                              (_%__kont198198198199%_
                               _%hd193795193833%_
                               _%hd193792193825%_
                               _%hd193700194196%_)
                              (let ()
                                (declare (not safe))
                                (_%g193691193801%_)))))
                      (let () (declare (not safe)) (_%g193691193801%_)))))
              (let () (declare (not safe)) (_%g193691193801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd193703194204%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193704194206%_))
                                                      (let ((_%e193727193995%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193704194206%_))))
                (let ((_%tl193729194000%_
                       (let () (declare (not safe)) (##cdr _%e193727193995%_)))
                      (_%hd193728193998%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193727193995%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193728193998%_))
                      (let ((_%e193730194003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193728193998%_))))
                        (let ((_%tl193732194008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193730194003%_)))
                              (_%hd193731194006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193730194003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193731194006%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193731194006%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193732194008%_))
                                      (let ((_%e193733194011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193732194008%_))))
                                        (let ((_%tl193735194016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193733194011%_)))
                                              (_%hd193734194014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193733194011%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193735194016%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193729194000%_))
                                                  (let ((_%e193736194019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193729194000%_))))
                                                    (let ((_%tl193738194024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193736194019%_)))
                                                          (_%hd193737194022%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193736194019%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193737194022%_))
                                                          (let ((_%e193739194027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193737194022%_))))
                    (let ((_%tl193741194032%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193739194027%_)))
                          (_%hd193740194030%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193739194027%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193740194030%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd193740194030%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193741194032%_))
                                  (let ((_%e193742194035%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193741194032%_))))
                                    (let ((_%tl193744194040%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193742194035%_)))
                                          (_%hd193743194038%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193742194035%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193744194040%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193738194024%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193701194198%_))
                                                  (let ((_%e193745194043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193701194198%_))))
                                                    (let ((_%tl193747194048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193745194043%_)))
                                                          (_%hd193746194046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193745194043%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193747194048%_))
                                                          (let ((_%e193748194051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193747194048%_))))
                    (let ((_%tl193750194056%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193748194051%_)))
                          (_%hd193749194054%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193748194051%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193750194056%_))
                          (_%__kont198194198195%_
                           _%hd193749194054%_
                           _%hd193746194046%_
                           _%hd193743194038%_
                           _%hd193734194014%_)
                          (let () (declare (not safe)) (_%g193691193801%_)))))
                  (let () (declare (not safe)) (_%g193691193801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193701194198%_))
                                                  (let ((_%e193791193822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193701194198%_))))
                                                    (let ((_%tl193793193827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193791193822%_)))
                                                          (_%hd193792193825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193791193822%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193793193827%_))
                                                          (let ((_%e193794193830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193793193827%_))))
                    (let ((_%tl193796193835%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193794193830%_)))
                          (_%hd193795193833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193794193830%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193796193835%_))
                          (_%__kont198198198199%_
                           _%hd193795193833%_
                           _%hd193792193825%_
                           _%hd193700194196%_)
                          (let () (declare (not safe)) (_%g193691193801%_)))))
                  (let () (declare (not safe)) (_%g193691193801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193738194024%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193701194198%_))
                                                  (let ((_%e193776193919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193701194198%_))))
                                                    (let ((_%tl193778193924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193776193919%_)))
                                                          (_%hd193777193922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193776193919%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193778193924%_))
                                                          (let ((_%e193779193927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193778193924%_))))
                    (let ((_%tl193781193932%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193779193927%_)))
                          (_%hd193780193930%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193779193927%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193781193932%_))
                          (_%__match198397198398%_
                           _%e193696194185%_
                           _%hd193697194188%_
                           _%tl193698194190%_
                           _%e193699194193%_
                           _%hd193700194196%_
                           _%tl193701194198%_
                           _%e193702194201%_
                           _%hd193703194204%_
                           _%tl193704194206%_
                           _%e193727193995%_
                           _%hd193728193998%_
                           _%tl193729194000%_
                           _%e193730194003%_
                           _%hd193731194006%_
                           _%tl193732194008%_
                           _%e193733194011%_
                           _%hd193734194014%_
                           _%tl193735194016%_
                           _%e193736194019%_
                           _%hd193737194022%_
                           _%tl193738194024%_
                           _%e193776193919%_
                           _%hd193777193922%_
                           _%tl193778193924%_
                           _%e193779193927%_
                           _%hd193780193930%_
                           _%tl193781193932%_)
                          (let () (declare (not safe)) (_%g193691193801%_)))))
                  (let () (declare (not safe)) (_%g193691193801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193701194198%_))
                                                  (let ((_%e193791193822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193701194198%_))))
                                                    (let ((_%tl193793193827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193791193822%_)))
                                                          (_%hd193792193825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193791193822%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193793193827%_))
                                                          (let ((_%e193794193830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193793193827%_))))
                    (let ((_%tl193796193835%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193794193830%_)))
                          (_%hd193795193833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193794193830%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193796193835%_))
                          (_%__kont198198198199%_
                           _%hd193795193833%_
                           _%hd193792193825%_
                           _%hd193700194196%_)
                          (let () (declare (not safe)) (_%g193691193801%_)))))
                  (let () (declare (not safe)) (_%g193691193801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193738194024%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193701194198%_))
                                          (let ((_%e193776193919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193701194198%_))))
                                            (let ((_%tl193778193924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193776193919%_)))
                                                  (_%hd193777193922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193776193919%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193778193924%_))
                                                  (let ((_%e193779193927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193778193924%_))))
                                                    (let ((_%tl193781193932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193779193927%_)))
                                                          (_%hd193780193930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193779193927%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193781193932%_))
                                                          (_%__match198397198398%_
                                                           _%e193696194185%_
                                                           _%hd193697194188%_
                                                           _%tl193698194190%_
                                                           _%e193699194193%_
                                                           _%hd193700194196%_
                                                           _%tl193701194198%_
                                                           _%e193702194201%_
                                                           _%hd193703194204%_
                                                           _%tl193704194206%_
                                                           _%e193727193995%_
                                                           _%hd193728193998%_
                                                           _%tl193729194000%_
                                                           _%e193730194003%_
                                                           _%hd193731194006%_
                                                           _%tl193732194008%_
                                                           _%e193733194011%_
                                                           _%hd193734194014%_
                                                           _%tl193735194016%_
                                                           _%e193736194019%_
                                                           _%hd193737194022%_
                                                           _%tl193738194024%_
                                                           _%e193776193919%_
                                                           _%hd193777193922%_
                                                           _%tl193778193924%_
                                                           _%e193779193927%_
                                                           _%hd193780193930%_
                                                           _%tl193781193932%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193691193801%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193691193801%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193701194198%_))
                                          (let ((_%e193791193822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193701194198%_))))
                                            (let ((_%tl193793193827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193791193822%_)))
                                                  (_%hd193792193825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193791193822%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193793193827%_))
                                                  (let ((_%e193794193830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193793193827%_))))
                                                    (let ((_%tl193796193835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193794193830%_)))
                                                          (_%hd193795193833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193794193830%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193796193835%_))
                                                          (_%__kont198198198199%_
                                                           _%hd193795193833%_
                                                           _%hd193792193825%_
                                                           _%hd193700194196%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193691193801%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193691193801%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193738194024%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193701194198%_))
                                      (let ((_%e193776193919%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193701194198%_))))
                                        (let ((_%tl193778193924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193776193919%_)))
                                              (_%hd193777193922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193776193919%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193778193924%_))
                                              (let ((_%e193779193927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193778193924%_))))
                                                (let ((_%tl193781193932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193779193927%_)))
                                                      (_%hd193780193930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193779193927%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193781193932%_))
                                                      (_%__match198397198398%_
                                                       _%e193696194185%_
                                                       _%hd193697194188%_
                                                       _%tl193698194190%_
                                                       _%e193699194193%_
                                                       _%hd193700194196%_
                                                       _%tl193701194198%_
                                                       _%e193702194201%_
                                                       _%hd193703194204%_
                                                       _%tl193704194206%_
                                                       _%e193727193995%_
                                                       _%hd193728193998%_
                                                       _%tl193729194000%_
                                                       _%e193730194003%_
                                                       _%hd193731194006%_
                                                       _%tl193732194008%_
                                                       _%e193733194011%_
                                                       _%hd193734194014%_
                                                       _%tl193735194016%_
                                                       _%e193736194019%_
                                                       _%hd193737194022%_
                                                       _%tl193738194024%_
                                                       _%e193776193919%_
                                                       _%hd193777193922%_
                                                       _%tl193778193924%_
                                                       _%e193779193927%_
                                                       _%hd193780193930%_
                                                       _%tl193781193932%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193691193801%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193691193801%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193691193801%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193701194198%_))
                                      (let ((_%e193791193822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193701194198%_))))
                                        (let ((_%tl193793193827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193791193822%_)))
                                              (_%hd193792193825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193791193822%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193793193827%_))
                                              (let ((_%e193794193830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193793193827%_))))
                                                (let ((_%tl193796193835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193794193830%_)))
                                                      (_%hd193795193833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193794193830%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193796193835%_))
                                                      (_%__kont198198198199%_
                                                       _%hd193795193833%_
                                                       _%hd193792193825%_
                                                       _%hd193700194196%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193691193801%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193691193801%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193691193801%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193738194024%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193701194198%_))
                                  (let ((_%e193776193919%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193701194198%_))))
                                    (let ((_%tl193778193924%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193776193919%_)))
                                          (_%hd193777193922%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193776193919%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193778193924%_))
                                          (let ((_%e193779193927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193778193924%_))))
                                            (let ((_%tl193781193932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193779193927%_)))
                                                  (_%hd193780193930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193779193927%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193781193932%_))
                                                  (_%__match198397198398%_
                                                   _%e193696194185%_
                                                   _%hd193697194188%_
                                                   _%tl193698194190%_
                                                   _%e193699194193%_
                                                   _%hd193700194196%_
                                                   _%tl193701194198%_
                                                   _%e193702194201%_
                                                   _%hd193703194204%_
                                                   _%tl193704194206%_
                                                   _%e193727193995%_
                                                   _%hd193728193998%_
                                                   _%tl193729194000%_
                                                   _%e193730194003%_
                                                   _%hd193731194006%_
                                                   _%tl193732194008%_
                                                   _%e193733194011%_
                                                   _%hd193734194014%_
                                                   _%tl193735194016%_
                                                   _%e193736194019%_
                                                   _%hd193737194022%_
                                                   _%tl193738194024%_
                                                   _%e193776193919%_
                                                   _%hd193777193922%_
                                                   _%tl193778193924%_
                                                   _%e193779193927%_
                                                   _%hd193780193930%_
                                                   _%tl193781193932%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193691193801%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193691193801%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193701194198%_))
                                  (let ((_%e193791193822%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193701194198%_))))
                                    (let ((_%tl193793193827%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193791193822%_)))
                                          (_%hd193792193825%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193791193822%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193793193827%_))
                                          (let ((_%e193794193830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193793193827%_))))
                                            (let ((_%tl193796193835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193794193830%_)))
                                                  (_%hd193795193833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193794193830%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193796193835%_))
                                                  (_%__kont198198198199%_
                                                   _%hd193795193833%_
                                                   _%hd193792193825%_
                                                   _%hd193700194196%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193691193801%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193691193801%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193738194024%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193701194198%_))
                          (let ((_%e193776193919%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193701194198%_))))
                            (let ((_%tl193778193924%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193776193919%_)))
                                  (_%hd193777193922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193776193919%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193778193924%_))
                                  (let ((_%e193779193927%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193778193924%_))))
                                    (let ((_%tl193781193932%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193779193927%_)))
                                          (_%hd193780193930%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193779193927%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193781193932%_))
                                          (_%__match198397198398%_
                                           _%e193696194185%_
                                           _%hd193697194188%_
                                           _%tl193698194190%_
                                           _%e193699194193%_
                                           _%hd193700194196%_
                                           _%tl193701194198%_
                                           _%e193702194201%_
                                           _%hd193703194204%_
                                           _%tl193704194206%_
                                           _%e193727193995%_
                                           _%hd193728193998%_
                                           _%tl193729194000%_
                                           _%e193730194003%_
                                           _%hd193731194006%_
                                           _%tl193732194008%_
                                           _%e193733194011%_
                                           _%hd193734194014%_
                                           _%tl193735194016%_
                                           _%e193736194019%_
                                           _%hd193737194022%_
                                           _%tl193738194024%_
                                           _%e193776193919%_
                                           _%hd193777193922%_
                                           _%tl193778193924%_
                                           _%e193779193927%_
                                           _%hd193780193930%_
                                           _%tl193781193932%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193691193801%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193691193801%_)))))
                          (let () (declare (not safe)) (_%g193691193801%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193701194198%_))
                          (let ((_%e193791193822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193701194198%_))))
                            (let ((_%tl193793193827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193791193822%_)))
                                  (_%hd193792193825%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193791193822%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193793193827%_))
                                  (let ((_%e193794193830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193793193827%_))))
                                    (let ((_%tl193796193835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193794193830%_)))
                                          (_%hd193795193833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193794193830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193796193835%_))
                                          (_%__kont198198198199%_
                                           _%hd193795193833%_
                                           _%hd193792193825%_
                                           _%hd193700194196%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193691193801%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193691193801%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g193691193801%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193701194198%_))
                                                      (let ((_%e193791193822%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193701194198%_))))
                (let ((_%tl193793193827%_
                       (let () (declare (not safe)) (##cdr _%e193791193822%_)))
                      (_%hd193792193825%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193791193822%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193793193827%_))
                      (let ((_%e193794193830%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193793193827%_))))
                        (let ((_%tl193796193835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193794193830%_)))
                              (_%hd193795193833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193794193830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193796193835%_))
                              (_%__kont198198198199%_
                               _%hd193795193833%_
                               _%hd193792193825%_
                               _%hd193700194196%_)
                              (let ()
                                (declare (not safe))
                                (_%g193691193801%_)))))
                      (let () (declare (not safe)) (_%g193691193801%_)))))
              (let () (declare (not safe)) (_%g193691193801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193701194198%_))
                                                  (let ((_%e193791193822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193701194198%_))))
                                                    (let ((_%tl193793193827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193791193822%_)))
                                                          (_%hd193792193825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193791193822%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193793193827%_))
                                                          (let ((_%e193794193830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193793193827%_))))
                    (let ((_%tl193796193835%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193794193830%_)))
                          (_%hd193795193833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193794193830%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193796193835%_))
                          (_%__kont198198198199%_
                           _%hd193795193833%_
                           _%hd193792193825%_
                           _%hd193700194196%_)
                          (let () (declare (not safe)) (_%g193691193801%_)))))
                  (let () (declare (not safe)) (_%g193691193801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193701194198%_))
                                          (let ((_%e193791193822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193701194198%_))))
                                            (let ((_%tl193793193827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193791193822%_)))
                                                  (_%hd193792193825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193791193822%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193793193827%_))
                                                  (let ((_%e193794193830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193793193827%_))))
                                                    (let ((_%tl193796193835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193794193830%_)))
                                                          (_%hd193795193833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193794193830%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193796193835%_))
                                                          (_%__kont198198198199%_
                                                           _%hd193795193833%_
                                                           _%hd193792193825%_
                                                           _%hd193700194196%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193691193801%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193691193801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193701194198%_))
                                      (let ((_%e193791193822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193701194198%_))))
                                        (let ((_%tl193793193827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193791193822%_)))
                                              (_%hd193792193825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193791193822%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193793193827%_))
                                              (let ((_%e193794193830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193793193827%_))))
                                                (let ((_%tl193796193835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193794193830%_)))
                                                      (_%hd193795193833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193794193830%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193796193835%_))
                                                      (_%__kont198198198199%_
                                                       _%hd193795193833%_
                                                       _%hd193792193825%_
                                                       _%hd193700194196%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193691193801%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193691193801%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193691193801%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193701194198%_))
                                  (let ((_%e193791193822%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193701194198%_))))
                                    (let ((_%tl193793193827%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193791193822%_)))
                                          (_%hd193792193825%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193791193822%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193793193827%_))
                                          (let ((_%e193794193830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193793193827%_))))
                                            (let ((_%tl193796193835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193794193830%_)))
                                                  (_%hd193795193833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193794193830%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193796193835%_))
                                                  (_%__kont198198198199%_
                                                   _%hd193795193833%_
                                                   _%hd193792193825%_
                                                   _%hd193700194196%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193691193801%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193691193801%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193691193801%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193701194198%_))
                          (let ((_%e193791193822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193701194198%_))))
                            (let ((_%tl193793193827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193791193822%_)))
                                  (_%hd193792193825%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193791193822%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193793193827%_))
                                  (let ((_%e193794193830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193793193827%_))))
                                    (let ((_%tl193796193835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193794193830%_)))
                                          (_%hd193795193833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193794193830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193796193835%_))
                                          (_%__kont198198198199%_
                                           _%hd193795193833%_
                                           _%hd193792193825%_
                                           _%hd193700194196%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193691193801%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193691193801%_)))))
                          (let () (declare (not safe)) (_%g193691193801%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl193701194198%_))
                  (let ((_%e193791193822%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193701194198%_))))
                    (let ((_%tl193793193827%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193791193822%_)))
                          (_%hd193792193825%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193791193822%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193793193827%_))
                          (let ((_%e193794193830%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193793193827%_))))
                            (let ((_%tl193796193835%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193794193830%_)))
                                  (_%hd193795193833%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193794193830%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193796193835%_))
                                  (_%__kont198198198199%_
                                   _%hd193795193833%_
                                   _%hd193792193825%_
                                   _%hd193700194196%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g193691193801%_)))))
                          (let () (declare (not safe)) (_%g193691193801%_)))))
                  (let () (declare (not safe)) (_%g193691193801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193701194198%_))
                                                      (let ((_%e193791193822%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193701194198%_))))
                (let ((_%tl193793193827%_
                       (let () (declare (not safe)) (##cdr _%e193791193822%_)))
                      (_%hd193792193825%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193791193822%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193793193827%_))
                      (let ((_%e193794193830%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193793193827%_))))
                        (let ((_%tl193796193835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193794193830%_)))
                              (_%hd193795193833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193794193830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193796193835%_))
                              (_%__kont198198198199%_
                               _%hd193795193833%_
                               _%hd193792193825%_
                               _%hd193700194196%_)
                              (let ()
                                (declare (not safe))
                                (_%g193691193801%_)))))
                      (let () (declare (not safe)) (_%g193691193801%_)))))
              (let () (declare (not safe)) (_%g193691193801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193701194198%_))
                                              (let ((_%e193791193822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193701194198%_))))
                                                (let ((_%tl193793193827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193791193822%_)))
                                                      (_%hd193792193825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193791193822%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193793193827%_))
                                                      (let ((_%e193794193830%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193793193827%_))))
                (let ((_%tl193796193835%_
                       (let () (declare (not safe)) (##cdr _%e193794193830%_)))
                      (_%hd193795193833%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193794193830%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193796193835%_))
                      (_%__kont198198198199%_
                       _%hd193795193833%_
                       _%hd193792193825%_
                       _%hd193700194196%_)
                      (let () (declare (not safe)) (_%g193691193801%_)))))
              (let () (declare (not safe)) (_%g193691193801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g193691193801%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193701194198%_))
                                      (let ((_%e193791193822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193701194198%_))))
                                        (let ((_%tl193793193827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193791193822%_)))
                                              (_%hd193792193825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193791193822%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193793193827%_))
                                              (let ((_%e193794193830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193793193827%_))))
                                                (let ((_%tl193796193835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193794193830%_)))
                                                      (_%hd193795193833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193794193830%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193796193835%_))
                                                      (_%__kont198198198199%_
                                                       _%hd193795193833%_
                                                       _%hd193792193825%_
                                                       _%hd193700194196%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193691193801%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193691193801%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193691193801%_))))))
                          (let () (declare (not safe)) (_%g193691193801%_)))))
                  (let () (declare (not safe)) (_%g193691193801%_))))))))))
