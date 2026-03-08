(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1773012992)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp255553 (list gxc#::basic-xform::t))
            (__tmp255552 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp255553
         '()
         __tmp255552
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args254830%_
        (apply make-instance gxc#::optimize-call::t _%$args254830%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp255554
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
        (__make-atomic-promise __tmp255554)))
    (define gxc#apply-optimize-call
      (lambda (_%stx254822%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self254825%_
                (let ((__obj255544
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj255544))
               (__tmp255555
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254825%_ _%stx254822%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255555
           gxc#current-compile-method
           _%self254825%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp255557 (list gxc#::void::t))
            (__tmp255556 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp255557
         '()
         __tmp255556
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args254819%_
        (apply make-instance gxc#::check-return-type::t _%$args254819%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp255558
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
        (__make-atomic-promise __tmp255558)))
    (define gxc#apply-check-return-type
      (lambda (_%stx254811%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self254814%_
                (let ((__obj255546
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj255546))
               (__tmp255559
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254814%_ _%stx254811%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255559
           gxc#current-compile-method
           _%self254814%_))))
    (define gxc#optimize-call%
      (lambda (_%self254418%_ _%stx254419%_)
        (let* ((_%__stx254899254900%_ _%stx254419%_)
               (_%g254422254468%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254899254900%_)))))
          (let ((_%__kont254901254902%_
                 (lambda (_%g254424254607%_ _%g254425254608%_)
                   (let* ((_%rator-id254628%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g254425254608%_)))
                          (_%rator-type254630%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id254628%_))))
                     (if (or (not _%rator-type254630%_)
                             (eq? (##structure-ref
                                   _%rator-type254630%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self254418%_ _%stx254419%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type254630%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp255560
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type254630%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id254628%_
                                  '" => "
                                  _%rator-type254630%_
                                  '" "
                                  __tmp255560))
                               (let* ((_%optimized254645%_
                                       (let ((__method255547
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type254630%_
                                                 'optimize-call))))
                                         (if __method255547
                                             (let ((__tmp255561
                                                    (let ((__tmp255562
                                                           (lambda (_%g254637254640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g254638254642%_)
                     (cons _%g254637254640%_ _%g254638254642%_))))
              (declare (not safe))
              (foldr__0 __tmp255562 '() _%g254424254607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method255547
                                                _%rator-type254630%_
                                                _%self254418%_
                                                _%stx254419%_
                                                __tmp255561))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type254630%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx254847254848%_
                                       _%optimized254645%_)
                                      (_%g254648254677%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx254847254848%_)))))
                                 (let ((_%__kont254849254850%_
                                        (lambda (_%g254650254743%_
                                                 _%g254651254744%_)
                                          (let* ((_%optimized-rator-id254771%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g254651254744%_)))
                                                 (_%rator-type254776%_
                                                  (let ((_%$e254773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id254771%_))))
                                                    (if _%$e254773%_
                                                        _%$e254773%_
                                                        _%rator-type254630%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type254776%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id254771%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type254776%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type254776%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized254645%_
                                                (let ((__tmp255563
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g254651254744%_ '()))
                           (let ((__tmp255564
                                  (lambda (_%g254784254787%_ _%g254785254789%_)
                                    (cons _%g254784254787%_
                                          _%g254785254789%_))))
                             (declare (not safe))
                             (foldr__0 __tmp255564 '() _%g254650254743%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp255563
                                                   _%stx254419%_))))))
                                       (_%__kont254853254854%_
                                        (lambda () _%optimized254645%_)))
                                   (let ((_%__match254896254897%_
                                          (lambda (_%e254652254689%_
                                                   _%hd254653254692%_
                                                   _%tl254654254694%_
                                                   _%e254655254697%_
                                                   _%hd254656254700%_
                                                   _%tl254657254702%_
                                                   _%e254658254705%_
                                                   _%hd254659254708%_
                                                   _%tl254660254710%_
                                                   _%e254661254713%_
                                                   _%hd254662254716%_
                                                   _%tl254663254718%_
                                                   _%__splice254851254852%_
                                                   _%target254664254721%_
                                                   _%tl254666254723%_)
                                            (letrec ((_%loop254667254726%_
                                                      (lambda (_%hd254665254729%_
                                                               _%arg254671254731%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd254665254729%_))
                                                            (let ((_%e254668254733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd254665254729%_))))
                      (let ((_%lp-tl254670254738%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254668254733%_)))
                            (_%lp-hd254669254736%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254668254733%_))))
                        (_%loop254667254726%_
                         _%lp-tl254670254738%_
                         (cons _%lp-hd254669254736%_ _%arg254671254731%_))))
                    (let ((_%arg254672254741%_ (reverse _%arg254671254731%_)))
                      (_%__kont254849254850%_
                       _%arg254672254741%_
                       _%hd254662254716%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop254667254726%_
                                               _%target254664254721%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx254847254848%_))
                                         (let ((_%e254652254689%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx254847254848%_))))
                                           (let ((_%tl254654254694%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254652254689%_)))
                                                 (_%hd254653254692%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254652254689%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd254653254692%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd254653254692%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl254654254694%_))
                                                         (let ((_%e254655254697%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl254654254694%_))))
                   (let ((_%tl254657254702%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e254655254697%_)))
                         (_%hd254656254700%_
                          (let ()
                            (declare (not safe))
                            (##car _%e254655254697%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd254656254700%_))
                         (let ((_%e254658254705%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd254656254700%_))))
                           (let ((_%tl254660254710%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e254658254705%_)))
                                 (_%hd254659254708%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e254658254705%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd254659254708%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd254659254708%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl254660254710%_))
                                         (let ((_%e254661254713%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl254660254710%_))))
                                           (let ((_%tl254663254718%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254661254713%_)))
                                                 (_%hd254662254716%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254661254713%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl254663254718%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl254657254702%_))
                                                     (let ((_%__splice254851254852%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl254657254702%_
                                                               '0))))
                                                       (let ((_%tl254666254723%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice254851254852%_ '1)))
                     (_%target254664254721%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice254851254852%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl254666254723%_))
                     (_%__match254896254897%_
                      _%e254652254689%_
                      _%hd254653254692%_
                      _%tl254654254694%_
                      _%e254655254697%_
                      _%hd254656254700%_
                      _%tl254657254702%_
                      _%e254658254705%_
                      _%hd254659254708%_
                      _%tl254660254710%_
                      _%e254661254713%_
                      _%hd254662254716%_
                      _%tl254663254718%_
                      _%__splice254851254852%_
                      _%target254664254721%_
                      _%tl254666254723%_)
                     (_%__kont254853254854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254853254854%_))
                                                 (_%__kont254853254854%_))))
                                         (_%__kont254853254854%_))
                                     (_%__kont254853254854%_))
                                 (_%__kont254853254854%_))))
                         (_%__kont254853254854%_))))
                 (_%__kont254853254854%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254853254854%_))
                                                 (_%__kont254853254854%_))))
                                         (_%__kont254853254854%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type254630%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type254630%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp255565
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g254425254608%_
                                                                '()))
                                                    (map (lambda (_%g254795254797%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self254418%_
                                                              _%g254795254797%_)))
                                                         (let ((__tmp255566
                                                                (lambda (_%g254799254802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g254800254804%_)
                          (cons _%g254799254802%_ _%g254800254804%_))))
                   (declare (not safe))
                   (foldr__0 __tmp255566 '() _%g254424254607%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp255565
                                    _%stx254419%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx254419%_
                                    _%rator-type254630%_))))))))
                (_%__kont254905254906%_
                 (lambda (_%g254447254511%_ _%g254448254512%_)
                   (let ((_%rator-type254529%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g254448254512%_))))
                     (if (and _%rator-type254529%_
                              (eq? (##structure-ref
                                    _%rator-type254529%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type254529%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type254529%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type254529%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp255567
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self254418%_
                                               _%g254448254512%_))
                                            (map (lambda (_%g254531254533%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self254418%_
                                                      _%g254531254533%_)))
                                                 (let ((__tmp255568
                                                        (lambda (_%g254535254538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g254536254540%_)
                  (cons _%g254535254538%_ _%g254536254540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp255568
                                                    '()
                                                    _%g254447254511%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp255567 _%stx254419%_))
                         (if (or (not _%rator-type254529%_)
                                 (let ((__tmp255569
                                        (##structure-ref
                                         _%rator-type254529%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp255569 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self254418%_ _%stx254419%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx254419%_
                                _%rator-type254529%_))))))))
            (let* ((_%__match254966254967%_
                    (lambda (_%e254449254473%_
                             _%hd254450254476%_
                             _%tl254451254478%_
                             _%e254452254481%_
                             _%hd254453254484%_
                             _%tl254454254486%_
                             _%__splice254907254908%_
                             _%target254455254489%_
                             _%tl254457254491%_)
                      (letrec ((_%loop254458254494%_
                                (lambda (_%hd254456254497%_
                                         _%rand254462254499%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd254456254497%_))
                                      (let ((_%e254459254501%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd254456254497%_))))
                                        (let ((_%lp-tl254461254506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254459254501%_)))
                                              (_%lp-hd254460254504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254459254501%_))))
                                          (_%loop254458254494%_
                                           _%lp-tl254461254506%_
                                           (cons _%lp-hd254460254504%_
                                                 _%rand254462254499%_))))
                                      (let ((_%rand254463254509%_
                                             (reverse _%rand254462254499%_)))
                                        (_%__kont254905254906%_
                                         _%rand254463254509%_
                                         _%hd254453254484%_))))))
                        (_%loop254458254494%_ _%target254455254489%_ '()))))
                   (_%__match254946254947%_
                    (lambda (_%e254426254553%_
                             _%hd254427254556%_
                             _%tl254428254558%_
                             _%e254429254561%_
                             _%hd254430254564%_
                             _%tl254431254566%_
                             _%e254432254569%_
                             _%hd254433254572%_
                             _%tl254434254574%_
                             _%e254435254577%_
                             _%hd254436254580%_
                             _%tl254437254582%_
                             _%__splice254903254904%_
                             _%target254438254585%_
                             _%tl254440254587%_)
                      (letrec ((_%loop254441254590%_
                                (lambda (_%hd254439254593%_
                                         _%rand254445254595%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd254439254593%_))
                                      (let ((_%e254442254597%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd254439254593%_))))
                                        (let ((_%lp-tl254444254602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254442254597%_)))
                                              (_%lp-hd254443254600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254442254597%_))))
                                          (_%loop254441254590%_
                                           _%lp-tl254444254602%_
                                           (cons _%lp-hd254443254600%_
                                                 _%rand254445254595%_))))
                                      (let ((_%rand254446254605%_
                                             (reverse _%rand254445254595%_)))
                                        (_%__kont254901254902%_
                                         _%rand254446254605%_
                                         _%hd254436254580%_))))))
                        (_%loop254441254590%_ _%target254438254585%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254899254900%_))
                  (let ((_%e254426254553%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254899254900%_))))
                    (let ((_%tl254428254558%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254426254553%_)))
                          (_%hd254427254556%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254426254553%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254428254558%_))
                          (let ((_%e254429254561%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl254428254558%_))))
                            (let ((_%tl254431254566%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254429254561%_)))
                                  (_%hd254430254564%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254429254561%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd254430254564%_))
                                  (let ((_%e254432254569%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd254430254564%_))))
                                    (let ((_%tl254434254574%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254432254569%_)))
                                          (_%hd254433254572%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254432254569%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd254433254572%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd254433254572%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl254434254574%_))
                                                  (let ((_%e254435254577%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl254434254574%_))))
                                                    (let ((_%tl254437254582%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254435254577%_)))
                                                          (_%hd254436254580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254435254577%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl254437254582%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl254431254566%_))
                      (let ((_%__splice254903254904%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl254431254566%_
                                '0))))
                        (let ((_%tl254440254587%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254903254904%_ '1)))
                              (_%target254438254585%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254903254904%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254440254587%_))
                              (_%__match254946254947%_
                               _%e254426254553%_
                               _%hd254427254556%_
                               _%tl254428254558%_
                               _%e254429254561%_
                               _%hd254430254564%_
                               _%tl254431254566%_
                               _%e254432254569%_
                               _%hd254433254572%_
                               _%tl254434254574%_
                               _%e254435254577%_
                               _%hd254436254580%_
                               _%tl254437254582%_
                               _%__splice254903254904%_
                               _%target254438254585%_
                               _%tl254440254587%_)
                              (let ()
                                (declare (not safe))
                                (_%g254422254468%_)))))
                      (let () (declare (not safe)) (_%g254422254468%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl254431254566%_))
                      (let ((_%__splice254907254908%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl254431254566%_
                                '0))))
                        (let ((_%tl254457254491%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254907254908%_ '1)))
                              (_%target254455254489%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254907254908%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254457254491%_))
                              (_%__match254966254967%_
                               _%e254426254553%_
                               _%hd254427254556%_
                               _%tl254428254558%_
                               _%e254429254561%_
                               _%hd254430254564%_
                               _%tl254431254566%_
                               _%__splice254907254908%_
                               _%target254455254489%_
                               _%tl254457254491%_)
                              (let ()
                                (declare (not safe))
                                (_%g254422254468%_)))))
                      (let () (declare (not safe)) (_%g254422254468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl254431254566%_))
                                                      (let ((_%__splice254907254908%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl254431254566%_
                        '0))))
                (let ((_%tl254457254491%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254907254908%_ '1)))
                      (_%target254455254489%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254907254908%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl254457254491%_))
                      (_%__match254966254967%_
                       _%e254426254553%_
                       _%hd254427254556%_
                       _%tl254428254558%_
                       _%e254429254561%_
                       _%hd254430254564%_
                       _%tl254431254566%_
                       _%__splice254907254908%_
                       _%target254455254489%_
                       _%tl254457254491%_)
                      (let () (declare (not safe)) (_%g254422254468%_)))))
              (let () (declare (not safe)) (_%g254422254468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl254431254566%_))
                                                  (let ((_%__splice254907254908%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl254431254566%_
                                                            '0))))
                                                    (let ((_%tl254457254491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254907254908%_
                                                              '1)))
                                                          (_%target254455254489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254907254908%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl254457254491%_))
                                                          (_%__match254966254967%_
                                                           _%e254426254553%_
                                                           _%hd254427254556%_
                                                           _%tl254428254558%_
                                                           _%e254429254561%_
                                                           _%hd254430254564%_
                                                           _%tl254431254566%_
                                                           _%__splice254907254908%_
                                                           _%target254455254489%_
                                                           _%tl254457254491%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g254422254468%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g254422254468%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl254431254566%_))
                                              (let ((_%__splice254907254908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl254431254566%_
                                                        '0))))
                                                (let ((_%tl254457254491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254907254908%_
                                                          '1)))
                                                      (_%target254455254489%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254907254908%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl254457254491%_))
                                                      (_%__match254966254967%_
                                                       _%e254426254553%_
                                                       _%hd254427254556%_
                                                       _%tl254428254558%_
                                                       _%e254429254561%_
                                                       _%hd254430254564%_
                                                       _%tl254431254566%_
                                                       _%__splice254907254908%_
                                                       _%target254455254489%_
                                                       _%tl254457254491%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g254422254468%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g254422254468%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl254431254566%_))
                                      (let ((_%__splice254907254908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl254431254566%_
                                                '0))))
                                        (let ((_%tl254457254491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254907254908%_
                                                  '1)))
                                              (_%target254455254489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254907254908%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254457254491%_))
                                              (_%__match254966254967%_
                                               _%e254426254553%_
                                               _%hd254427254556%_
                                               _%tl254428254558%_
                                               _%e254429254561%_
                                               _%hd254430254564%_
                                               _%tl254431254566%_
                                               _%__splice254907254908%_
                                               _%target254455254489%_
                                               _%tl254457254491%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g254422254468%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g254422254468%_))))))
                          (let () (declare (not safe)) (_%g254422254468%_)))))
                  (let () (declare (not safe)) (_%g254422254468%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self254380%_ _%ctx254381%_ _%stx254382%_ _%args254383%_)
        (let ((_%self254386%_ _%self254380%_))
          (if (let ((__method255548
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self254386%_ 'check-arguments))))
                (if __method255548
                    (let ()
                      (declare (not safe))
                      (__method255548
                       _%self254386%_
                       _%ctx254381%_
                       _%stx254382%_
                       _%args254383%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self254386%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature254396%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254386%_ '2 '#f '#f)))
                     (_%signature254398%_ _%signature254396%_)
                     (_%$e254408%_
                      (if _%signature254398%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature254398%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e254408%_
                    ((lambda (_%unchecked254411%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked254411%_))
                           (let ((__tmp255570
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked254411%_
                                                          '()))
                                              (map (lambda (_%g254412254414%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx254381%_
                                                        _%g254412254414%_)))
                                                   _%args254383%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp255570
                              _%stx254382%_
                              _%ctx254381%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx254381%_ _%stx254382%_))))
                     _%$e254408%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx254381%_ _%stx254382%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx254381%_ _%stx254382%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass254832 __method-table254833)
        (let ((__check-arguments254834
               (let ((__tmp255571
                      (lambda ()
                        (let ((__method254835
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254833
                                  'check-arguments
                                  '#f))))
                          (if __method254835
                              __method254835
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255571))))
          (lambda (_%self254380%_ _%ctx254381%_ _%stx254382%_ _%args254383%_)
            (let ((_%self254386%_ _%self254380%_))
              (if ((force __check-arguments254834)
                   _%self254386%_
                   _%ctx254381%_
                   _%stx254382%_
                   _%args254383%_)
                  (let* ((_%signature254396%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254386%_
                             '2
                             '#f
                             '#f)))
                         (_%signature254398%_ _%signature254396%_)
                         (_%$e254408%_
                          (if _%signature254398%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature254398%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e254408%_
                        ((lambda (_%unchecked254411%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked254411%_))
                               (let ((__tmp255572
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked254411%_
                                                              '()))
                                                  (map (lambda (_%g254412254414%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx254381%_
                                                            _%g254412254414%_)))
                                                       _%args254383%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp255572
                                  _%stx254382%_
                                  _%ctx254381%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx254381%_
                                  _%stx254382%_))))
                         _%$e254408%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx254381%_ _%stx254382%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx254381%_ _%stx254382%_))))))))
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
      (lambda (_%self254133%_ _%ctx254134%_ _%stx254135%_ _%args254136%_)
        (let* ((_%self254139%_ _%self254133%_)
               (_%signature254148254150%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254139%_ '2 '#f '#f))))
          (if _%signature254148254150%_
              (let* ((_%signature254152%_ _%signature254148254150%_)
                     (_%argument-types254153254155%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature254152%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types254153254155%_
                    (let* ((_%argument-types254157%_
                            _%argument-types254153254155%_)
                           (_%argument-types254162%_
                            (let ((__tmp255573
                                   (lambda (_%t254160%_)
                                     (if _%t254160%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx254135%_
                                            _%t254160%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp255573
                               _%argument-types254157%_))))
                      (let _%loop254164%_ ((_%rest-args254166%_ _%args254136%_)
                                           (_%rest-types254167%_
                                            _%argument-types254162%_)
                                           (_%result254168%_ '#t))
                        (let* ((_%rest-args254169254177%_ _%rest-args254166%_)
                               (_%else254171254185%_
                                (lambda () _%result254168%_))
                               (_%K254173254246%_
                                (lambda (_%rest-args254188%_ _%arg254189%_)
                                  (let* ((_%rest-types254190254201%_
                                          _%rest-types254167%_)
                                         (_%E254194254205%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types254190254201%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K254197254234%_
                                           (lambda (_%rest-types254231%_
                                                    _%type254232%_)
                                             (_%loop254164%_
                                              _%rest-args254188%_
                                              _%rest-types254231%_
                                              (if (gxc#check-expression-type!
                                                   _%stx254135%_
                                                   _%arg254189%_
                                                   _%type254232%_)
                                                  _%result254168%_
                                                  '#f))))
                                          (_%K254196254225%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx254135%_
                                                _%argument-types254162%_))))
                                          (_%K254195254215%_
                                           (lambda (_%tail-type254209%_)
                                             (if (let ((__tmp255574
                                                        (lambda (_%g254210254212%_)
                                                          (gxc#check-expression-type!
                                                           _%stx254135%_
                                                           _%g254210254212%_
                                                           _%tail-type254209%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp255574
                                                    _%rest-args254188%_))
                                                 _%result254168%_
                                                 '#f))))
                                      (let ((_%try-match254192254228%_
                                             (lambda ()
                                               (if (null? _%rest-types254190254201%_)
                                                   (_%K254196254225%_)
                                                   (let ((_%tail-type254218%_
                                                          _%rest-types254190254201%_))
                                                     (_%K254195254215%_
                                                      _%tail-type254218%_))))))
                                        (if (pair? _%rest-types254190254201%_)
                                            (let ((_%tl254199254239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types254190254201%_)))
                                                  (_%hd254198254237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types254190254201%_))))
                                              (let ((_%type254242%_
                                                     _%hd254198254237%_)
                                                    (_%rest-types254244%_
                                                     _%tl254199254239%_))
                                                (_%K254197254234%_
                                                 _%rest-types254244%_
                                                 _%type254242%_)))
                                            (_%try-match254192254228%_))))))))
                          (if (pair? _%rest-args254169254177%_)
                              (let ((_%hd254174254249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args254169254177%_)))
                                    (_%tl254175254251%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args254169254177%_))))
                                (let* ((_%arg254254%_ _%hd254174254249%_)
                                       (_%rest-args254256%_
                                        _%tl254175254251%_))
                                  (_%K254173254246%_
                                   _%rest-args254256%_
                                   _%arg254254%_)))
                              (_%else254171254185%_)))))
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
      (lambda (_%self253944%_ _%ctx253945%_ _%stx253946%_ _%args253947%_)
        (let* ((_%self253950%_ _%self253944%_)
               (_%g253960253970%_
                (lambda (_%g253961253967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253961253967%_))))
               (_%g253959254008%_
                (lambda (_%g253961253973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253961253973%_))
                      (let ((_%e253963253975%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253961253973%_))))
                        (let ((_%hd253964253978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253963253975%_)))
                              (_%tl253965253980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253963253975%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253965253980%_))
                              ((lambda (_%g253962253983%_)
                                 (let* ((_%klass253995%_
                                         (let ((__tmp255575
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253950%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253946%_
                                            __tmp255575)))
                                        (_%object253997%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253945%_
                                            _%g253962253983%_)))
                                        (_%instance?254002%_
                                         (let ((_%$e253999%_
                                                (gxc#expression-type?
                                                 _%object253997%_
                                                 _%klass253995%_)))
                                           (if _%$e253999%_
                                               _%$e253999%_
                                               (gxc#expression-type?
                                                _%g253962253983%_
                                                _%klass253995%_)))))
                                   (if _%instance?254002%_
                                       (let ((__tmp255576
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253997%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253962253983%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253997%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255576
                                          _%stx253946%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx253945%_
                                          _%stx253946%_)))))
                               _%hd253964253978%_)
                              (_%g253960253970%_ _%g253961253973%_))))
                      (_%g253960253970%_ _%g253961253973%_)))))
          (_%g253959254008%_ _%args253947%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self253740%_ _%ctx253741%_ _%stx253742%_ _%args253743%_)
        (let* ((_%self253746%_ _%self253740%_)
               (_%g253756253766%_
                (lambda (_%g253757253763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253757253763%_))))
               (_%g253755253819%_
                (lambda (_%g253757253769%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253757253769%_))
                      (let ((_%e253759253771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253757253769%_))))
                        (let ((_%hd253760253774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253759253771%_)))
                              (_%tl253761253776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253759253771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253761253776%_))
                              ((lambda (_%g253758253779%_)
                                 (let* ((_%klass253791%_
                                         (let ((__tmp255577
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253746%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253742%_
                                            __tmp255577)))
                                        (_%object253793%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253741%_
                                            _%g253758253779%_)))
                                        (_%instance?253798%_
                                         (let ((_%$e253795%_
                                                (gxc#expression-type?
                                                 _%object253793%_
                                                 _%klass253791%_)))
                                           (if _%$e253795%_
                                               _%$e253795%_
                                               (gxc#expression-type?
                                                _%g253758253779%_
                                                _%klass253791%_))))
                                        (_%klass253801%_ _%klass253791%_))
                                   (if _%instance?253798%_
                                       (let ((__tmp255578
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253793%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253758253779%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253793%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255578
                                          _%stx253742%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253801%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp255579
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass253801%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object253793%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255579
                                              _%stx253742%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass253801%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255580
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass253801%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object253793%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255580
                                                  _%stx253742%_))
                                               (let ((__tmp255581
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self253746%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object253793%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255581
                                                  _%stx253742%_)))))))
                               _%hd253760253774%_)
                              (_%g253756253766%_ _%g253757253769%_))))
                      (_%g253756253766%_ _%g253757253769%_)))))
          (_%g253755253819%_ _%args253743%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx253408%_)
        (let* ((_%__stx254976254977%_ _%stx253408%_)
               (_%g253413253454%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254976254977%_)))))
          (let ((_%__kont254978254979%_ (lambda () '#t))
                (_%__kont254980254981%_ (lambda () '#t))
                (_%__kont254982254983%_
                 (lambda (_%g253427253520%_ _%g253428253521%_)
                   (let ((_%rator-type253542253544%_
                          (let ((__tmp255582
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g253428253521%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp255582))))
                     (if _%rator-type253542253544%_
                         (let* ((_%rator-type253546%_
                                 _%rator-type253542253544%_)
                                (_%rator-signature253547253549%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type253546%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type253546%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature253547253549%_
                               (let* ((_%rator-signature253551%_
                                       _%rator-signature253547253549%_)
                                      (_%rator-effect253552253554%_
                                       (if _%rator-signature253551%_
                                           (##direct-structure-ref
                                            _%rator-signature253551%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect253552253554%_
                                     (let ((_%rator-effect253556%_
                                            _%rator-effect253552253554%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect253556%_)
                                               (equal? '(alloc)
                                                       _%rator-effect253556%_))
                                           (let ((__tmp255583
                                                  (let ((__tmp255584
                                                         (lambda (_%g253561253564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g253562253566%_)
                   (cons _%g253561253564%_ _%g253562253566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp255584
                                                     '()
                                                     _%g253427253520%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp255583))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont254986254987%_ (lambda () '#f)))
            (let ((_%__match255065255066%_
                   (lambda (_%e253429253466%_
                            _%hd253430253469%_
                            _%tl253431253471%_
                            _%e253432253474%_
                            _%hd253433253477%_
                            _%tl253434253479%_
                            _%e253435253482%_
                            _%hd253436253485%_
                            _%tl253437253487%_
                            _%e253438253490%_
                            _%hd253439253493%_
                            _%tl253440253495%_
                            _%__splice254984254985%_
                            _%target253441253498%_
                            _%tl253443253500%_)
                     (letrec ((_%loop253444253503%_
                               (lambda (_%hd253442253506%_
                                        _%rand253448253508%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd253442253506%_))
                                     (let ((_%e253445253510%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd253442253506%_))))
                                       (let ((_%lp-tl253447253515%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e253445253510%_)))
                                             (_%lp-hd253446253513%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e253445253510%_))))
                                         (_%loop253444253503%_
                                          _%lp-tl253447253515%_
                                          (cons _%lp-hd253446253513%_
                                                _%rand253448253508%_))))
                                     (let ((_%rand253449253518%_
                                            (reverse _%rand253448253508%_)))
                                       (_%__kont254982254983%_
                                        _%rand253449253518%_
                                        _%hd253439253493%_))))))
                       (_%loop253444253503%_ _%target253441253498%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254976254977%_))
                  (let ((_%e253415253597%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254976254977%_))))
                    (let ((_%tl253417253602%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253415253597%_)))
                          (_%hd253416253600%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253415253597%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd253416253600%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd253416253600%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253417253602%_))
                                  (let ((_%e253418253605%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253417253602%_))))
                                    (let ((_%tl253420253610%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253418253605%_)))
                                          (_%hd253419253608%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253418253605%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl253420253610%_))
                                          (_%__kont254978254979%_)
                                          (_%__kont254986254987%_))))
                                  (_%__kont254986254987%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd253416253600%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl253417253602%_))
                                      (let ((_%e253424253582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl253417253602%_))))
                                        (let ((_%tl253426253587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253424253582%_)))
                                              (_%hd253425253585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253424253582%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253426253587%_))
                                              (_%__kont254980254981%_)
                                              (_%__kont254986254987%_))))
                                      (_%__kont254986254987%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd253416253600%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl253417253602%_))
                                          (let ((_%e253432253474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl253417253602%_))))
                                            (let ((_%tl253434253479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e253432253474%_)))
                                                  (_%hd253433253477%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e253432253474%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd253433253477%_))
                                                  (let ((_%e253435253482%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd253433253477%_))))
                                                    (let ((_%tl253437253487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253435253482%_)))
                                                          (_%hd253436253485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253435253482%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd253436253485%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd253436253485%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253437253487%_))
                          (let ((_%e253438253490%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253437253487%_))))
                            (let ((_%tl253440253495%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253438253490%_)))
                                  (_%hd253439253493%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253438253490%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl253440253495%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253434253479%_))
                                      (let ((_%__splice254984254985%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl253434253479%_
                                                '0))))
                                        (let ((_%tl253443253500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254984254985%_
                                                  '1)))
                                              (_%target253441253498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254984254985%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253443253500%_))
                                              (_%__match255065255066%_
                                               _%e253415253597%_
                                               _%hd253416253600%_
                                               _%tl253417253602%_
                                               _%e253432253474%_
                                               _%hd253433253477%_
                                               _%tl253434253479%_
                                               _%e253435253482%_
                                               _%hd253436253485%_
                                               _%tl253437253487%_
                                               _%e253438253490%_
                                               _%hd253439253493%_
                                               _%tl253440253495%_
                                               _%__splice254984254985%_
                                               _%target253441253498%_
                                               _%tl253443253500%_)
                                              (_%__kont254986254987%_))))
                                      (_%__kont254986254987%_))
                                  (_%__kont254986254987%_))))
                          (_%__kont254986254987%_))
                      (_%__kont254986254987%_))
                  (_%__kont254986254987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254986254987%_))))
                                          (_%__kont254986254987%_))
                                      (_%__kont254986254987%_))))
                          (_%__kont254986254987%_))))
                  (_%__kont254986254987%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx253403%_ _%klass253404%_)
        (let ((_%expr-type253406%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx253403%_))))
          (if _%expr-type253406%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type253406%_ _%klass253404%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx253381%_ _%expr253382%_ _%type253383%_)
        (if (not _%type253383%_)
            '#f
            (let ((_%$e253386%_
                   (eq? (##structure-ref _%type253383%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e253386%_
                  _%$e253386%_
                  (let ((_%expr-type253390%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr253382%_))))
                    (if (not _%expr-type253390%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type253390%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e253394%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type253390%_
                                      'gxc#!abort::t))))
                              (if _%$e253394%_
                                  _%$e253394%_
                                  (let ((_%$e253397%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type253390%_
                                            _%type253383%_))))
                                    (if _%$e253397%_
                                        _%$e253397%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type253383%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type253383%_
                                                   _%expr-type253390%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx253381%_
                                                   _%expr253382%_
                                                   _%expr-type253390%_
                                                   _%type253383%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self253195%_ _%ctx253196%_ _%stx253197%_ _%args253198%_)
        (let* ((_%self253201%_ _%self253195%_)
               (_%klass253211%_
                (let ((__tmp255585
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self253201%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx253197%_ __tmp255585)))
               (_%fields253213%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass253211%_
                           '5
                           '#f
                           '#f))))
               (_%args253219%_
                (map (lambda (_%g253214253216%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx253196%_ _%g253214253216%_)))
                     _%args253198%_))
               (_%inline-make-object253221%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self253201%_
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
                           _%self253201%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields253213%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass253224%_ _%klass253211%_)
               (_%$e253238%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass253224%_ '6 '#f '#f))))
          (if _%$e253238%_
              ((lambda (_%ctor253241%_)
                 (let ((_%$obj253243%_
                        (let ((__tmp255586
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp255586)))
                       (_%ctor-impl253244%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass253224%_
                           _%ctor253241%_))))
                   (let ((__tmp255587
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj253243%_ '())
                                                  (cons _%inline-make-object253221%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl253244%_
                                                            (let ((__tmp255588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl253244%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj253243%_ '()))
                                             _%args253219%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp255588
                       _%stx253197%_
                       _%ctx253196%_))
                    (let ((_%$ctor253246%_
                           (let ((__tmp255589
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp255589))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor253246%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self253201%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj253243%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor253241%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor253246%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor253246%_ '()))
                              (cons (cons '%#ref (cons _%$obj253243%_ '()))
                                    _%args253219%_)))
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
                             _%self253201%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor253241%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj253243%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp255587 _%stx253197%_))))
               _%$e253238%_)
              (let ((_%$e253248%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass253224%_
                        '10
                        '#f
                        '#f))))
                (if _%$e253248%_
                    ((lambda (_%metaclass253251%_)
                       (let* ((_%$obj253253%_
                               (let ((__tmp255590
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255590)))
                              (_%metakons253255%_
                               (let ((__tmp255591
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx253197%_
                                         _%metaclass253251%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp255591
                                  'instance-init!)))
                              (__tmp255592
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj253253%_
                                                             '())
                                                       (cons _%inline-make-object253221%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons253255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp255593
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons253255%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self253201%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj253253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args253219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp255593
                            _%stx253197%_
                            _%ctx253196%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self253201%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj253253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args253219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj253253%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255592 _%stx253197%_)))
                     _%$e253248%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass253224%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp255594
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args253219%_))))
                              (declare (not safe))
                              (##fx= __tmp255594 _%fields253213%_))
                            (let ((__tmp255595
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self253201%_
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
                                              _%self253201%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args253219%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp255595
                               _%stx253197%_))
                            (let ((__tmp255597
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self253201%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp255596
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass253224%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx253197%_
                               __tmp255597
                               __tmp255596)))
                        (let ((_%$obj253260%_
                               (let ((__tmp255598
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255598))))
                          (let _%lp253262%_ ((_%rest253264%_ _%args253219%_)
                                             (_%initializers253265%_ '()))
                            (let* ((_%__stx255068255069%_ _%rest253264%_)
                                   (_%g253269253290%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx255068255069%_)))))
                              (let ((_%__kont255070255071%_
                                     (lambda (_%g253271253344%_
                                              _%g253272253345%_
                                              _%g253273253346%_)
                                       (let* ((_%slot253373%_
                                               (let ((__tmp255599
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g253273253346%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp255599)))
                                              (_%off253375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass253224%_
                                                  _%slot253373%_))))
                                         (if _%off253375%_
                                             (_%lp253262%_
                                              _%g253271253344%_
                                              (cons (cons _%off253375%_
                                                          _%g253272253345%_)
                                                    _%initializers253265%_))
                                             (let ((__tmp255600
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self253201%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx253197%_
                                                __tmp255600
                                                _%slot253373%_))))))
                                    (_%__kont255072255073%_
                                     (lambda ()
                                       (let ((__tmp255601
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj253260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object253221%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp255604
                                     (cons (cons '%#ref
                                                 (cons _%$obj253260%_ '()))
                                           '()))
                                    (__tmp255602
                                     (let ((__tmp255603
                                            (lambda (_%i253304%_ _%r253305%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self253201%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i253304%_) '()))
                              (cons (cons '%#ref (cons _%$obj253260%_ '()))
                                    (cons (cdr _%i253304%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r253305%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp255603
                                        '()
                                        _%initializers253265%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp255604 __tmp255602)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255601
                                          _%stx253197%_))))
                                    (_%__kont255074255075%_
                                     (lambda ()
                                       (let ((__tmp255605
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj253260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object253221%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj253260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args253219%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj253260%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255605
                                          _%stx253197%_)))))
                                (let* ((_%g253267253307%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx255068255069%_))
                                              (_%__kont255072255073%_)
                                              (_%__kont255074255075%_))))
                                       (_%__match255105255106%_
                                        (lambda (_%e253274253312%_
                                                 _%hd253275253315%_
                                                 _%tl253276253317%_
                                                 _%e253277253320%_
                                                 _%hd253278253323%_
                                                 _%tl253279253325%_
                                                 _%e253280253328%_
                                                 _%hd253281253331%_
                                                 _%tl253282253333%_
                                                 _%e253283253336%_
                                                 _%hd253284253339%_
                                                 _%tl253285253341%_)
                                          (let ((_%g253271253344%_
                                                 _%tl253285253341%_)
                                                (_%g253272253345%_
                                                 _%hd253284253339%_)
                                                (_%g253273253346%_
                                                 _%hd253281253331%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g253273253346%_))
                                                (_%__kont255070255071%_
                                                 _%g253271253344%_
                                                 _%g253272253345%_
                                                 _%g253273253346%_)
                                                (_%__kont255074255075%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx255068255069%_))
                                      (let ((_%e253274253312%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx255068255069%_))))
                                        (let ((_%tl253276253317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253274253312%_)))
                                              (_%hd253275253315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253274253312%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd253275253315%_))
                                              (let ((_%e253277253320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd253275253315%_))))
                                                (let ((_%tl253279253325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e253277253320%_)))
                                                      (_%hd253278253323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e253277253320%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd253278253323%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd253278253323%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl253279253325%_))
                      (let ((_%e253280253328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl253279253325%_))))
                        (let ((_%tl253282253333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253280253328%_)))
                              (_%hd253281253331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253280253328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253282253333%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253276253317%_))
                                  (let ((_%e253283253336%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253276253317%_))))
                                    (let ((_%tl253285253341%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253283253336%_)))
                                          (_%hd253284253339%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253283253336%_))))
                                      (_%__match255105255106%_
                                       _%e253274253312%_
                                       _%hd253275253315%_
                                       _%tl253276253317%_
                                       _%e253277253320%_
                                       _%hd253278253323%_
                                       _%tl253279253325%_
                                       _%e253280253328%_
                                       _%hd253281253331%_
                                       _%tl253282253333%_
                                       _%e253283253336%_
                                       _%hd253284253339%_
                                       _%tl253285253341%_)))
                                  (_%__kont255074255075%_))
                              (_%__kont255074255075%_))))
                      (_%__kont255074255075%_))
                  (_%__kont255074255075%_))
              (_%__kont255074255075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont255074255075%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g253267253307%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self252978%_ _%ctx252979%_ _%stx252980%_ _%args252981%_)
        (let* ((_%self252984%_ _%self252978%_)
               (_%arguments-ok?252994%_
                (let ((__method255549
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252984%_ 'check-arguments))))
                  (if __method255549
                      (let ()
                        (declare (not safe))
                        (__method255549
                         _%self252984%_
                         _%ctx252979%_
                         _%stx252980%_
                         _%args252981%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252984%_
                                 'check-arguments))
                        '#!void))))
               (_%g252996253006%_
                (lambda (_%g252997253003%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252997253003%_))))
               (_%g252995253070%_
                (lambda (_%g252997253009%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252997253009%_))
                      (let ((_%e252999253011%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252997253009%_))))
                        (let ((_%hd253000253014%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252999253011%_)))
                              (_%tl253001253016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252999253011%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253001253016%_))
                              ((lambda (_%g252998253019%_)
                                 (let* ((_%klass253032%_
                                         (let ((__tmp255606
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252984%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252980%_
                                            __tmp255606)))
                                        (_%field253034%_
                                         (let ((__tmp255607
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252984%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass253032%_
                                            __tmp255607)))
                                        (_%object253036%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252979%_
                                            _%g252998253019%_)))
                                        (_%klass253039%_ _%klass253032%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass253039%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp255608
                                              (cons (if (or _%arguments-ok?252994%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252984%_
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
                                 _%self252984%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field253034%_ '()))
                        (cons _%object253036%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255608
                                          _%stx252980%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253039%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp255609
                                                  (cons (if (or _%arguments-ok?252994%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252984%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252984%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field253034%_ '()))
                            (cons _%object253036%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255609
                                              _%stx252980%_))
                                           (let ((_%$e253058%_
                                                  (let ((__tmp255610
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252984%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass253039%_
                                                     __tmp255610))))
                                             (if _%$e253058%_
                                                 ((lambda (_%klass253061%_)
                                                    (let ((__tmp255611
                                                           (cons (if (or _%arguments-ok?252994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252984%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self252984%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field253034%_ '()))
                                     (cons _%object253036%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp255611 _%stx252980%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e253058%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self252984%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp255612
                                                            (let ((_%$obj253067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp255613
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp255613))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj253067%_ '())
                                              (cons _%object253036%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass253039%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj253067%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252984%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field253034%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj253067%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?252994%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj253067%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252984%_
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
                                                             _%self252984%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj253067%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self252984%_
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
               (gxc#xform-wrap-source __tmp255612 _%stx252980%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp255614
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object253036%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252984%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp255614 _%stx252980%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd253000253014%_)
                              (_%g252996253006%_ _%g252997253009%_))))
                      (_%g252996253006%_ _%g252997253009%_)))))
          (_%g252995253070%_ _%args252981%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass254836 __method-table254837)
        (let ((__check-arguments254838
               (let ((__tmp255615
                      (lambda ()
                        (let ((__method254839
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254837
                                  'check-arguments
                                  '#f))))
                          (if __method254839
                              __method254839
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255615)))
              (__slot254840
               (let ((__slot254841
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass254836 'slot))))
                 (if __slot254841
                     __slot254841
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self252978%_ _%ctx252979%_ _%stx252980%_ _%args252981%_)
            (let* ((_%self252984%_ _%self252978%_)
                   (_%arguments-ok?252994%_
                    ((force __check-arguments254838)
                     _%self252984%_
                     _%ctx252979%_
                     _%stx252980%_
                     _%args252981%_))
                   (_%g252996253006%_
                    (lambda (_%g252997253003%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252997253003%_))))
                   (_%g252995253070%_
                    (lambda (_%g252997253009%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252997253009%_))
                          (let ((_%e252999253011%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252997253009%_))))
                            (let ((_%hd253000253014%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252999253011%_)))
                                  (_%tl253001253016%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252999253011%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl253001253016%_))
                                  ((lambda (_%g252998253019%_)
                                     (let* ((_%klass253032%_
                                             (let ((__tmp255616
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252984%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx252980%_
                                                __tmp255616)))
                                            (_%field253034%_
                                             (let ((__tmp255617
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252984%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass253032%_
                                                __tmp255617)))
                                            (_%object253036%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx252979%_
                                                _%g252998253019%_)))
                                            (_%klass253039%_ _%klass253032%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253039%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp255618
                                                  (cons (if (or _%arguments-ok?252994%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252984%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252984%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field253034%_ '()))
                            (cons _%object253036%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255618
                                              _%stx252980%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass253039%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255619
                                                      (cons (if (or _%arguments-ok?252994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252984%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252984%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field253034%_ '()))
                                (cons _%object253036%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255619
                                                  _%stx252980%_))
                                               (let ((_%$e253058%_
                                                      (let ((__tmp255620
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self252984%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass253039%_ __tmp255620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e253058%_
                                                     ((lambda (_%klass253061%_)
                                                        (let ((__tmp255621
                                                               (cons (if (or _%arguments-ok?252994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252984%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self252984%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field253034%_ '()))
                                         (cons _%object253036%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp255621 _%stx252980%_)))
              _%$e253058%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252984%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp255622
                                                                (let ((_%$obj253067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255623
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255623))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj253067%_ '())
                                                  (cons _%object253036%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass253039%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj253067%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252984%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field253034%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj253067%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?252994%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj253067%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252984%_
                               __slot254840
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
                        (##unchecked-structure-ref _%self252984%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj253067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252984%_
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
                   (gxc#xform-wrap-source __tmp255622 _%stx252980%_))
                 (let ((__tmp255624
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object253036%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252984%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp255624 _%stx252980%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd253000253014%_)
                                  (_%g252996253006%_ _%g252997253009%_))))
                          (_%g252996253006%_ _%g252997253009%_)))))
              (_%g252995253070%_ _%args252981%_))))))
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
      (lambda (_%self252742%_ _%ctx252743%_ _%stx252744%_ _%args252745%_)
        (let* ((_%self252748%_ _%self252742%_)
               (_%arguments-ok?252758%_
                (let ((__method255550
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252748%_ 'check-arguments))))
                  (if __method255550
                      (let ()
                        (declare (not safe))
                        (__method255550
                         _%self252748%_
                         _%ctx252743%_
                         _%stx252744%_
                         _%args252745%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252748%_
                                 'check-arguments))
                        '#!void))))
               (_%g252760252774%_
                (lambda (_%g252761252771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252761252771%_))))
               (_%g252759252853%_
                (lambda (_%g252761252777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252761252777%_))
                      (let ((_%e252764252779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252761252777%_))))
                        (let ((_%hd252765252782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252764252779%_)))
                              (_%tl252766252784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252764252779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl252766252784%_))
                              (let ((_%e252767252787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl252766252784%_))))
                                (let ((_%hd252768252790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252767252787%_)))
                                      (_%tl252769252792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252767252787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl252769252792%_))
                                      ((lambda (_%g252762252795%_
                                                _%g252763252796%_)
                                         (let* ((_%klass252812%_
                                                 (let ((__tmp255625
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252748%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx252744%_
                                                    __tmp255625)))
                                                (_%field252814%_
                                                 (let ((__tmp255626
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252748%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass252812%_
                                                    __tmp255626)))
                                                (_%object252816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252743%_
                                                    _%g252763252796%_)))
                                                (_%value252818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252743%_
                                                    _%g252762252795%_)))
                                                (_%klass252821%_
                                                 _%klass252812%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252821%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255627
                                                      (cons (if (or _%arguments-ok?252758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252748%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252748%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field252814%_ '()))
                                (cons _%object252816%_
                                      (cons _%value252818%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255627
                                                  _%stx252744%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252821%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp255628
                                                          (cons (if (or _%arguments-ok?252758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252748%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252748%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252814%_ '()))
                                    (cons _%object252816%_
                                          (cons _%value252818%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255628
                                                      _%stx252744%_))
                                                   (let ((_%$e252841%_
                                                          (let ((__tmp255629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252748%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass252821%_
                     __tmp255629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e252841%_
                                                         ((lambda (_%klass252844%_)
                                                            (let ((__tmp255630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?252758%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252748%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self252748%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field252814%_ '()))
                                             (cons _%object252816%_
                                                   (cons _%value252818%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255630 _%stx252744%_)))
                  _%$e252841%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self252748%_ '4 '#f '#f))
                     (let ((__tmp255631
                            (let ((_%$obj252850%_
                                   (let ((__tmp255632
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp255632))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj252850%_ '())
                                                      (cons _%object252816%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass252821%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj252850%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252748%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field252814%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252850%_
                                                              '()))
                                                  (cons _%value252818%_
                                                        '())))))
                          (cons (if _%arguments-ok?252758%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self252748%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value252818%_ '())))))
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
                             _%self252748%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj252850%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252748%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value252818%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp255631 _%stx252744%_))
                     (let ((__tmp255633
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object252816%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252748%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value252818%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp255633
                        _%stx252744%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd252768252790%_
                                       _%hd252765252782%_)
                                      (_%g252760252774%_ _%g252761252777%_))))
                              (_%g252760252774%_ _%g252761252777%_))))
                      (_%g252760252774%_ _%g252761252777%_)))))
          (_%g252759252853%_ _%args252745%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass254842 __method-table254843)
        (let ((__check-arguments254844
               (let ((__tmp255634
                      (lambda ()
                        (let ((__method254845
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254843
                                  'check-arguments
                                  '#f))))
                          (if __method254845
                              __method254845
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255634))))
          (lambda (_%self252742%_ _%ctx252743%_ _%stx252744%_ _%args252745%_)
            (let* ((_%self252748%_ _%self252742%_)
                   (_%arguments-ok?252758%_
                    ((force __check-arguments254844)
                     _%self252748%_
                     _%ctx252743%_
                     _%stx252744%_
                     _%args252745%_))
                   (_%g252760252774%_
                    (lambda (_%g252761252771%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252761252771%_))))
                   (_%g252759252853%_
                    (lambda (_%g252761252777%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252761252777%_))
                          (let ((_%e252764252779%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252761252777%_))))
                            (let ((_%hd252765252782%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252764252779%_)))
                                  (_%tl252766252784%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252764252779%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252766252784%_))
                                  (let ((_%e252767252787%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252766252784%_))))
                                    (let ((_%hd252768252790%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252767252787%_)))
                                          (_%tl252769252792%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252767252787%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252769252792%_))
                                          ((lambda (_%g252762252795%_
                                                    _%g252763252796%_)
                                             (let* ((_%klass252812%_
                                                     (let ((__tmp255635
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252748%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx252744%_
                                                        __tmp255635)))
                                                    (_%field252814%_
                                                     (let ((__tmp255636
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252748%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass252812%_
                                                        __tmp255636)))
                                                    (_%object252816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252743%_
                                                        _%g252763252796%_)))
                                                    (_%value252818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252743%_
                                                        _%g252762252795%_)))
                                                    (_%klass252821%_
                                                     _%klass252812%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252821%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp255637
                                                          (cons (if (or _%arguments-ok?252758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252748%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252748%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252814%_ '()))
                                    (cons _%object252816%_
                                          (cons _%value252818%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255637
                                                      _%stx252744%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass252821%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp255638
                                                              (cons (if (or _%arguments-ok?252758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self252748%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252748%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field252814%_ '()))
                                        (cons _%object252816%_
                                              (cons _%value252818%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp255638 _%stx252744%_))
               (let ((_%$e252841%_
                      (let ((__tmp255639
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252748%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass252821%_
                         __tmp255639))))
                 (if _%$e252841%_
                     ((lambda (_%klass252844%_)
                        (let ((__tmp255640
                               (cons (if (or _%arguments-ok?252758%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252748%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252748%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field252814%_
                                                             '()))
                                                 (cons _%object252816%_
                                                       (cons _%value252818%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp255640 _%stx252744%_)))
                      _%$e252841%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252748%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp255641
                                (let ((_%$obj252850%_
                                       (let ((__tmp255642
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp255642))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj252850%_
                                                                '())
                                                          (cons _%object252816%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass252821%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252850%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self252748%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field252814%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value252818%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?252758%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj252850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252748%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value252818%_ '())))))
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
                                 _%self252748%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj252850%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252748%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value252818%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp255641 _%stx252744%_))
                         (let ((__tmp255643
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object252816%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252748%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value252818%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp255643
                            _%stx252744%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd252768252790%_
                                           _%hd252765252782%_)
                                          (_%g252760252774%_
                                           _%g252761252777%_))))
                                  (_%g252760252774%_ _%g252761252777%_))))
                          (_%g252760252774%_ _%g252761252777%_)))))
              (_%g252759252853%_ _%args252745%_))))))
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
      (lambda (_%self252558%_ _%ctx252559%_ _%stx252560%_ _%args252561%_)
        (let* ((_%self252564%_ _%self252558%_)
               (_%self252573252583%_ _%self252564%_)
               (_%E252575252586%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252573252583%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K252576252596%_
                (lambda (_%inline252589%_ _%dispatch252590%_ _%arity252591%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self252564%_
                         _%args252561%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx252560%_
                         _%arity252591%_)))
                  (if _%inline252589%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp255644 (_%inline252589%_ _%stx252560%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp255644
                           _%stx252560%_
                           _%ctx252559%_)))
                      (if (and _%dispatch252590%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch252590%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch252590%_))
                            (let ((__tmp255645
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch252590%_
                                                           '()))
                                               _%args252561%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp255645
                               _%stx252560%_
                               _%ctx252559%_)))
                          (gxc#!procedure::optimize-call
                           _%self252564%_
                           _%ctx252559%_
                           _%stx252560%_
                           _%args252561%_)))))
               (_%e252577252599%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252573252583%_ '1 '#f '#f)))
               (_%e252578252602%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252573252583%_ '2 '#f '#f)))
               (_%e252579252605%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252573252583%_ '3 '#f '#f)))
               (_%arity252608%_ _%e252579252605%_)
               (_%e252580252610%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252573252583%_ '4 '#f '#f)))
               (_%dispatch252613%_ _%e252580252610%_)
               (_%e252581252615%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252573252583%_ '5 '#f '#f)))
               (_%inline252618%_ _%e252581252615%_))
          (_%K252576252596%_
           _%inline252618%_
           _%dispatch252613%_
           _%arity252608%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self252410%_ _%ctx252411%_ _%stx252412%_ _%args252413%_)
        (let* ((_%self252416%_ _%self252410%_)
               (_%$e252430%_
                (let ((__tmp255647
                       (lambda (_%g252425252427%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g252425252427%_
                            _%args252413%_))))
                      (__tmp255646
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252416%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp255647 __tmp255646))))
          (if _%$e252430%_
              ((lambda (_%clause252433%_)
                 (let ((__method255551
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause252433%_ 'optimize-call))))
                   (if __method255551
                       (let ()
                         (declare (not safe))
                         (__method255551
                          _%clause252433%_
                          _%ctx252411%_
                          _%stx252412%_
                          _%args252413%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause252433%_
                                  'optimize-call))
                         '#!void))))
               _%$e252430%_)
              (let ((__tmp255648
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self252416%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx252412%_
                 __tmp255648))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self252151%_ _%ctx252152%_ _%stx252153%_ _%args252154%_)
        (let* ((_%self252157%_ _%self252151%_)
               (_%self252166252175%_ _%self252157%_)
               (_%E252168252178%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252166252175%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K252169252269%_
                (lambda (_%dispatch252181%_ _%table252182%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch252181%_))
                      (let* ((_%g252183252193%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch252181%_)))
                             (_%else252185252201%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch252181%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx252152%_
                                   _%stx252153%_))))
                             (_%K252187252250%_
                              (lambda (_%main252204%_ _%keys252205%_)
                                (let ((_g255649_
                                       (gxc#!kw-lambda-split-args
                                        _%stx252153%_
                                        _%args252154%_)))
                                  (begin
                                    (let ((_g255650_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g255649_)
                                                 (##values-length _g255649_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g255650_ 2)))
                                          (error "Context expects 2 values"
                                                 _g255650_)))
                                    (let ((_%pargs252207%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255649_ 0)))
                                          (_%kwargs252208%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255649_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main252204%_))
                                        (if _%table252182%_
                                            (let ((_%xargs252216%_
                                                   (map (lambda (_%key252210%_)
                                                          (let ((_%$e252212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key252210%_ _%kwargs252208%_))))
                    (if _%$e252212%_ _%$e252212%_ '(%#ref absent-value))))
                _%keys252205%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw252218%_)
                                                 (if (memq (car _%kw252218%_)
                                                           _%keys252205%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx252153%_
                                                        _%keys252205%_
                                                        _%kw252218%_))))
                                               _%kwargs252208%_)
                                              (let ((__tmp255651
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main252204%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs252207%_
                                  _%xargs252216%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp255651
                                                 _%stx252153%_
                                                 _%ctx252152%_)))
                                            (let* ((_%kwt252220%_
                                                    (let ((__tmp255652
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255652)))
                                                   (_%kwvars252224%_
                                                    (map (lambda (_%_252222%_)
                                                           (let ((__tmp255653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp255653)))
                 _%kwargs252208%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind252229%_
                                                    (map (lambda (_%kw252226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar252227%_)
                   (cons (cons _%kwvar252227%_ '())
                         (cons (cdr _%kw252226%_) '())))
                 _%kwargs252208%_
                 _%kwvars252224%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset252234%_
                                                    (map (lambda (_%kw252231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar252232%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt252220%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw252231%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar252232%_
                                                             '()))
                                                 '()))))))
                 _%kwargs252208%_
                 _%kwvars252224%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs252239%_
                                                    (map (lambda (_%kw252236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar252237%_)
                   (cons (car _%kw252236%_)
                         (cons '%#ref (cons _%kwvar252237%_ '()))))
                 _%kwargs252208%_
                 _%kwvars252224%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs252247%_
                                                    (map (lambda (_%key252241%_)
                                                           (let ((_%$e252243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key252241%_ _%xkwargs252239%_))))
                     (if _%$e252243%_ _%$e252243%_ '(%#ref absent-value))))
                 _%keys252205%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255654
                                                    (cons '%#let-values
                                                          (cons _%kwbind252229%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt252220%_ '())
                                                      (cons (let ((__tmp255655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs252208%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255655 _%stx252153%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp255656
                                                             (cons (let ((__tmp255657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main252204%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt252220%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs252207%_
                                                       _%xargs252247%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp255657 _%stx252153%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp255656 _%kwset252234%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp255654
                                               _%stx252153%_
                                               _%ctx252152%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g252183252193%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e252188252253%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252183252193%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e252189252256%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252183252193%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e252190252259%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252183252193%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys252262%_ _%e252190252259%_)
                                   (_%e252191252264%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252183252193%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main252267%_ _%e252191252264%_))
                              (_%K252187252250%_
                               _%main252267%_
                               _%keys252262%_))
                            (_%else252185252201%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx252152%_ _%stx252153%_)))))
               (_%e252170252272%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252166252175%_ '1 '#f '#f)))
               (_%e252171252275%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252166252175%_ '2 '#f '#f)))
               (_%e252172252278%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252166252175%_ '3 '#f '#f)))
               (_%table252281%_ _%e252172252278%_)
               (_%e252173252283%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252166252175%_ '4 '#f '#f)))
               (_%dispatch252286%_ _%e252173252283%_))
          (_%K252169252269%_ _%dispatch252286%_ _%table252281%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx251764%_ _%args251765%_)
        (let _%lp251767%_ ((_%rest251769%_ _%args251765%_)
                           (_%pargs251770%_ '())
                           (_%kwargs251771%_ '()))
          (let* ((_%__stx255110255111%_ _%rest251769%_)
                 (_%g251777251829%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx255110255111%_)))))
            (let ((_%__kont255112255113%_
                   (lambda (_%g251779252008%_ _%g251780252009%_)
                     (_%lp251767%_
                      _%g251779252008%_
                      (cons _%g251780252009%_ _%pargs251770%_)
                      _%kwargs251771%_)))
                  (_%__kont255114255115%_
                   (lambda (_%g251794251954%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g251794251954%_
                                _%pargs251770%_))
                             (reverse _%kwargs251771%_))))
                  (_%__kont255116255117%_
                   (lambda (_%g251805251901%_
                            _%g251806251902%_
                            _%g251807251903%_)
                     (let ((_%kw251920%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g251807251903%_))))
                       (if (assq _%kw251920%_ _%kwargs251771%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx251764%_
                              _%kw251920%_))
                           (_%lp251767%_
                            _%g251805251901%_
                            _%pargs251770%_
                            (cons (cons _%kw251920%_ _%g251806251902%_)
                                  _%kwargs251771%_))))))
                  (_%__kont255118255119%_
                   (lambda (_%g251820251849%_ _%g251821251850%_)
                     (_%lp251767%_
                      _%g251820251849%_
                      (cons _%g251821251850%_ _%pargs251770%_)
                      _%kwargs251771%_)))
                  (_%__kont255120255121%_
                   (lambda ()
                     (values (reverse _%pargs251770%_)
                             (reverse _%kwargs251771%_)))))
              (let ((_%__match255217255218%_
                     (lambda (_%e251808251869%_
                              _%hd251809251872%_
                              _%tl251810251874%_
                              _%e251811251877%_
                              _%hd251812251880%_
                              _%tl251813251882%_
                              _%e251814251885%_
                              _%hd251815251888%_
                              _%tl251816251890%_
                              _%e251817251893%_
                              _%hd251818251896%_
                              _%tl251819251898%_)
                       (let ((_%g251805251901%_ _%tl251819251898%_)
                             (_%g251806251902%_ _%hd251818251896%_)
                             (_%g251807251903%_ _%hd251815251888%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g251807251903%_))
                             (_%__kont255116255117%_
                              _%g251805251901%_
                              _%g251806251902%_
                              _%g251807251903%_)
                             (_%__kont255118255119%_
                              _%tl251810251874%_
                              _%hd251809251872%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx255110255111%_))
                    (let ((_%e251781251973%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx255110255111%_))))
                      (let ((_%tl251783251978%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251781251973%_)))
                            (_%hd251782251976%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251781251973%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd251782251976%_))
                            (let ((_%e251784251981%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd251782251976%_))))
                              (let ((_%tl251786251986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e251784251981%_)))
                                    (_%hd251785251984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e251784251981%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd251785251984%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd251785251984%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl251786251986%_))
                                            (let ((_%e251787251989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl251786251986%_))))
                                              (let ((_%tl251789251994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e251787251989%_)))
                                                    (_%hd251788251992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e251787251989%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd251788251992%_))
                                                    (let ((_%e251790251997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd251788251992%_))))
                                                      (if (equal? _%e251790251997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251789251994%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251783251978%_))
                          (let ((_%e251791252000%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251783251978%_))))
                            (let ((_%tl251793252005%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251791252000%_)))
                                  (_%hd251792252003%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251791252000%_))))
                              (_%__kont255112255113%_
                               _%tl251793252005%_
                               _%hd251792252003%_)))
                          (_%__kont255118255119%_
                           _%tl251783251978%_
                           _%hd251782251976%_))
                      (_%__kont255118255119%_
                       _%tl251783251978%_
                       _%hd251782251976%_))
                  (if (equal? _%e251790251997%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251789251994%_))
                          (_%__kont255114255115%_ _%tl251783251978%_)
                          (_%__kont255118255119%_
                           _%tl251783251978%_
                           _%hd251782251976%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251789251994%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251783251978%_))
                              (let ((_%e251817251893%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251783251978%_))))
                                (let ((_%tl251819251898%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251817251893%_)))
                                      (_%hd251818251896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251817251893%_))))
                                  (_%__match255217255218%_
                                   _%e251781251973%_
                                   _%hd251782251976%_
                                   _%tl251783251978%_
                                   _%e251784251981%_
                                   _%hd251785251984%_
                                   _%tl251786251986%_
                                   _%e251787251989%_
                                   _%hd251788251992%_
                                   _%tl251789251994%_
                                   _%e251817251893%_
                                   _%hd251818251896%_
                                   _%tl251819251898%_)))
                              (_%__kont255118255119%_
                               _%tl251783251978%_
                               _%hd251782251976%_))
                          (_%__kont255118255119%_
                           _%tl251783251978%_
                           _%hd251782251976%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl251789251994%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl251783251978%_))
                                                            (let ((_%e251817251893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl251783251978%_))))
                      (let ((_%tl251819251898%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251817251893%_)))
                            (_%hd251818251896%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251817251893%_))))
                        (_%__match255217255218%_
                         _%e251781251973%_
                         _%hd251782251976%_
                         _%tl251783251978%_
                         _%e251784251981%_
                         _%hd251785251984%_
                         _%tl251786251986%_
                         _%e251787251989%_
                         _%hd251788251992%_
                         _%tl251789251994%_
                         _%e251817251893%_
                         _%hd251818251896%_
                         _%tl251819251898%_)))
                    (_%__kont255118255119%_
                     _%tl251783251978%_
                     _%hd251782251976%_))
                (_%__kont255118255119%_
                 _%tl251783251978%_
                 _%hd251782251976%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont255118255119%_
                                             _%tl251783251978%_
                                             _%hd251782251976%_))
                                        (_%__kont255118255119%_
                                         _%tl251783251978%_
                                         _%hd251782251976%_))
                                    (_%__kont255118255119%_
                                     _%tl251783251978%_
                                     _%hd251782251976%_))))
                            (_%__kont255118255119%_
                             _%tl251783251978%_
                             _%hd251782251976%_))))
                    (_%__kont255120255121%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self251748%_ _%ctx251749%_ _%stx251750%_ _%args251751%_)
        (let ((_%self251754%_ _%self251748%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx251749%_ _%stx251750%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self251438%_ _%stx251439%_)
        (let* ((_%__stx255226255227%_ _%stx251439%_)
               (_%g251442251482%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255226255227%_)))))
          (let ((_%__kont255228255229%_
                 (lambda (_%g251444251586%_ _%g251445251587%_)
                   (let ((_%$e251614%_
                          (member 'return:
                                  (let ((__tmp255658
                                         (lambda (_%g251606251609%_
                                                  _%g251607251611%_)
                                           (cons _%g251606251609%_
                                                 _%g251607251611%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp255658
                                     '()
                                     _%g251445251587%_))
                                  gx#stx-eq?)))
                     (if _%$e251614%_
                         ((lambda (_%tail251617%_)
                            (let ((_%type251619%_
                                   (let ((__tmp255659
                                          (let ((__tmp255660
                                                 (cadr _%tail251617%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp255660))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx251439%_
                                      __tmp255659))))
                              (gxc#check-return-type!
                               _%stx251439%_
                               _%g251444251586%_
                               _%type251619%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self251438%_
                                 _%g251444251586%_))))
                          _%$e251614%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self251438%_
                            _%g251444251586%_))))))
                (_%__kont255232255233%_
                 (lambda (_%g251467251511%_ _%g251468251512%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self251438%_ _%g251467251511%_)))))
            (let ((_%__match255263255264%_
                   (lambda (_%e251446251532%_
                            _%hd251447251535%_
                            _%tl251448251537%_
                            _%e251449251540%_
                            _%hd251450251543%_
                            _%tl251451251545%_
                            _%e251452251548%_
                            _%hd251453251551%_
                            _%tl251454251553%_
                            _%__splice255230255231%_
                            _%target251455251556%_
                            _%tl251457251558%_)
                     (letrec ((_%loop251458251561%_
                               (lambda (_%hd251456251564%_
                                        _%signature251462251566%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd251456251564%_))
                                     (let ((_%e251459251568%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd251456251564%_))))
                                       (let ((_%lp-tl251461251573%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e251459251568%_)))
                                             (_%lp-hd251460251571%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e251459251568%_))))
                                         (_%loop251458251561%_
                                          _%lp-tl251461251573%_
                                          (cons _%lp-hd251460251571%_
                                                _%signature251462251566%_))))
                                     (let ((_%signature251463251576%_
                                            (reverse _%signature251462251566%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl251451251545%_))
                                           (let ((_%e251464251578%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251451251545%_))))
                                             (let ((_%tl251466251583%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e251464251578%_)))
                                                   (_%hd251465251581%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e251464251578%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl251466251583%_))
                                                   (_%__kont255228255229%_
                                                    _%hd251465251581%_
                                                    _%signature251463251576%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251442251482%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g251442251482%_))))))))
                       (_%loop251458251561%_ _%target251455251556%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255226255227%_))
                  (let ((_%e251446251532%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255226255227%_))))
                    (let ((_%tl251448251537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251446251532%_)))
                          (_%hd251447251535%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251446251532%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251448251537%_))
                          (let ((_%e251449251540%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251448251537%_))))
                            (let ((_%tl251451251545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251449251540%_)))
                                  (_%hd251450251543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251449251540%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd251450251543%_))
                                  (let ((_%e251452251548%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd251450251543%_))))
                                    (let ((_%tl251454251553%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251452251548%_)))
                                          (_%hd251453251551%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251452251548%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd251453251551%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd251453251551%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl251454251553%_))
                                                  (let ((_%__splice255230255231%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl251454251553%_
                                                            '0))))
                                                    (let ((_%tl251457251558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice255230255231%_
                                                              '1)))
                                                          (_%target251455251556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice255230255231%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251457251558%_))
                                                          (_%__match255263255264%_
                                                           _%e251446251532%_
                                                           _%hd251447251535%_
                                                           _%tl251448251537%_
                                                           _%e251449251540%_
                                                           _%hd251450251543%_
                                                           _%tl251451251545%_
                                                           _%e251452251548%_
                                                           _%hd251453251551%_
                                                           _%tl251454251553%_
                                                           _%__splice255230255231%_
                                                           _%target251455251556%_
                                                           _%tl251457251558%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl251451251545%_))
                      (let ((_%e251475251503%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251451251545%_))))
                        (let ((_%tl251477251508%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251475251503%_)))
                              (_%hd251476251506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251475251503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251477251508%_))
                              (_%__kont255232255233%_
                               _%hd251476251506%_
                               _%hd251450251543%_)
                              (let ()
                                (declare (not safe))
                                (_%g251442251482%_)))))
                      (let () (declare (not safe)) (_%g251442251482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl251451251545%_))
                                                      (let ((_%e251475251503%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl251451251545%_))))
                (let ((_%tl251477251508%_
                       (let () (declare (not safe)) (##cdr _%e251475251503%_)))
                      (_%hd251476251506%_
                       (let ()
                         (declare (not safe))
                         (##car _%e251475251503%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251477251508%_))
                      (_%__kont255232255233%_
                       _%hd251476251506%_
                       _%hd251450251543%_)
                      (let () (declare (not safe)) (_%g251442251482%_)))))
              (let () (declare (not safe)) (_%g251442251482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251451251545%_))
                                                  (let ((_%e251475251503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251451251545%_))))
                                                    (let ((_%tl251477251508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251475251503%_)))
                                                          (_%hd251476251506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251475251503%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251477251508%_))
                                                          (_%__kont255232255233%_
                                                           _%hd251476251506%_
                                                           _%hd251450251543%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g251442251482%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251442251482%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl251451251545%_))
                                              (let ((_%e251475251503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl251451251545%_))))
                                                (let ((_%tl251477251508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251475251503%_)))
                                                      (_%hd251476251506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251475251503%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251477251508%_))
                                                      (_%__kont255232255233%_
                                                       _%hd251476251506%_
                                                       _%hd251450251543%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251442251482%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251442251482%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251451251545%_))
                                      (let ((_%e251475251503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251451251545%_))))
                                        (let ((_%tl251477251508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251475251503%_)))
                                              (_%hd251476251506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251475251503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251477251508%_))
                                              (_%__kont255232255233%_
                                               _%hd251476251506%_
                                               _%hd251450251543%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g251442251482%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251442251482%_))))))
                          (let () (declare (not safe)) (_%g251442251482%_)))))
                  (let () (declare (not safe)) (_%g251442251482%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx251413%_ _%expr251414%_ _%type251415%_)
        (let ((_%$e251417%_ (not _%type251415%_)))
          (if _%$e251417%_
              _%$e251417%_
              (let ((_%$e251420%_
                     (eq? (##structure-ref _%type251415%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e251420%_
                    _%$e251420%_
                    (let ((_%$e251423%_
                           (eq? (##structure-ref
                                 _%type251415%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e251423%_
                          _%$e251423%_
                          (let ((_%expr-type251427%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr251414%_))))
                            (if (not _%expr-type251427%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx251413%_
                                   _%type251415%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type251427%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx251413%_
                                       _%type251415%_
                                       _%expr-type251427%_))
                                    (let ((_%$e251431%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type251427%_
                                              'gxc#!abort::t))))
                                      (if _%$e251431%_
                                          _%$e251431%_
                                          (let ((_%$e251434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type251427%_
                                                    _%type251415%_))))
                                            (if _%$e251434%_
                                                _%$e251434%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx251413%_
                                                   _%type251415%_
                                                   _%expr-type251427%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self250839%_ _%stx250840%_)
        (let* ((_%__stx255308255309%_ _%stx250840%_)
               (_%g250845250955%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255308255309%_)))))
          (let ((_%__kont255310255311%_
                 (lambda (_%g250847251387%_
                          _%g250848251388%_
                          _%g250849251389%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g250849251389%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self250839%_ _%g250848251388%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self250839%_
                          _%g250847251387%_)))))
                (_%__kont255312255313%_
                 (lambda (_%g250868251213%_
                          _%g250869251214%_
                          _%g250870251215%_
                          _%g250871251216%_)
                   (let ((_%$e251248%_
                          (let ((__tmp255661
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g250871251216%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp255661))))
                     (if _%$e251248%_
                         ((lambda (_%pred-type251251%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type251251%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type251251%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test251256%_
                                        (let ((__tmp255662
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g250871251216%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g250870251215%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp255662
                                           _%stx250840%_
                                           _%self250839%_)))
                                       (_%K251260%_
                                        (let ((__tmp255663
                                               (lambda ()
                                                 (let ((__tmp255666
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self250839%_
                                                             _%g250869251214%_))))
                                                       (__tmp255664
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g250870251215%_))
                            (let ((__tmp255665
                                   (##structure-ref
                                    _%pred-type251251%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx250840%_
                               __tmp255665)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp255666
                                                    gxc#current-compile-path-type
                                                    __tmp255664)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255663)))
                                       (_%E251263%_
                                        (let ((__tmp255667
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self250839%_
                                                    _%g250868251213%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255667)))
                                       (_%__stx255286255287%_ _%test251256%_)
                                       (_%g251267251281%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx255286255287%_)))))
                                  (let ((_%__kont255288255289%_
                                         (lambda (_%g251269251309%_
                                                  _%g251270251310%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g251269251309%_))
                                               (force _%K251260%_)
                                               (force _%E251263%_))))
                                        (_%__kont255290255291%_
                                         (lambda ()
                                           (let ((__tmp255668
                                                  (cons '%#if
                                                        (cons _%test251256%_
                                                              (cons (force _%K251260%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E251263%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255668
                                              _%stx250840%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx255286255287%_))
                                        (let ((_%e251271251293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx255286255287%_))))
                                          (let ((_%tl251273251298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e251271251293%_)))
                                                (_%hd251272251296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e251271251293%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl251273251298%_))
                                                (let ((_%e251274251301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl251273251298%_))))
                                                  (let ((_%tl251276251306%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e251274251301%_)))
                                                        (_%hd251275251304%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e251274251301%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl251276251306%_))
                                                        (_%__kont255288255289%_
                                                         _%hd251275251304%_
                                                         _%hd251272251296%_)
                                                        (_%__kont255290255291%_))))
                                                (_%__kont255290255291%_))))
                                        (_%__kont255290255291%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self250839%_
                                   _%stx250840%_))))
                          _%$e251248%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self250839%_
                            _%stx250840%_))))))
                (_%__kont255314255315%_
                 (lambda (_%g250905251089%_
                          _%g250906251090%_
                          _%g250907251091%_
                          _%g250908251092%_)
                   (gxc#optimize-if%
                    _%self250839%_
                    (let ((__tmp255669
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g250907251091%_
                                       (cons _%g250905251089%_
                                             (cons _%g250906251090%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255669 _%stx250840%_)))))
                (_%__kont255316255317%_
                 (lambda (_%g250936250992%_
                          _%g250937250993%_
                          _%g250938250994%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self250839%_ _%stx250840%_)))))
            (let ((_%__match255515255516%_
                   (lambda (_%e250909251017%_
                            _%hd250910251020%_
                            _%tl250911251022%_
                            _%e250912251025%_
                            _%hd250913251028%_
                            _%tl250914251030%_
                            _%e250915251033%_
                            _%hd250916251036%_
                            _%tl250917251038%_
                            _%e250918251041%_
                            _%hd250919251044%_
                            _%tl250920251046%_
                            _%e250921251049%_
                            _%hd250922251052%_
                            _%tl250923251054%_
                            _%e250924251057%_
                            _%hd250925251060%_
                            _%tl250926251062%_
                            _%e250927251065%_
                            _%hd250928251068%_
                            _%tl250929251070%_
                            _%e250930251073%_
                            _%hd250931251076%_
                            _%tl250932251078%_
                            _%e250933251081%_
                            _%hd250934251084%_
                            _%tl250935251086%_)
                     (let ((_%g250905251089%_ _%hd250934251084%_)
                           (_%g250906251090%_ _%hd250931251076%_)
                           (_%g250907251091%_ _%hd250928251068%_)
                           (_%g250908251092%_ _%hd250925251060%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g250908251092%_ 'not))
                           (_%__kont255314255315%_
                            _%g250905251089%_
                            _%g250906251090%_
                            _%g250907251091%_
                            _%g250908251092%_)
                           (_%__kont255316255317%_
                            _%hd250934251084%_
                            _%hd250931251076%_
                            _%hd250913251028%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255308255309%_))
                  (let ((_%e250850251339%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255308255309%_))))
                    (let ((_%tl250852251344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250850251339%_)))
                          (_%hd250851251342%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250850251339%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250852251344%_))
                          (let ((_%e250853251347%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250852251344%_))))
                            (let ((_%tl250855251352%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250853251347%_)))
                                  (_%hd250854251350%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250853251347%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250854251350%_))
                                  (let ((_%e250856251355%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250854251350%_))))
                                    (let ((_%tl250858251360%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250856251355%_)))
                                          (_%hd250857251358%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250856251355%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250857251358%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd250857251358%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250858251360%_))
                                                  (let ((_%e250859251363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250858251360%_))))
                                                    (let ((_%tl250861251368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250859251363%_)))
                                                          (_%hd250860251366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250859251363%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250861251368%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250855251352%_))
                      (let ((_%e250862251371%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250855251352%_))))
                        (let ((_%tl250864251376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250862251371%_)))
                              (_%hd250863251374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250862251371%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250864251376%_))
                              (let ((_%e250865251379%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250864251376%_))))
                                (let ((_%tl250867251384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250865251379%_)))
                                      (_%hd250866251382%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250865251379%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250867251384%_))
                                      (_%__kont255310255311%_
                                       _%hd250866251382%_
                                       _%hd250863251374%_
                                       _%hd250860251366%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250845250955%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250845250955%_)))))
                      (let () (declare (not safe)) (_%g250845250955%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250855251352%_))
                      (let ((_%e250945250976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250855251352%_))))
                        (let ((_%tl250947250981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250945250976%_)))
                              (_%hd250946250979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250945250976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250947250981%_))
                              (let ((_%e250948250984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250947250981%_))))
                                (let ((_%tl250950250989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250948250984%_)))
                                      (_%hd250949250987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250948250984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250950250989%_))
                                      (_%__kont255316255317%_
                                       _%hd250949250987%_
                                       _%hd250946250979%_
                                       _%hd250854251350%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250845250955%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250845250955%_)))))
                      (let () (declare (not safe)) (_%g250845250955%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250855251352%_))
                                                      (let ((_%e250945250976%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250855251352%_))))
                (let ((_%tl250947250981%_
                       (let () (declare (not safe)) (##cdr _%e250945250976%_)))
                      (_%hd250946250979%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250945250976%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250947250981%_))
                      (let ((_%e250948250984%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250947250981%_))))
                        (let ((_%tl250950250989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250948250984%_)))
                              (_%hd250949250987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250948250984%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250950250989%_))
                              (_%__kont255316255317%_
                               _%hd250949250987%_
                               _%hd250946250979%_
                               _%hd250854251350%_)
                              (let ()
                                (declare (not safe))
                                (_%g250845250955%_)))))
                      (let () (declare (not safe)) (_%g250845250955%_)))))
              (let () (declare (not safe)) (_%g250845250955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd250857251358%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250858251360%_))
                                                      (let ((_%e250881251149%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250858251360%_))))
                (let ((_%tl250883251154%_
                       (let () (declare (not safe)) (##cdr _%e250881251149%_)))
                      (_%hd250882251152%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250881251149%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd250882251152%_))
                      (let ((_%e250884251157%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd250882251152%_))))
                        (let ((_%tl250886251162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250884251157%_)))
                              (_%hd250885251160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250884251157%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd250885251160%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd250885251160%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250886251162%_))
                                      (let ((_%e250887251165%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250886251162%_))))
                                        (let ((_%tl250889251170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250887251165%_)))
                                              (_%hd250888251168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250887251165%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250889251170%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250883251154%_))
                                                  (let ((_%e250890251173%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250883251154%_))))
                                                    (let ((_%tl250892251178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250890251173%_)))
                                                          (_%hd250891251176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250890251173%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd250891251176%_))
                                                          (let ((_%e250893251181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd250891251176%_))))
                    (let ((_%tl250895251186%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250893251181%_)))
                          (_%hd250894251184%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250893251181%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd250894251184%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd250894251184%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250895251186%_))
                                  (let ((_%e250896251189%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250895251186%_))))
                                    (let ((_%tl250898251194%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250896251189%_)))
                                          (_%hd250897251192%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250896251189%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250898251194%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250892251178%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250855251352%_))
                                                  (let ((_%e250899251197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250855251352%_))))
                                                    (let ((_%tl250901251202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250899251197%_)))
                                                          (_%hd250900251200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250899251197%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250901251202%_))
                                                          (let ((_%e250902251205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250901251202%_))))
                    (let ((_%tl250904251210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250902251205%_)))
                          (_%hd250903251208%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250902251205%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250904251210%_))
                          (_%__kont255312255313%_
                           _%hd250903251208%_
                           _%hd250900251200%_
                           _%hd250897251192%_
                           _%hd250888251168%_)
                          (let () (declare (not safe)) (_%g250845250955%_)))))
                  (let () (declare (not safe)) (_%g250845250955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250855251352%_))
                                                  (let ((_%e250945250976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250855251352%_))))
                                                    (let ((_%tl250947250981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250945250976%_)))
                                                          (_%hd250946250979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250945250976%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250947250981%_))
                                                          (let ((_%e250948250984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250947250981%_))))
                    (let ((_%tl250950250989%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250948250984%_)))
                          (_%hd250949250987%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250948250984%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250950250989%_))
                          (_%__kont255316255317%_
                           _%hd250949250987%_
                           _%hd250946250979%_
                           _%hd250854251350%_)
                          (let () (declare (not safe)) (_%g250845250955%_)))))
                  (let () (declare (not safe)) (_%g250845250955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250892251178%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250855251352%_))
                                                  (let ((_%e250930251073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250855251352%_))))
                                                    (let ((_%tl250932251078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250930251073%_)))
                                                          (_%hd250931251076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250930251073%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250932251078%_))
                                                          (let ((_%e250933251081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250932251078%_))))
                    (let ((_%tl250935251086%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250933251081%_)))
                          (_%hd250934251084%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250933251081%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250935251086%_))
                          (_%__match255515255516%_
                           _%e250850251339%_
                           _%hd250851251342%_
                           _%tl250852251344%_
                           _%e250853251347%_
                           _%hd250854251350%_
                           _%tl250855251352%_
                           _%e250856251355%_
                           _%hd250857251358%_
                           _%tl250858251360%_
                           _%e250881251149%_
                           _%hd250882251152%_
                           _%tl250883251154%_
                           _%e250884251157%_
                           _%hd250885251160%_
                           _%tl250886251162%_
                           _%e250887251165%_
                           _%hd250888251168%_
                           _%tl250889251170%_
                           _%e250890251173%_
                           _%hd250891251176%_
                           _%tl250892251178%_
                           _%e250930251073%_
                           _%hd250931251076%_
                           _%tl250932251078%_
                           _%e250933251081%_
                           _%hd250934251084%_
                           _%tl250935251086%_)
                          (let () (declare (not safe)) (_%g250845250955%_)))))
                  (let () (declare (not safe)) (_%g250845250955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250855251352%_))
                                                  (let ((_%e250945250976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250855251352%_))))
                                                    (let ((_%tl250947250981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250945250976%_)))
                                                          (_%hd250946250979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250945250976%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250947250981%_))
                                                          (let ((_%e250948250984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250947250981%_))))
                    (let ((_%tl250950250989%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250948250984%_)))
                          (_%hd250949250987%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250948250984%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250950250989%_))
                          (_%__kont255316255317%_
                           _%hd250949250987%_
                           _%hd250946250979%_
                           _%hd250854251350%_)
                          (let () (declare (not safe)) (_%g250845250955%_)))))
                  (let () (declare (not safe)) (_%g250845250955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250892251178%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250855251352%_))
                                          (let ((_%e250930251073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250855251352%_))))
                                            (let ((_%tl250932251078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250930251073%_)))
                                                  (_%hd250931251076%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250930251073%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250932251078%_))
                                                  (let ((_%e250933251081%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250932251078%_))))
                                                    (let ((_%tl250935251086%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250933251081%_)))
                                                          (_%hd250934251084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250933251081%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250935251086%_))
                                                          (_%__match255515255516%_
                                                           _%e250850251339%_
                                                           _%hd250851251342%_
                                                           _%tl250852251344%_
                                                           _%e250853251347%_
                                                           _%hd250854251350%_
                                                           _%tl250855251352%_
                                                           _%e250856251355%_
                                                           _%hd250857251358%_
                                                           _%tl250858251360%_
                                                           _%e250881251149%_
                                                           _%hd250882251152%_
                                                           _%tl250883251154%_
                                                           _%e250884251157%_
                                                           _%hd250885251160%_
                                                           _%tl250886251162%_
                                                           _%e250887251165%_
                                                           _%hd250888251168%_
                                                           _%tl250889251170%_
                                                           _%e250890251173%_
                                                           _%hd250891251176%_
                                                           _%tl250892251178%_
                                                           _%e250930251073%_
                                                           _%hd250931251076%_
                                                           _%tl250932251078%_
                                                           _%e250933251081%_
                                                           _%hd250934251084%_
                                                           _%tl250935251086%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250845250955%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250845250955%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250855251352%_))
                                          (let ((_%e250945250976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250855251352%_))))
                                            (let ((_%tl250947250981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250945250976%_)))
                                                  (_%hd250946250979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250945250976%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250947250981%_))
                                                  (let ((_%e250948250984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250947250981%_))))
                                                    (let ((_%tl250950250989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250948250984%_)))
                                                          (_%hd250949250987%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250948250984%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250950250989%_))
                                                          (_%__kont255316255317%_
                                                           _%hd250949250987%_
                                                           _%hd250946250979%_
                                                           _%hd250854251350%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250845250955%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250845250955%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250892251178%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250855251352%_))
                                      (let ((_%e250930251073%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250855251352%_))))
                                        (let ((_%tl250932251078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250930251073%_)))
                                              (_%hd250931251076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250930251073%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250932251078%_))
                                              (let ((_%e250933251081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250932251078%_))))
                                                (let ((_%tl250935251086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250933251081%_)))
                                                      (_%hd250934251084%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250933251081%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250935251086%_))
                                                      (_%__match255515255516%_
                                                       _%e250850251339%_
                                                       _%hd250851251342%_
                                                       _%tl250852251344%_
                                                       _%e250853251347%_
                                                       _%hd250854251350%_
                                                       _%tl250855251352%_
                                                       _%e250856251355%_
                                                       _%hd250857251358%_
                                                       _%tl250858251360%_
                                                       _%e250881251149%_
                                                       _%hd250882251152%_
                                                       _%tl250883251154%_
                                                       _%e250884251157%_
                                                       _%hd250885251160%_
                                                       _%tl250886251162%_
                                                       _%e250887251165%_
                                                       _%hd250888251168%_
                                                       _%tl250889251170%_
                                                       _%e250890251173%_
                                                       _%hd250891251176%_
                                                       _%tl250892251178%_
                                                       _%e250930251073%_
                                                       _%hd250931251076%_
                                                       _%tl250932251078%_
                                                       _%e250933251081%_
                                                       _%hd250934251084%_
                                                       _%tl250935251086%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250845250955%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250845250955%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250845250955%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250855251352%_))
                                      (let ((_%e250945250976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250855251352%_))))
                                        (let ((_%tl250947250981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250945250976%_)))
                                              (_%hd250946250979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250945250976%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250947250981%_))
                                              (let ((_%e250948250984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250947250981%_))))
                                                (let ((_%tl250950250989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250948250984%_)))
                                                      (_%hd250949250987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250948250984%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250950250989%_))
                                                      (_%__kont255316255317%_
                                                       _%hd250949250987%_
                                                       _%hd250946250979%_
                                                       _%hd250854251350%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250845250955%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250845250955%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250845250955%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250892251178%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250855251352%_))
                                  (let ((_%e250930251073%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250855251352%_))))
                                    (let ((_%tl250932251078%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250930251073%_)))
                                          (_%hd250931251076%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250930251073%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250932251078%_))
                                          (let ((_%e250933251081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250932251078%_))))
                                            (let ((_%tl250935251086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250933251081%_)))
                                                  (_%hd250934251084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250933251081%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250935251086%_))
                                                  (_%__match255515255516%_
                                                   _%e250850251339%_
                                                   _%hd250851251342%_
                                                   _%tl250852251344%_
                                                   _%e250853251347%_
                                                   _%hd250854251350%_
                                                   _%tl250855251352%_
                                                   _%e250856251355%_
                                                   _%hd250857251358%_
                                                   _%tl250858251360%_
                                                   _%e250881251149%_
                                                   _%hd250882251152%_
                                                   _%tl250883251154%_
                                                   _%e250884251157%_
                                                   _%hd250885251160%_
                                                   _%tl250886251162%_
                                                   _%e250887251165%_
                                                   _%hd250888251168%_
                                                   _%tl250889251170%_
                                                   _%e250890251173%_
                                                   _%hd250891251176%_
                                                   _%tl250892251178%_
                                                   _%e250930251073%_
                                                   _%hd250931251076%_
                                                   _%tl250932251078%_
                                                   _%e250933251081%_
                                                   _%hd250934251084%_
                                                   _%tl250935251086%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250845250955%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250845250955%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250855251352%_))
                                  (let ((_%e250945250976%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250855251352%_))))
                                    (let ((_%tl250947250981%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250945250976%_)))
                                          (_%hd250946250979%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250945250976%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250947250981%_))
                                          (let ((_%e250948250984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250947250981%_))))
                                            (let ((_%tl250950250989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250948250984%_)))
                                                  (_%hd250949250987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250948250984%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250950250989%_))
                                                  (_%__kont255316255317%_
                                                   _%hd250949250987%_
                                                   _%hd250946250979%_
                                                   _%hd250854251350%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250845250955%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250845250955%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250892251178%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250855251352%_))
                          (let ((_%e250930251073%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250855251352%_))))
                            (let ((_%tl250932251078%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250930251073%_)))
                                  (_%hd250931251076%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250930251073%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250932251078%_))
                                  (let ((_%e250933251081%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250932251078%_))))
                                    (let ((_%tl250935251086%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250933251081%_)))
                                          (_%hd250934251084%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250933251081%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250935251086%_))
                                          (_%__match255515255516%_
                                           _%e250850251339%_
                                           _%hd250851251342%_
                                           _%tl250852251344%_
                                           _%e250853251347%_
                                           _%hd250854251350%_
                                           _%tl250855251352%_
                                           _%e250856251355%_
                                           _%hd250857251358%_
                                           _%tl250858251360%_
                                           _%e250881251149%_
                                           _%hd250882251152%_
                                           _%tl250883251154%_
                                           _%e250884251157%_
                                           _%hd250885251160%_
                                           _%tl250886251162%_
                                           _%e250887251165%_
                                           _%hd250888251168%_
                                           _%tl250889251170%_
                                           _%e250890251173%_
                                           _%hd250891251176%_
                                           _%tl250892251178%_
                                           _%e250930251073%_
                                           _%hd250931251076%_
                                           _%tl250932251078%_
                                           _%e250933251081%_
                                           _%hd250934251084%_
                                           _%tl250935251086%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250845250955%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250845250955%_)))))
                          (let () (declare (not safe)) (_%g250845250955%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250855251352%_))
                          (let ((_%e250945250976%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250855251352%_))))
                            (let ((_%tl250947250981%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250945250976%_)))
                                  (_%hd250946250979%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250945250976%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250947250981%_))
                                  (let ((_%e250948250984%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250947250981%_))))
                                    (let ((_%tl250950250989%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250948250984%_)))
                                          (_%hd250949250987%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250948250984%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250950250989%_))
                                          (_%__kont255316255317%_
                                           _%hd250949250987%_
                                           _%hd250946250979%_
                                           _%hd250854251350%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250845250955%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250845250955%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g250845250955%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250855251352%_))
                                                      (let ((_%e250945250976%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250855251352%_))))
                (let ((_%tl250947250981%_
                       (let () (declare (not safe)) (##cdr _%e250945250976%_)))
                      (_%hd250946250979%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250945250976%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250947250981%_))
                      (let ((_%e250948250984%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250947250981%_))))
                        (let ((_%tl250950250989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250948250984%_)))
                              (_%hd250949250987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250948250984%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250950250989%_))
                              (_%__kont255316255317%_
                               _%hd250949250987%_
                               _%hd250946250979%_
                               _%hd250854251350%_)
                              (let ()
                                (declare (not safe))
                                (_%g250845250955%_)))))
                      (let () (declare (not safe)) (_%g250845250955%_)))))
              (let () (declare (not safe)) (_%g250845250955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250855251352%_))
                                                  (let ((_%e250945250976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250855251352%_))))
                                                    (let ((_%tl250947250981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250945250976%_)))
                                                          (_%hd250946250979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250945250976%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250947250981%_))
                                                          (let ((_%e250948250984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250947250981%_))))
                    (let ((_%tl250950250989%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250948250984%_)))
                          (_%hd250949250987%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250948250984%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250950250989%_))
                          (_%__kont255316255317%_
                           _%hd250949250987%_
                           _%hd250946250979%_
                           _%hd250854251350%_)
                          (let () (declare (not safe)) (_%g250845250955%_)))))
                  (let () (declare (not safe)) (_%g250845250955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250855251352%_))
                                          (let ((_%e250945250976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250855251352%_))))
                                            (let ((_%tl250947250981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250945250976%_)))
                                                  (_%hd250946250979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250945250976%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250947250981%_))
                                                  (let ((_%e250948250984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250947250981%_))))
                                                    (let ((_%tl250950250989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250948250984%_)))
                                                          (_%hd250949250987%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250948250984%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250950250989%_))
                                                          (_%__kont255316255317%_
                                                           _%hd250949250987%_
                                                           _%hd250946250979%_
                                                           _%hd250854251350%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250845250955%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250845250955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250855251352%_))
                                      (let ((_%e250945250976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250855251352%_))))
                                        (let ((_%tl250947250981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250945250976%_)))
                                              (_%hd250946250979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250945250976%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250947250981%_))
                                              (let ((_%e250948250984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250947250981%_))))
                                                (let ((_%tl250950250989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250948250984%_)))
                                                      (_%hd250949250987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250948250984%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250950250989%_))
                                                      (_%__kont255316255317%_
                                                       _%hd250949250987%_
                                                       _%hd250946250979%_
                                                       _%hd250854251350%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250845250955%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250845250955%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250845250955%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250855251352%_))
                                  (let ((_%e250945250976%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250855251352%_))))
                                    (let ((_%tl250947250981%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250945250976%_)))
                                          (_%hd250946250979%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250945250976%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250947250981%_))
                                          (let ((_%e250948250984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250947250981%_))))
                                            (let ((_%tl250950250989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250948250984%_)))
                                                  (_%hd250949250987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250948250984%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250950250989%_))
                                                  (_%__kont255316255317%_
                                                   _%hd250949250987%_
                                                   _%hd250946250979%_
                                                   _%hd250854251350%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250845250955%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250845250955%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250845250955%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250855251352%_))
                          (let ((_%e250945250976%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250855251352%_))))
                            (let ((_%tl250947250981%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250945250976%_)))
                                  (_%hd250946250979%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250945250976%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250947250981%_))
                                  (let ((_%e250948250984%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250947250981%_))))
                                    (let ((_%tl250950250989%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250948250984%_)))
                                          (_%hd250949250987%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250948250984%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250950250989%_))
                                          (_%__kont255316255317%_
                                           _%hd250949250987%_
                                           _%hd250946250979%_
                                           _%hd250854251350%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250845250955%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250845250955%_)))))
                          (let () (declare (not safe)) (_%g250845250955%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl250855251352%_))
                  (let ((_%e250945250976%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250855251352%_))))
                    (let ((_%tl250947250981%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250945250976%_)))
                          (_%hd250946250979%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250945250976%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250947250981%_))
                          (let ((_%e250948250984%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250947250981%_))))
                            (let ((_%tl250950250989%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250948250984%_)))
                                  (_%hd250949250987%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250948250984%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250950250989%_))
                                  (_%__kont255316255317%_
                                   _%hd250949250987%_
                                   _%hd250946250979%_
                                   _%hd250854251350%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g250845250955%_)))))
                          (let () (declare (not safe)) (_%g250845250955%_)))))
                  (let () (declare (not safe)) (_%g250845250955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250855251352%_))
                                                      (let ((_%e250945250976%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250855251352%_))))
                (let ((_%tl250947250981%_
                       (let () (declare (not safe)) (##cdr _%e250945250976%_)))
                      (_%hd250946250979%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250945250976%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250947250981%_))
                      (let ((_%e250948250984%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250947250981%_))))
                        (let ((_%tl250950250989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250948250984%_)))
                              (_%hd250949250987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250948250984%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250950250989%_))
                              (_%__kont255316255317%_
                               _%hd250949250987%_
                               _%hd250946250979%_
                               _%hd250854251350%_)
                              (let ()
                                (declare (not safe))
                                (_%g250845250955%_)))))
                      (let () (declare (not safe)) (_%g250845250955%_)))))
              (let () (declare (not safe)) (_%g250845250955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250855251352%_))
                                              (let ((_%e250945250976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250855251352%_))))
                                                (let ((_%tl250947250981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250945250976%_)))
                                                      (_%hd250946250979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250945250976%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250947250981%_))
                                                      (let ((_%e250948250984%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250947250981%_))))
                (let ((_%tl250950250989%_
                       (let () (declare (not safe)) (##cdr _%e250948250984%_)))
                      (_%hd250949250987%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250948250984%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250950250989%_))
                      (_%__kont255316255317%_
                       _%hd250949250987%_
                       _%hd250946250979%_
                       _%hd250854251350%_)
                      (let () (declare (not safe)) (_%g250845250955%_)))))
              (let () (declare (not safe)) (_%g250845250955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g250845250955%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250855251352%_))
                                      (let ((_%e250945250976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250855251352%_))))
                                        (let ((_%tl250947250981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250945250976%_)))
                                              (_%hd250946250979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250945250976%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250947250981%_))
                                              (let ((_%e250948250984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250947250981%_))))
                                                (let ((_%tl250950250989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250948250984%_)))
                                                      (_%hd250949250987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250948250984%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250950250989%_))
                                                      (_%__kont255316255317%_
                                                       _%hd250949250987%_
                                                       _%hd250946250979%_
                                                       _%hd250854251350%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250845250955%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250845250955%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250845250955%_))))))
                          (let () (declare (not safe)) (_%g250845250955%_)))))
                  (let () (declare (not safe)) (_%g250845250955%_))))))))))
