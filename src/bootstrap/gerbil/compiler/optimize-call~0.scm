(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712084091)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp189475 (list gxc#::basic-xform::t))
            (__tmp189474 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp189475
         '()
         __tmp189474
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189024%_
        (apply make-instance gxc#::optimize-call::t _%$args189024%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp189476
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
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp189476)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189016%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189019%_
                (let ((__obj189466
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj189466))
               (__tmp189477
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189019%_ _%stx189016%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189477
           gxc#current-compile-method
           _%self189019%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp189479 (list gxc#::void::t))
            (__tmp189478 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp189479
         '()
         __tmp189478
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189013%_
        (apply make-instance gxc#::check-return-type::t _%$args189013%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp189480
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
                  gxc#apply-operands))
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
        (__make-promise __tmp189480)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189005%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189008%_
                (let ((__obj189468
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj189468))
               (__tmp189481
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189008%_ _%stx189005%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189481
           gxc#current-compile-method
           _%self189008%_))))
    (define gxc#optimize-call%
      (lambda (_%self188621%_ _%stx188622%_)
        (let* ((_%__stx189079189080%_ _%stx188622%_)
               (_%g188625188671%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189079189080%_)))))
          (let ((_%__kont189081189082%_
                 (lambda (_%L188808%_ _%L188809%_)
                   (let* ((_%rator-id188829%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L188809%_)))
                          (_%rator-type188831%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id188829%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type188831%_))
                             (eq? (##structure-ref
                                   _%rator-type188831%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%self188621%_ _%stx188622%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type188831%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp189482
                                      (##structure-ref
                                       _%rator-type188831%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id188829%_
                                  '" => "
                                  _%rator-type188831%_
                                  '" "
                                  __tmp189482))
                               (let* ((_%optimized188846%_
                                       (let ((__method189469
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type188831%_
                                                 'optimize-call))))
                                         (if __method189469
                                             (__method189469
                                              _%rator-type188831%_
                                              _%self188621%_
                                              _%stx188622%_
                                              (let ((__tmp189483
                                                     (lambda (_%g188838188841%_
                                                              _%g188839188843%_)
                                                       (cons _%g188838188841%_
                                                             _%g188839188843%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp189483
                                                 '()
                                                 _%L188808%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type188831%_
                                                      'optimize-call)))))
                                      (_%__stx189027189028%_
                                       _%optimized188846%_)
                                      (_%g188849188878%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189027189028%_)))))
                                 (let ((_%__kont189029189030%_
                                        (lambda (_%L188946%_ _%L188947%_)
                                          (let ((_%optimized-rator-id188974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L188947%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type188831%_))
                                                         (eq? _%optimized-rator-id188974%_
                                                              _%rator-id188829%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id188974%_
                                                              gxc#checked-primitives)))
                                                _%optimized188846%_
                                                (let ((__tmp189484
                                                       (let ((__tmp189485
                                                              (let ((__tmp189488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L188947%_ '())))
                            (__tmp189486
                             (let ((__tmp189487
                                    (lambda (_%g188978188981%_
                                             _%g188979188983%_)
                                      (cons _%g188978188981%_
                                            _%g188979188983%_))))
                               (declare (not safe))
                               (__foldr1 __tmp189487 '() _%L188946%_))))
                        (declare (not safe))
                        (cons __tmp189488 __tmp189486))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp189485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp189484
                                                   _%stx188622%_))))))
                                       (_%__kont189033189034%_
                                        (lambda () _%optimized188846%_)))
                                   (let ((_%__match189076189077%_
                                          (lambda (_%e188855188890%_
                                                   _%hd188854188893%_
                                                   _%tl188853188895%_
                                                   _%e188858188898%_
                                                   _%hd188857188901%_
                                                   _%tl188856188903%_
                                                   _%e188861188906%_
                                                   _%hd188860188909%_
                                                   _%tl188859188911%_
                                                   _%e188864188914%_
                                                   _%hd188863188917%_
                                                   _%tl188862188919%_
                                                   _%__splice189031189032%_
                                                   _%target188865188922%_
                                                   _%tl188867188924%_)
                                            (letrec ((_%loop188868188927%_
                                                      (lambda (_%hd188866188930%_
                                                               _%arg188872188932%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd188866188930%_))
                                                            (let ((_%e188869188935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd188866188930%_))))
                      (let ((_%lp-tl188871188940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188869188935%_)))
                            (_%lp-hd188870188938%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188869188935%_))))
                        (let ((__tmp189489
                               (cons _%lp-hd188870188938%_
                                     _%arg188872188932%_)))
                          (declare (not safe))
                          (_%loop188868188927%_
                           _%lp-tl188871188940%_
                           __tmp189489))))
                    (let ((_%arg188873188943%_ (reverse _%arg188872188932%_)))
                      (_%__kont189029189030%_
                       _%arg188873188943%_
                       _%hd188863188917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop188868188927%_
                                                 _%target188865188922%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189027189028%_))
                                         (let ((_%e188855188890%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189027189028%_))))
                                           (let ((_%tl188853188895%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e188855188890%_)))
                                                 (_%hd188854188893%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e188855188890%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd188854188893%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd188854188893%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl188853188895%_))
                                                         (let ((_%e188858188898%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl188853188895%_))))
                   (let ((_%tl188856188903%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e188858188898%_)))
                         (_%hd188857188901%_
                          (let ()
                            (declare (not safe))
                            (##car _%e188858188898%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd188857188901%_))
                         (let ((_%e188861188906%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd188857188901%_))))
                           (let ((_%tl188859188911%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e188861188906%_)))
                                 (_%hd188860188909%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e188861188906%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd188860188909%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd188860188909%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl188859188911%_))
                                         (let ((_%e188864188914%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl188859188911%_))))
                                           (let ((_%tl188862188919%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e188864188914%_)))
                                                 (_%hd188863188917%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e188864188914%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl188862188919%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl188856188903%_))
                                                     (let ((_%__splice189031189032%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl188856188903%_
                                                               '0))))
                                                       (let ((_%tl188867188924%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189031189032%_ '1)))
                     (_%target188865188922%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189031189032%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl188867188924%_))
                     (_%__match189076189077%_
                      _%e188855188890%_
                      _%hd188854188893%_
                      _%tl188853188895%_
                      _%e188858188898%_
                      _%hd188857188901%_
                      _%tl188856188903%_
                      _%e188861188906%_
                      _%hd188860188909%_
                      _%tl188859188911%_
                      _%e188864188914%_
                      _%hd188863188917%_
                      _%tl188862188919%_
                      _%__splice189031189032%_
                      _%target188865188922%_
                      _%tl188867188924%_)
                     (_%__kont189033189034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189033189034%_))
                                                 (_%__kont189033189034%_))))
                                         (_%__kont189033189034%_))
                                     (_%__kont189033189034%_))
                                 (_%__kont189033189034%_))))
                         (_%__kont189033189034%_))))
                 (_%__kont189033189034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189033189034%_))
                                                 (_%__kont189033189034%_))))
                                         (_%__kont189033189034%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type188831%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type188831%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ()
                                   (let ((__tmp189490
                                          (let ((__tmp189491
                                                 (let ((__tmp189494
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%L188809%_ '())))
               (__tmp189492
                (map (lambda (_%g188989188991%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self188621%_ _%g188989188991%_)))
                     (let ((__tmp189493
                            (lambda (_%g188993188996%_ _%g188994188998%_)
                              (cons _%g188993188996%_ _%g188994188998%_))))
                       (declare (not safe))
                       (__foldr1 __tmp189493 '() _%L188808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp189494
                                                         __tmp189492))))
                                            (declare (not safe))
                                            (cons '%#call-unchecked
                                                  __tmp189491))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp189490
                                      _%stx188622%_)))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#raise-compile-error
                                      '"illegal application; not a procedure"
                                      _%stx188622%_
                                      _%rator-type188831%_)))))))))
                (_%__kont189085189086%_
                 (lambda (_%L188716%_ _%L188717%_)
                   (let ((_%rator-type188734%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L188717%_))))
                     (if (and _%rator-type188734%_
                              (eq? (##structure-ref
                                    _%rator-type188734%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp189495
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type188734%_))))
                                (declare (not safe))
                                (not __tmp189495)))
                         (let ((__tmp189496
                                (let ((__tmp189497
                                       (let ((__tmp189500
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self188621%_
                                                 _%L188717%_)))
                                             (__tmp189498
                                              (map (lambda (_%g188735188737%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self188621%_
                                                        _%g188735188737%_)))
                                                   (let ((__tmp189499
                                                          (lambda (_%g188739188742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g188740188744%_)
                    (cons _%g188739188742%_ _%g188740188744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp189499
                                                      '()
                                                      _%L188716%_)))))
                                         (declare (not safe))
                                         (cons __tmp189500 __tmp189498))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp189497))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp189496 _%stx188622%_))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self188621%_ _%stx188622%_)))))))
            (let* ((_%__match189146189147%_
                    (lambda (_%e188654188676%_
                             _%hd188653188679%_
                             _%tl188652188681%_
                             _%e188657188684%_
                             _%hd188656188687%_
                             _%tl188655188689%_
                             _%__splice189087189088%_
                             _%target188658188692%_
                             _%tl188660188694%_)
                      (letrec ((_%loop188661188697%_
                                (lambda (_%hd188659188700%_
                                         _%rand188665188702%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188659188700%_))
                                      (let ((_%e188662188705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188659188700%_))))
                                        (let ((_%lp-tl188664188710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188662188705%_)))
                                              (_%lp-hd188663188708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188662188705%_))))
                                          (let ((__tmp189501
                                                 (cons _%lp-hd188663188708%_
                                                       _%rand188665188702%_)))
                                            (declare (not safe))
                                            (_%loop188661188697%_
                                             _%lp-tl188664188710%_
                                             __tmp189501))))
                                      (let ((_%rand188666188713%_
                                             (reverse _%rand188665188702%_)))
                                        (_%__kont189085189086%_
                                         _%rand188666188713%_
                                         _%hd188656188687%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188661188697%_ _%target188658188692%_ '())))))
                   (_%__match189126189127%_
                    (lambda (_%e188631188752%_
                             _%hd188630188755%_
                             _%tl188629188757%_
                             _%e188634188760%_
                             _%hd188633188763%_
                             _%tl188632188765%_
                             _%e188637188768%_
                             _%hd188636188771%_
                             _%tl188635188773%_
                             _%e188640188776%_
                             _%hd188639188779%_
                             _%tl188638188781%_
                             _%__splice189083189084%_
                             _%target188641188784%_
                             _%tl188643188786%_)
                      (letrec ((_%loop188644188789%_
                                (lambda (_%hd188642188792%_
                                         _%rand188648188794%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188642188792%_))
                                      (let ((_%e188645188797%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188642188792%_))))
                                        (let ((_%lp-tl188647188802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188645188797%_)))
                                              (_%lp-hd188646188800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188645188797%_))))
                                          (let ((__tmp189502
                                                 (cons _%lp-hd188646188800%_
                                                       _%rand188648188794%_)))
                                            (declare (not safe))
                                            (_%loop188644188789%_
                                             _%lp-tl188647188802%_
                                             __tmp189502))))
                                      (let ((_%rand188649188805%_
                                             (reverse _%rand188648188794%_)))
                                        (_%__kont189081189082%_
                                         _%rand188649188805%_
                                         _%hd188639188779%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188644188789%_
                           _%target188641188784%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189079189080%_))
                  (let ((_%e188631188752%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189079189080%_))))
                    (let ((_%tl188629188757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188631188752%_)))
                          (_%hd188630188755%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188631188752%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188629188757%_))
                          (let ((_%e188634188760%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188629188757%_))))
                            (let ((_%tl188632188765%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188634188760%_)))
                                  (_%hd188633188763%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188634188760%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd188633188763%_))
                                  (let ((_%e188637188768%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd188633188763%_))))
                                    (let ((_%tl188635188773%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188637188768%_)))
                                          (_%hd188636188771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188637188768%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd188636188771%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd188636188771%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl188635188773%_))
                                                  (let ((_%e188640188776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl188635188773%_))))
                                                    (let ((_%tl188638188781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188640188776%_)))
                                                          (_%hd188639188779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188640188776%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188638188781%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl188632188765%_))
                      (let ((_%__splice189083189084%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188632188765%_
                                '0))))
                        (let ((_%tl188643188786%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189083189084%_ '1)))
                              (_%target188641188784%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189083189084%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188643188786%_))
                              (_%__match189126189127%_
                               _%e188631188752%_
                               _%hd188630188755%_
                               _%tl188629188757%_
                               _%e188634188760%_
                               _%hd188633188763%_
                               _%tl188632188765%_
                               _%e188637188768%_
                               _%hd188636188771%_
                               _%tl188635188773%_
                               _%e188640188776%_
                               _%hd188639188779%_
                               _%tl188638188781%_
                               _%__splice189083189084%_
                               _%target188641188784%_
                               _%tl188643188786%_)
                              (let ()
                                (declare (not safe))
                                (_%g188625188671%_)))))
                      (let () (declare (not safe)) (_%g188625188671%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl188632188765%_))
                      (let ((_%__splice189087189088%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188632188765%_
                                '0))))
                        (let ((_%tl188660188694%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189087189088%_ '1)))
                              (_%target188658188692%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189087189088%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188660188694%_))
                              (_%__match189146189147%_
                               _%e188631188752%_
                               _%hd188630188755%_
                               _%tl188629188757%_
                               _%e188634188760%_
                               _%hd188633188763%_
                               _%tl188632188765%_
                               _%__splice189087189088%_
                               _%target188658188692%_
                               _%tl188660188694%_)
                              (let ()
                                (declare (not safe))
                                (_%g188625188671%_)))))
                      (let () (declare (not safe)) (_%g188625188671%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl188632188765%_))
                                                      (let ((_%__splice189087189088%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl188632188765%_ '0))))
                (let ((_%tl188660188694%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189087189088%_ '1)))
                      (_%target188658188692%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189087189088%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188660188694%_))
                      (_%__match189146189147%_
                       _%e188631188752%_
                       _%hd188630188755%_
                       _%tl188629188757%_
                       _%e188634188760%_
                       _%hd188633188763%_
                       _%tl188632188765%_
                       _%__splice189087189088%_
                       _%target188658188692%_
                       _%tl188660188694%_)
                      (let () (declare (not safe)) (_%g188625188671%_)))))
              (let () (declare (not safe)) (_%g188625188671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl188632188765%_))
                                                  (let ((_%__splice189087189088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl188632188765%_
                                                            '0))))
                                                    (let ((_%tl188660188694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189087189088%_
                                                              '1)))
                                                          (_%target188658188692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189087189088%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188660188694%_))
                                                          (_%__match189146189147%_
                                                           _%e188631188752%_
                                                           _%hd188630188755%_
                                                           _%tl188629188757%_
                                                           _%e188634188760%_
                                                           _%hd188633188763%_
                                                           _%tl188632188765%_
                                                           _%__splice189087189088%_
                                                           _%target188658188692%_
                                                           _%tl188660188694%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g188625188671%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g188625188671%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl188632188765%_))
                                              (let ((_%__splice189087189088%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl188632188765%_
                                                        '0))))
                                                (let ((_%tl188660188694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189087189088%_
                                                          '1)))
                                                      (_%target188658188692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189087189088%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl188660188694%_))
                                                      (_%__match189146189147%_
                                                       _%e188631188752%_
                                                       _%hd188630188755%_
                                                       _%tl188629188757%_
                                                       _%e188634188760%_
                                                       _%hd188633188763%_
                                                       _%tl188632188765%_
                                                       _%__splice189087189088%_
                                                       _%target188658188692%_
                                                       _%tl188660188694%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g188625188671%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g188625188671%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188632188765%_))
                                      (let ((_%__splice189087189088%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188632188765%_
                                                '0))))
                                        (let ((_%tl188660188694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189087189088%_
                                                  '1)))
                                              (_%target188658188692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189087189088%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188660188694%_))
                                              (_%__match189146189147%_
                                               _%e188631188752%_
                                               _%hd188630188755%_
                                               _%tl188629188757%_
                                               _%e188634188760%_
                                               _%hd188633188763%_
                                               _%tl188632188765%_
                                               _%__splice189087189088%_
                                               _%target188658188692%_
                                               _%tl188660188694%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g188625188671%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188625188671%_))))))
                          (let () (declare (not safe)) (_%g188625188671%_)))))
                  (let () (declare (not safe)) (_%g188625188671%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self188583%_ _%ctx188584%_ _%stx188585%_ _%args188586%_)
        (let ()
          (let ((_%self188589%_ _%self188583%_))
            (let ()
              (if (let ((__method189470
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188589%_ 'check-arguments))))
                    (if __method189470
                        (__method189470
                         _%self188589%_
                         _%ctx188584%_
                         _%stx188585%_
                         _%args188586%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188589%_
                                 'check-arguments))))
                  (let* ((_%signature188599%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188589%_
                             '2
                             '#f
                             '#f)))
                         (_%signature188601%_ _%signature188599%_))
                    (let ((_%$e188611%_
                           (if _%signature188601%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%signature188601%_
                                  '4
                                  '#f
                                  '#f))
                               '#f)))
                      (if _%$e188611%_
                          ((lambda (_%unchecked188614%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%unchecked188614%_))
                                 (let ((__tmp189503
                                        (let ((__tmp189504
                                               (let ((__tmp189506
                                                      (cons '%#ref
                                                            (cons _%unchecked188614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189505
                                                      (map (lambda (_%g188615188617%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%ctx188584%_ _%g188615188617%_)))
                   _%args188586%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp189506
                                                       __tmp189505))))
                                          (declare (not safe))
                                          (cons '%#call __tmp189504))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp189503
                                    _%stx188585%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#xform-call%
                                    _%ctx188584%_
                                    _%stx188585%_))))
                           _%$e188611%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call%
                               _%ctx188584%_
                               _%stx188585%_))))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx188584%_ _%stx188585%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188334%_ _%ctx188335%_ _%stx188336%_ _%args188337%_)
        (let ()
          (let ((_%self188340%_ _%self188334%_))
            (let ()
              (let ((_%signature188349188351%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self188340%_ '2 '#f '#f))))
                (if _%signature188349188351%_
                    (let* ((_%signature188354%_ _%signature188349188351%_)
                           (_%argument-types188355188357%_
                            (##direct-structure-ref
                             _%signature188354%_
                             '3
                             gxc#!signature::t
                             '#f)))
                      (if _%argument-types188355188357%_
                          (let ((_%argument-types188360%_
                                 _%argument-types188355188357%_))
                            (let ((_%argument-types188365%_
                                   (let ((__tmp189507
                                          (lambda (_%t188363%_)
                                            (if _%t188363%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   _%stx188336%_
                                                   _%t188363%_))
                                                '#f))))
                                     (declare (not safe))
                                     (gxc#map*
                                      __tmp189507
                                      _%argument-types188360%_))))
                              (let _%loop188367%_ ((_%rest-args188369%_
                                                    _%args188337%_)
                                                   (_%rest-types188370%_
                                                    _%argument-types188365%_)
                                                   (_%result188371%_ '#t))
                                (let* ((_%rest-args188372188380%_
                                        _%rest-args188369%_)
                                       (_%else188374188388%_
                                        (lambda () _%result188371%_))
                                       (_%K188376188449%_
                                        (lambda (_%rest-args188391%_
                                                 _%arg188392%_)
                                          (let* ((_%rest-types188393188404%_
                                                  _%rest-types188370%_)
                                                 (_%E188397188408%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%rest-types188393188404%_
                                                             '([type
                                                                .
                                                                rest-types])
                                                             '([])
                                                             '(tail-type)))
                                                    '#!void)))
                                            (let ((_%K188400188437%_
                                                   (lambda (_%rest-types188434%_
                                                            _%type188435%_)
                                                     (let ((__tmp189508
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#check-expression-type!
                           _%stx188336%_
                           _%arg188392%_
                           _%type188435%_))
                        _%result188371%_
                        '#f)))
               (declare (not safe))
               (_%loop188367%_
                _%rest-args188391%_
                _%rest-types188434%_
                __tmp189508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%K188399188428%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"signature arity mismatch"
                                                        _%stx188336%_
                                                        _%argument-types188365%_))))
                                                  (_%K188398188418%_
                                                   (lambda (_%tail-type188412%_)
                                                     (if (let ((__tmp189509
                                                                (lambda (_%g188413188415%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#check-expression-type!
                             _%stx188336%_
                             _%g188413188415%_
                             _%tail-type188412%_)))))
                   (declare (not safe))
                   (__andmap1 __tmp189509 _%rest-args188391%_))
                 _%result188371%_
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%try-match188395188431%_
                                                     (lambda ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##null? _%rest-types188393188404%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%K188399188428%_))
                                                           (let ((_%tail-type188421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%rest-types188393188404%_))
                     (declare (not safe))
                     (_%K188398188418%_ _%tail-type188421%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%rest-types188393188404%_))
                                                    (let ((_%tl188402188442%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%rest-types188393188404%_)))
                                                          (_%hd188401188440%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%rest-types188393188404%_))))
                                                      (let ((_%type188445%_
                                                             _%hd188401188440%_)
                                                            (_%rest-types188447%_
                                                             _%tl188402188442%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%K188400188437%_
                                                           _%rest-types188447%_
                                                           _%type188445%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match188395188431%_)))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%rest-args188372188380%_))
                                      (let ((_%hd188377188452%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%rest-args188372188380%_)))
                                            (_%tl188378188454%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest-args188372188380%_))))
                                        (let* ((_%arg188457%_
                                                _%hd188377188452%_)
                                               (_%rest-args188459%_
                                                _%tl188378188454%_))
                                          (declare (not safe))
                                          (_%K188376188449%_
                                           _%rest-args188459%_
                                           _%arg188457%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else188374188388%_)))))))
                          '#f))
                    '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self188145%_ _%ctx188146%_ _%stx188147%_ _%args188148%_)
        (let ()
          (let ((_%self188151%_ _%self188145%_))
            (let ()
              (let* ((_%g188161188171%_
                      (lambda (_%g188162188168%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g188162188168%_))))
                     (_%g188160188209%_
                      (lambda (_%g188162188174%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g188162188174%_))
                            (let ((_%e188166188176%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g188162188174%_))))
                              (let ((_%hd188165188179%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188166188176%_)))
                                    (_%tl188164188181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188166188176%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl188164188181%_))
                                    ((lambda (_%L188184%_)
                                       (let* ((_%klass188196%_
                                               (let ((__tmp189510
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188151%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx188147%_
                                                  __tmp189510)))
                                              (_%object188198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx188146%_
                                                  _%L188184%_)))
                                              (_%instance?188203%_
                                               (let ((_%$e188200%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-type?
                                                         _%object188198%_
                                                         _%klass188196%_))))
                                                 (if _%$e188200%_
                                                     _%$e188200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#expression-type?
                                                        _%L188184%_
                                                        _%klass188196%_))))))
                                         (if _%instance?188203%_
                                             (let ((__tmp189511
                                                    (if (or (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#expression-no-side-effects?
                                                               _%object188198%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#expression-no-side-effects?
                                                               _%L188184%_)))
                                                        (cons '%#quote
                                                              (cons '#t '()))
                                                        (cons '%#begin
                                                              (cons _%object188198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '#t '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp189511
                                                _%stx188147%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#xform-call%
                                                _%ctx188146%_
                                                _%stx188147%_)))))
                                     _%hd188165188179%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g188161188171%_ _%g188162188174%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g188161188171%_ _%g188162188174%_))))))
                (declare (not safe))
                (_%g188160188209%_ _%args188148%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self187941%_ _%ctx187942%_ _%stx187943%_ _%args187944%_)
        (let ()
          (let ((_%self187947%_ _%self187941%_))
            (let ()
              (let* ((_%g187957187967%_
                      (lambda (_%g187958187964%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187958187964%_))))
                     (_%g187956188020%_
                      (lambda (_%g187958187970%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187958187970%_))
                            (let ((_%e187962187972%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187958187970%_))))
                              (let ((_%hd187961187975%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187962187972%_)))
                                    (_%tl187960187977%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187962187972%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl187960187977%_))
                                    ((lambda (_%L187980%_)
                                       (let* ((_%klass187992%_
                                               (let ((__tmp189512
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187947%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx187943%_
                                                  __tmp189512)))
                                              (_%object187994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx187942%_
                                                  _%L187980%_)))
                                              (_%instance?187999%_
                                               (let ((_%$e187996%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-type?
                                                         _%object187994%_
                                                         _%klass187992%_))))
                                                 (if _%$e187996%_
                                                     _%$e187996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#expression-type?
                                                        _%L187980%_
                                                        _%klass187992%_))))))
                                         (let ((_%klass188002%_
                                                _%klass187992%_))
                                           (if _%instance?187999%_
                                               (let ()
                                                 (let ((__tmp189513
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#expression-no-side-effects? _%object187994%_))
                        (let ()
                          (declare (not safe))
                          (gxc#expression-no-side-effects? _%L187980%_)))
                    (cons '%#quote (cons '#t '()))
                    (cons '%#begin (cons _%object187994%_ (cons '#t '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189513
                                                    _%stx187943%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass188002%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ()
                                                     (let ((__tmp189514
                                                            (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass188002%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object187994%_ '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp189514 _%stx187943%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass188002%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ()
                                                         (let ((__tmp189515
                                                                (cons '%#struct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass188002%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons _%object187994%_ '())))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189515 _%stx187943%_)))
               (let ()
                 (let ((__tmp189516
                        (cons '%#call
                              (cons (cons '%#ref (cons 'class-instance? '()))
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187947%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons _%object187994%_ '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189516 _%stx187943%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd187961187975%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g187957187967%_ _%g187958187970%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g187957187967%_ _%g187958187970%_))))))
                (declare (not safe))
                (_%g187956188020%_ _%args187944%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx187604%_)
        (let* ((_%__stx189156189157%_ _%stx187604%_)
               (_%g187609187650%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189156189157%_)))))
          (let ((_%__kont189158189159%_ (lambda () '#t))
                (_%__kont189160189161%_ (lambda () '#t))
                (_%__kont189162189163%_
                 (lambda (_%L187718%_ _%L187719%_)
                   (let ((_%rator-type187740187742%_
                          (let ((__tmp189517
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L187719%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp189517))))
                     (if _%rator-type187740187742%_
                         (let* ((_%rator-type187745%_
                                 _%rator-type187740187742%_)
                                (_%rator-signature187746187748%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type187745%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type187745%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature187746187748%_
                               (let* ((_%rator-signature187751%_
                                       _%rator-signature187746187748%_)
                                      (_%rator-effect187752187754%_
                                       (if _%rator-signature187751%_
                                           (##direct-structure-ref
                                            _%rator-signature187751%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect187752187754%_
                                     (let ((_%rator-effect187757%_
                                            _%rator-effect187752187754%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect187757%_)
                                               (equal? '(alloc)
                                                       _%rator-effect187757%_))
                                           (let ((__tmp189518
                                                  (let ((__tmp189519
                                                         (lambda (_%g187762187765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g187763187767%_)
                   (cons _%g187762187765%_ _%g187763187767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp189519
                                                     '()
                                                     _%L187718%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp189518))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189166189167%_ (lambda () '#f)))
            (let ((_%__match189245189246%_
                   (lambda (_%e187627187662%_
                            _%hd187626187665%_
                            _%tl187625187667%_
                            _%e187630187670%_
                            _%hd187629187673%_
                            _%tl187628187675%_
                            _%e187633187678%_
                            _%hd187632187681%_
                            _%tl187631187683%_
                            _%e187636187686%_
                            _%hd187635187689%_
                            _%tl187634187691%_
                            _%__splice189164189165%_
                            _%target187637187694%_
                            _%tl187639187696%_)
                     (letrec ((_%loop187640187699%_
                               (lambda (_%hd187638187702%_
                                        _%rand187644187704%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187638187702%_))
                                     (let ((_%e187641187707%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187638187702%_))))
                                       (let ((_%lp-tl187643187712%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187641187707%_)))
                                             (_%lp-hd187642187710%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187641187707%_))))
                                         (let ((__tmp189520
                                                (cons _%lp-hd187642187710%_
                                                      _%rand187644187704%_)))
                                           (declare (not safe))
                                           (_%loop187640187699%_
                                            _%lp-tl187643187712%_
                                            __tmp189520))))
                                     (let ((_%rand187645187715%_
                                            (reverse _%rand187644187704%_)))
                                       (_%__kont189162189163%_
                                        _%rand187645187715%_
                                        _%hd187635187689%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187640187699%_ _%target187637187694%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189156189157%_))
                  (let ((_%e187613187798%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189156189157%_))))
                    (let ((_%tl187611187803%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187613187798%_)))
                          (_%hd187612187801%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187613187798%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd187612187801%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd187612187801%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl187611187803%_))
                                  (let ((_%e187616187806%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl187611187803%_))))
                                    (let ((_%tl187614187811%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187616187806%_)))
                                          (_%hd187615187809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187616187806%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187614187811%_))
                                          (_%__kont189158189159%_)
                                          (_%__kont189166189167%_))))
                                  (_%__kont189166189167%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd187612187801%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187611187803%_))
                                      (let ((_%e187622187783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187611187803%_))))
                                        (let ((_%tl187620187788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187622187783%_)))
                                              (_%hd187621187786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187622187783%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187620187788%_))
                                              (_%__kont189160189161%_)
                                              (_%__kont189166189167%_))))
                                      (_%__kont189166189167%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd187612187801%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl187611187803%_))
                                          (let ((_%e187630187670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl187611187803%_))))
                                            (let ((_%tl187628187675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e187630187670%_)))
                                                  (_%hd187629187673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e187630187670%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd187629187673%_))
                                                  (let ((_%e187633187678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd187629187673%_))))
                                                    (let ((_%tl187631187683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187633187678%_)))
                                                          (_%hd187632187681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187633187678%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd187632187681%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd187632187681%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187631187683%_))
                          (let ((_%e187636187686%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187631187683%_))))
                            (let ((_%tl187634187691%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187636187686%_)))
                                  (_%hd187635187689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187636187686%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl187634187691%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl187628187675%_))
                                      (let ((_%__splice189164189165%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl187628187675%_
                                                '0))))
                                        (let ((_%tl187639187696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189164189165%_
                                                  '1)))
                                              (_%target187637187694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189164189165%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187639187696%_))
                                              (_%__match189245189246%_
                                               _%e187613187798%_
                                               _%hd187612187801%_
                                               _%tl187611187803%_
                                               _%e187630187670%_
                                               _%hd187629187673%_
                                               _%tl187628187675%_
                                               _%e187633187678%_
                                               _%hd187632187681%_
                                               _%tl187631187683%_
                                               _%e187636187686%_
                                               _%hd187635187689%_
                                               _%tl187634187691%_
                                               _%__splice189164189165%_
                                               _%target187637187694%_
                                               _%tl187639187696%_)
                                              (_%__kont189166189167%_))))
                                      (_%__kont189166189167%_))
                                  (_%__kont189166189167%_))))
                          (_%__kont189166189167%_))
                      (_%__kont189166189167%_))
                  (_%__kont189166189167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189166189167%_))))
                                          (_%__kont189166189167%_))
                                      (_%__kont189166189167%_))))
                          (_%__kont189166189167%_))))
                  (_%__kont189166189167%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx187599%_ _%klass187600%_)
        (let ((_%expr-type187602%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx187599%_))))
          (if _%expr-type187602%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type187602%_ _%klass187600%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx187577%_ _%expr187578%_ _%type187579%_)
        (if (let () (declare (not safe)) (not _%type187579%_))
            (let () '#f)
            (let ((_%$e187582%_
                   (eq? (##structure-ref _%type187579%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e187582%_
                  _%$e187582%_
                  (let ()
                    (let ((_%expr-type187586%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187578%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187586%_))
                          (let () '#f)
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187586%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let () '#f)
                              (let ((_%$e187590%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187586%_
                                        'gxc#!abort::t))))
                                (if _%$e187590%_
                                    _%$e187590%_
                                    (let ((_%$e187593%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187586%_
                                              _%type187579%_))))
                                      (if _%$e187593%_
                                          _%$e187593%_
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!interface-instance?
                                                 _%type187579%_))
                                              (let () '#f)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gxc#!type-subtype?
                                                     _%type187579%_
                                                     _%expr-type187586%_))
                                                  (let () '#f)
                                                  (let ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#raise-compile-error
                                                       '"signature type mismatch"
                                                       _%stx187577%_
                                                       _%expr187578%_
                                                       _%expr-type187586%_
                                                       _%type187579%_))))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self187391%_ _%ctx187392%_ _%stx187393%_ _%args187394%_)
        (let ()
          (let ((_%self187397%_ _%self187391%_))
            (let ()
              (let* ((_%klass187407%_
                      (let ((__tmp189521
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187397%_
                                '1
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#optimizer-resolve-class
                         _%stx187393%_
                         __tmp189521)))
                     (_%fields187409%_
                      (length (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass187407%_
                                 '5
                                 '#f
                                 '#f))))
                     (_%args187415%_
                      (map (lambda (_%g187410187412%_)
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%ctx187392%_
                                _%g187410187412%_)))
                           _%args187394%_))
                     (_%inline-make-object187417%_
                      (cons '%#begin-annotation
                            (cons (cons '@type
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187397%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons '##structure
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self187397%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (make-list _%fields187409%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (let ((_%klass187420%_ _%klass187407%_))
                  (let ((_%$e187434%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass187420%_
                            '6
                            '#f
                            '#f))))
                    (if _%$e187434%_
                        ((lambda (_%ctor187437%_)
                           (let ((_%$obj187439%_
                                  (let ((__tmp189522
                                         (let ()
                                           (declare (not safe))
                                           (##gensym '__obj))))
                                    (declare (not safe))
                                    (make-symbol__0 __tmp189522)))
                                 (_%ctor-impl187440%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!class-lookup-method
                                     _%klass187420%_
                                     _%ctor187437%_))))
                             (let ((__tmp189523
                                    (cons '%#let-values
                                          (cons (cons (cons (cons _%$obj187439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _%inline-make-object187417%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#begin
                                                            (cons (if _%ctor-impl187440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _%ctor-impl187440%_ '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187439%_
                                                            '()))
                                                _%args187415%_)))
                              (let ((_%$ctor187442%_
                                     (let ((__tmp189524
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__constructor))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp189524))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$ctor187442%_
                                                              '())
                                                        (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'direct-method-ref '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187397%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187439%_ '()))
                                              (cons (cons '%#quote
                                                          (cons _%ctor187437%_
                                                                '()))
                                                    '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$ctor187442%_ '()))
                      (cons (cons '%#call
                                  (cons (cons '%#ref
                                              (cons _%$ctor187442%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187439%_ '()))
                                              _%args187415%_)))
                            (cons (cons '%#call
                                        (cons (cons '%#ref (cons 'error '()))
                                              (cons (cons '%#quote
                                                          (cons '"missing constructor method implementation"
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons 'class:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self187397%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons 'method: '()))
                              (cons (cons '%#quote (cons _%ctor187437%_ '()))
                                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                          (cons (cons '%#ref (cons _%$obj187439%_ '())) '())))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp189523
                                _%stx187393%_))))
                         _%$e187434%_)
                        (let ((_%$e187444%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass187420%_
                                  '10
                                  '#f
                                  '#f))))
                          (if _%$e187444%_
                              ((lambda (_%metaclass187447%_)
                                 (let* ((_%$obj187449%_
                                         (let ((__tmp189525
                                                (let ()
                                                  (declare (not safe))
                                                  (##gensym '__obj))))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp189525)))
                                        (_%metakons187451%_
                                         (let ((__tmp189526
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   _%stx187393%_
                                                   _%metaclass187447%_))))
                                           (declare (not safe))
                                           (gxc#!class-lookup-method
                                            __tmp189526
                                            'instance-init!))))
                                   (let ((__tmp189527
                                          (cons '%#let-values
                                                (cons (cons (cons (cons _%$obj187449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _%inline-make-object187417%_ '()))
                    '())
              (cons (cons '%#begin
                          (cons (if _%metakons187451%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons _%metakons187451%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187397%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187449%_ '())) _%args187415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'call-method '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187397%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'instance-init! '()))
                    (cons (cons '%#ref (cons _%$obj187449%_ '()))
                          _%args187415%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons '%#ref (cons _%$obj187449%_ '()))
                                      '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp189527
                                      _%stx187393%_))))
                               _%$e187444%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass187420%_
                                     '7
                                     '#f
                                     '#f))
                                  (let ()
                                    (if (let ((__tmp189528
                                               (let ()
                                                 (declare (not safe))
                                                 (##length _%args187415%_))))
                                          (declare (not safe))
                                          (##fx= __tmp189528 _%fields187409%_))
                                        (let ((__tmp189529
                                               (cons '%#begin-annotation
                                                     (cons (cons '@type
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self187397%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#call
                               (cons (cons '%#ref (cons '##structure '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self187397%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           _%args187415%_)))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp189529
                                           _%stx187393%_))
                                        (let ((__tmp189531
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self187397%_
                                                  '1
                                                  '#f
                                                  '#f)))
                                              (__tmp189530
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187420%_
                                                  '5
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"illegal struct constructor application; arity mismatch"
                                           _%stx187393%_
                                           __tmp189531
                                           __tmp189530))))
                                  (let ()
                                    (let ((_%$obj187456%_
                                           (let ((__tmp189532
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__obj))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp189532))))
                                      (let _%lp187458%_ ((_%rest187460%_
                                                          _%args187415%_)
                                                         (_%initializers187461%_
                                                          '()))
                                        (let* ((_%__stx189248189249%_
                                                _%rest187460%_)
                                               (_%g187465187486%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx189248189249%_)))))
                                          (let ((_%__kont189250189251%_
                                                 (lambda (_%L187540%_
                                                          _%L187541%_
                                                          _%L187542%_)
                                                   (let* ((_%slot187569%_
                                                           (let ((__tmp189533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L187542%_))))
                     (declare (not safe))
                     (keyword->symbol __tmp189533)))
                  (_%off187571%_
                   (let ()
                     (declare (not safe))
                     (gxc#!class-slot->field-offset
                      _%klass187420%_
                      _%slot187569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%off187571%_
                                                         (let ((__tmp189534
                                                                (cons (cons _%off187571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%L187541%_)
                              _%initializers187461%_)))
                   (declare (not safe))
                   (_%lp187458%_ _%L187540%_ __tmp189534))
                 (let ((__tmp189535
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187397%_
                           '1
                           '#f
                           '#f))))
                   (declare (not safe))
                   (gxc#raise-compile-error
                    '"unknown slot"
                    _%stx187393%_
                    __tmp189535
                    _%slot187569%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont189252189253%_
                                                 (lambda ()
                                                   (let ((__tmp189536
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$obj187456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _%inline-make-object187417%_
                                                '()))
                                    '())
                              (cons (cons '%#begin
                                          (let ((__tmp189539
                                                 (cons (cons '%#ref
                                                             (cons _%$obj187456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp189537
                                                 (let ((__tmp189538
                                                        (lambda (_%i187500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%r187501%_)
                  (cons (cons '%#struct-unchecked-set!
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187397%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#quote
                                                (cons (car _%i187500%_) '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187456%_
                                                            '()))
                                                (cons (cdr _%i187500%_)
                                                      '())))))
                        _%r187501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldl1
                                                    __tmp189538
                                                    '()
                                                    _%initializers187461%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp189539
                                             __tmp189537)))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189536
                                                      _%stx187393%_))))
                                                (_%__kont189254189255%_
                                                 (lambda ()
                                                   (let ((__tmp189540
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$obj187456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _%inline-make-object187417%_
                                                '()))
                                    '())
                              (cons (cons '%#begin
                                          (cons (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'class-instance-init! '()))
                    (cons (cons '%#ref (cons _%$obj187456%_ '()))
                          _%args187415%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#ref
                                                            (cons _%$obj187456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189540
                                                      _%stx187393%_)))))
                                            (let* ((_%g187463187503%_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%__stx189248189249%_))
                                                          (_%__kont189252189253%_)
                                                          (_%__kont189254189255%_))))
                                                   (_%__match189285189286%_
                                                    (lambda (_%e187472187508%_
                                                             _%hd187471187511%_
                                                             _%tl187470187513%_
                                                             _%e187475187516%_
                                                             _%hd187474187519%_
                                                             _%tl187473187521%_
                                                             _%e187478187524%_
                                                             _%hd187477187527%_
                                                             _%tl187476187529%_
                                                             _%e187481187532%_
                                                             _%hd187480187535%_
                                                             _%tl187479187537%_)
                                                      (let ((_%L187540%_
                                                             _%tl187479187537%_)
                                                            (_%L187541%_
                                                             _%hd187480187535%_)
                                                            (_%L187542%_
                                                             _%hd187477187527%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-keyword?
                                                               _%L187542%_))
                                                            (_%__kont189250189251%_
                                                             _%L187540%_
                                                             _%L187541%_
                                                             _%L187542%_)
                                                            (_%__kont189254189255%_))))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx189248189249%_))
                                                  (let ((_%e187472187508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx189248189249%_))))
                                                    (let ((_%tl187470187513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187472187508%_)))
                                                          (_%hd187471187511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187472187508%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd187471187511%_))
                                                          (let ((_%e187475187516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd187471187511%_))))
                    (let ((_%tl187473187521%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187475187516%_)))
                          (_%hd187474187519%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187475187516%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd187474187519%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd187474187519%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl187473187521%_))
                                  (let ((_%e187478187524%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl187473187521%_))))
                                    (let ((_%tl187476187529%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187478187524%_)))
                                          (_%hd187477187527%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187478187524%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187476187529%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187470187513%_))
                                              (let ((_%e187481187532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187470187513%_))))
                                                (let ((_%tl187479187537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187481187532%_)))
                                                      (_%hd187480187535%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187481187532%_))))
                                                  (_%__match189285189286%_
                                                   _%e187472187508%_
                                                   _%hd187471187511%_
                                                   _%tl187470187513%_
                                                   _%e187475187516%_
                                                   _%hd187474187519%_
                                                   _%tl187473187521%_
                                                   _%e187478187524%_
                                                   _%hd187477187527%_
                                                   _%tl187476187529%_
                                                   _%e187481187532%_
                                                   _%hd187480187535%_
                                                   _%tl187479187537%_)))
                                              (_%__kont189254189255%_))
                                          (_%__kont189254189255%_))))
                                  (_%__kont189254189255%_))
                              (_%__kont189254189255%_))
                          (_%__kont189254189255%_))))
                  (_%__kont189254189255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187463187503%_)))))))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187174%_ _%ctx187175%_ _%stx187176%_ _%args187177%_)
        (let ()
          (let ((_%self187180%_ _%self187174%_))
            (let ()
              (let* ((_%arguments-ok?187190%_
                      (let ((__method189471
                             (let ()
                               (declare (not safe))
                               (__method-ref
                                _%self187180%_
                                'check-arguments))))
                        (if __method189471
                            (__method189471
                             _%self187180%_
                             _%ctx187175%_
                             _%stx187176%_
                             _%args187177%_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _%self187180%_
                                     'check-arguments)))))
                     (_%g187192187202%_
                      (lambda (_%g187193187199%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187193187199%_))))
                     (_%g187191187266%_
                      (lambda (_%g187193187205%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187193187205%_))
                            (let ((_%e187197187207%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187193187205%_))))
                              (let ((_%hd187196187210%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187197187207%_)))
                                    (_%tl187195187212%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187197187207%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl187195187212%_))
                                    ((lambda (_%L187215%_)
                                       (let* ((_%klass187228%_
                                               (let ((__tmp189541
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187180%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx187176%_
                                                  __tmp189541)))
                                              (_%field187230%_
                                               (let ((__tmp189542
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187180%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass187228%_
                                                  __tmp189542)))
                                              (_%object187232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx187175%_
                                                  _%L187215%_))))
                                         (let ((_%klass187235%_
                                                _%klass187228%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187235%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ()
                                                 (let ((__tmp189543
                                                        (cons (if (or _%arguments-ok?187190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp189544
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187180%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp189544)))
                          '%#struct-unchecked-ref
                          '%#struct-direct-ref)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187180%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field187230%_ '()))
                                  (cons _%object187232%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189543
                                                    _%stx187176%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187235%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ()
                                                     (let ((__tmp189545
                                                            (cons (if (or _%arguments-ok?187190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp189546
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self187180%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp189546)))
                              '%#struct-unchecked-ref
                              '%#struct-ref)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self187180%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field187230%_ '()))
                                      (cons _%object187232%_ '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp189545 _%stx187176%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$e187254%_
                                                          (let ((__tmp189547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187180%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187235%_
                     __tmp189547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187254%_
                                                         ((lambda (_%klass187257%_)
                                                            (let ((__tmp189548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187190%_
                                         (let ((__tmp189549
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187180%_
                                                   '4
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (not __tmp189549)))
                                     '%#struct-unchecked-ref
                                     '%#struct-ref)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187180%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187230%_ '()))
                                             (cons _%object187232%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp189548 _%stx187176%_)))
                  _%$e187254%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187180%_ '4 '#f '#f))
                     (let ()
                       (let ((__tmp189550
                              (let ((_%$obj187263%_
                                     (let ((__tmp189551
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp189551))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj187263%_
                                                              '())
                                                        (cons _%object187232%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass187235%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj187263%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-ref
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187180%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187230%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187263%_
                                                                '()))
                                                    '()))))
                            (cons (if _%arguments-ok?187190%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-ref
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj187263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187180%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'class-slot-ref
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self187180%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj187263%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187180%_
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
                         (gxc#xform-wrap-source __tmp189550 _%stx187176%_)))
                     (let ()
                       (let ((__tmp189552
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons _%object187232%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187180%_
                             '3
                             '#f
                             '#f))
                          '()))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp189552
                          _%stx187176%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd187196187210%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g187192187202%_ _%g187193187205%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g187192187202%_ _%g187193187205%_))))))
                (declare (not safe))
                (_%g187191187266%_ _%args187177%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self186938%_ _%ctx186939%_ _%stx186940%_ _%args186941%_)
        (let ()
          (let ((_%self186944%_ _%self186938%_))
            (let ()
              (let* ((_%arguments-ok?186954%_
                      (let ((__method189472
                             (let ()
                               (declare (not safe))
                               (__method-ref
                                _%self186944%_
                                'check-arguments))))
                        (if __method189472
                            (__method189472
                             _%self186944%_
                             _%ctx186939%_
                             _%stx186940%_
                             _%args186941%_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _%self186944%_
                                     'check-arguments)))))
                     (_%g186956186970%_
                      (lambda (_%g186957186967%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g186957186967%_))))
                     (_%g186955187049%_
                      (lambda (_%g186957186973%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g186957186973%_))
                            (let ((_%e186962186975%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g186957186973%_))))
                              (let ((_%hd186961186978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186962186975%_)))
                                    (_%tl186960186980%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186962186975%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl186960186980%_))
                                    (let ((_%e186965186983%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl186960186980%_))))
                                      (let ((_%hd186964186986%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e186965186983%_)))
                                            (_%tl186963186988%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e186965186983%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl186963186988%_))
                                            ((lambda (_%L186991%_ _%L186992%_)
                                               (let* ((_%klass187008%_
                                                       (let ((__tmp189553
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self186944%_
                         '1
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class _%stx186940%_ __tmp189553)))
              (_%field187010%_
               (let ((__tmp189554
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self186944%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot->field-offset _%klass187008%_ __tmp189554)))
              (_%object187012%_
               (let ()
                 (declare (not safe))
                 (gxc#compile-e__1 _%ctx186939%_ _%L186992%_)))
              (_%value187014%_
               (let ()
                 (declare (not safe))
                 (gxc#compile-e__1 _%ctx186939%_ _%L186991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%klass187017%_
                                                        _%klass187008%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass187017%_
                                                          '8
                                                          '#f
                                                          '#f))
                                                       (let ()
                                                         (let ((__tmp189555
                                                                (cons (if (or _%arguments-ok?186954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (let ((__tmp189556
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self186944%_
                                                '4
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (not __tmp189556)))
                                  '%#struct-unchecked-set!
                                  '%#struct-direct-set!)
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self186944%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#quote
                                                (cons _%field187010%_ '()))
                                          (cons _%object187012%_
                                                (cons _%value187014%_
                                                      '())))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189555 _%stx186940%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass187017%_ '7 '#f '#f))
                   (let ()
                     (let ((__tmp189557
                            (cons (if (or _%arguments-ok?186954%_
                                          (let ((__tmp189558
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self186944%_
                                                    '4
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (not __tmp189558)))
                                      '%#struct-unchecked-set!
                                      '%#struct-set!)
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self186944%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187010%_ '()))
                                              (cons _%object187012%_
                                                    (cons _%value187014%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp189557 _%stx186940%_)))
                   (let ((_%$e187037%_
                          (let ((__tmp189559
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self186944%_
                                    '3
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (gxc#!class-slot-find-struct
                             _%klass187017%_
                             __tmp189559))))
                     (if _%$e187037%_
                         ((lambda (_%klass187040%_)
                            (let ((__tmp189560
                                   (cons (if (or _%arguments-ok?186954%_
                                                 (let ((__tmp189561
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self186944%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (not __tmp189561)))
                                             '%#struct-unchecked-set!
                                             '%#struct-set!)
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self186944%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons _%field187010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%object187012%_
                                                           (cons _%value187014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp189560
                               _%stx186940%_)))
                          _%$e187037%_)
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self186944%_
                                '4
                                '#f
                                '#f))
                             (let ()
                               (let ((__tmp189562
                                      (let ((_%$obj187046%_
                                             (let ((__tmp189563
                                                    (let ()
                                                      (declare (not safe))
                                                      (##gensym '__obj))))
                                               (declare (not safe))
                                               (make-symbol__0 __tmp189563))))
                                        (cons '%#let-values
                                              (cons (cons (cons (cons _%$obj187046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%object187012%_ '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#if
                                                                (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#quote
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%klass187017%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187046%_
                                                            '()))
                                                '())))
                              (cons (cons '%#struct-unchecked-set!
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self186944%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _%field187010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _%$obj187046%_ '()))
                    (cons _%value187014%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (if _%arguments-ok?186954%_
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'unchecked-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref (cons _%$obj187046%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self186944%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value187014%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self186944%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187046%_ '()))
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self186944%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons _%value187014%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp189562
                                  _%stx186940%_)))
                             (let ()
                               (let ((__tmp189564
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons _%object187012%_
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self186944%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value187014%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp189564
                                  _%stx186940%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd186964186986%_
                                             _%hd186961186978%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g186956186970%_
                                               _%g186957186973%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g186956186970%_ _%g186957186973%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g186956186970%_ _%g186957186973%_))))))
                (declare (not safe))
                (_%g186955187049%_ _%args186941%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self186753%_ _%ctx186754%_ _%stx186755%_ _%args186756%_)
        (let ()
          (let ((_%self186759%_ _%self186753%_))
            (let ()
              (let* ((_%self186768186778%_ _%self186759%_)
                     (_%E186770186782%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self186768186778%_
                                 '((!lambda _ _ arity dispatch inline))))
                        '#!void))
                     (_%K186771186792%_
                      (lambda (_%inline186785%_
                               _%dispatch186786%_
                               _%arity186787%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#!lambda-arity-match?
                               _%self186759%_
                               _%args186756%_))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal lambda application; arity mismatch"
                               _%stx186755%_
                               _%arity186787%_)))
                        (if _%inline186785%_
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose '"inline lambda"))
                              (let ((__tmp189565
                                     (let ((__tmp189566
                                            (_%inline186785%_ _%stx186755%_)))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp189566
                                        _%stx186755%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx186754%_ __tmp189565)))
                            (if (and _%dispatch186786%_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#symbol-in-local-scope?
                                        _%dispatch186786%_)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"dispatch lambda => "
                                     _%dispatch186786%_))
                                  (let ((__tmp189567
                                         (let ((__tmp189568
                                                (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%dispatch186786%_ '()))
                    _%args186756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189568
                                            _%stx186755%_))))
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%ctx186754%_
                                     __tmp189567)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!procedure::optimize-call
                                     _%self186759%_
                                     _%ctx186754%_
                                     _%stx186755%_
                                     _%args186756%_))))))))
                (if '#t
                    (let* ((_%e186772186795%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186768186778%_
                               '1
                               '#f
                               '#f)))
                           (_%e186773186798%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186768186778%_
                               '2
                               '#f
                               '#f)))
                           (_%e186774186801%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186768186778%_
                               '3
                               '#f
                               '#f)))
                           (_%arity186804%_ _%e186774186801%_)
                           (_%e186775186806%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186768186778%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch186809%_ _%e186775186806%_)
                           (_%e186776186811%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186768186778%_
                               '5
                               '#f
                               '#f)))
                           (_%inline186814%_ _%e186776186811%_))
                      (declare (not safe))
                      (_%K186771186792%_
                       _%inline186814%_
                       _%dispatch186809%_
                       _%arity186804%_))
                    (let () (declare (not safe)) (_%E186770186782%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self186605%_ _%ctx186606%_ _%stx186607%_ _%args186608%_)
        (let ()
          (let ((_%self186611%_ _%self186605%_))
            (let ()
              (let ((_%$e186625%_
                     (let ((__tmp189570
                            (lambda (_%g186620186622%_)
                              (let ()
                                (declare (not safe))
                                (gxc#!lambda-arity-match?
                                 _%g186620186622%_
                                 _%args186608%_))))
                           (__tmp189569
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186611%_
                               '3
                               '#f
                               '#f))))
                       (declare (not safe))
                       (__find __tmp189570 __tmp189569))))
                (if _%$e186625%_
                    ((lambda (_%clause186628%_)
                       (let ((__method189473
                              (let ()
                                (declare (not safe))
                                (__method-ref
                                 _%clause186628%_
                                 'optimize-call))))
                         (if __method189473
                             (__method189473
                              _%clause186628%_
                              _%ctx186606%_
                              _%stx186607%_
                              _%args186608%_)
                             (let ()
                               (declare (not safe))
                               (error '"Missing method"
                                      _%clause186628%_
                                      'optimize-call)))))
                     _%$e186625%_)
                    (let ()
                      (let ((__tmp189571
                             (map gxc#!lambda-arity
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self186611%_
                                     '3
                                     '#f
                                     '#f)))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal case-lambda application; arity mismatch"
                         _%stx186607%_
                         __tmp189571))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self186349%_ _%ctx186350%_ _%stx186351%_ _%args186352%_)
        (let ()
          (let ((_%self186355%_ _%self186349%_))
            (let ()
              (let* ((_%self186364186373%_ _%self186355%_)
                     (_%E186366186377%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self186364186373%_
                                 '((!kw-lambda _ _ table dispatch))))
                        '#!void))
                     (_%K186367186464%_
                      (lambda (_%dispatch186380%_ _%table186381%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%dispatch186380%_))
                            (let* ((_%g186382186391%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-lookup-type
                                       _%dispatch186380%_)))
                                   (_%else186384186399%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"unknown keyword dispatch lambda "
                                         _%dispatch186380%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#xform-call%
                                         _%ctx186350%_
                                         _%stx186351%_))))
                                   (_%K186386186448%_
                                    (lambda (_%main186402%_ _%keys186403%_)
                                      (let ((_g189572_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!kw-lambda-split-args
                                                _%stx186351%_
                                                _%args186352%_))))
                                        (begin
                                          (let ((_g189573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189572_)
                                                       (##vector-length
                                                        _g189572_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189573_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189573_)))
                                          (let ((_%pargs186405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g189572_ 0)))
                                                (_%kwargs186406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g189572_
                                                    1))))
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"dispatch kw-lambda => "
                                                 _%main186402%_))
                                              (if _%table186381%_
                                                  (let ((_%xargs186414%_
                                                         (map (lambda (_%key186408%_)
                                                                (let ((_%$e186410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 _%key186408%_ _%kwargs186406%_))))
                          (if _%$e186410%_
                              _%$e186410%_
                              (let () '(%#ref absent-value)))))
                      _%keys186403%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (for-each
                                                     (lambda (_%kw186416%_)
                                                       (if (memq (car _%kw186416%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%keys186403%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Illegal keyword lambda application; unexpected keyword"
                      _%stx186351%_
                      _%keys186403%_
                      _%kw186416%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs186406%_)
                                                    (let ((__tmp189574
                                                           (let ((__tmp189575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#call
                                (cons (cons '%#ref (cons _%main186402%_ '()))
                                      (cons (cons '%#quote (cons '#f '()))
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%pargs186405%_
                                               _%xargs186414%_)))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp189575 _%stx186351%_))))
              (declare (not safe))
              (gxc#compile-e__1 _%ctx186350%_ __tmp189574)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%kwt186418%_
                                                          (let ((__tmp189576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##gensym '__kwt))))
                    (declare (not safe))
                    (make-symbol__0 __tmp189576)))
                 (_%kwvars186422%_
                  (map (lambda (_%_186420%_)
                         (let ((__tmp189577
                                (let ()
                                  (declare (not safe))
                                  (##gensym '__kw))))
                           (declare (not safe))
                           (make-symbol__0 __tmp189577)))
                       _%kwargs186406%_))
                 (_%kwbind186427%_
                  (map (lambda (_%kw186424%_ _%kwvar186425%_)
                         (cons (cons _%kwvar186425%_ '())
                               (cons (cdr _%kw186424%_) '())))
                       _%kwargs186406%_
                       _%kwvars186422%_))
                 (_%kwset186432%_
                  (map (lambda (_%kw186429%_ _%kwvar186430%_)
                         (cons '%#call
                               (cons '(%#ref symbolic-table-set!)
                                     (cons (cons '%#ref
                                                 (cons _%kwt186418%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (car _%kw186429%_)
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%kwvar186430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _%kwargs186406%_
                       _%kwvars186422%_))
                 (_%xkwargs186437%_
                  (map (lambda (_%kw186434%_ _%kwvar186435%_)
                         (cons (car _%kw186434%_)
                               (cons '%#ref (cons _%kwvar186435%_ '()))))
                       _%kwargs186406%_
                       _%kwvars186422%_))
                 (_%xargs186445%_
                  (map (lambda (_%key186439%_)
                         (let ((_%$e186441%_
                                (let ()
                                  (declare (not safe))
                                  (agetq__0 _%key186439%_ _%xkwargs186437%_))))
                           (if _%$e186441%_
                               _%$e186441%_
                               (let () '(%#ref absent-value)))))
                       _%keys186403%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp189578
                                                           (let ((__tmp189579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#let-values
                                (cons _%kwbind186427%_
                                      (cons (cons '%#let-values
                                                  (cons (cons (cons (cons _%kwt186418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ((__tmp189580
                                         (cons '%#call
                                               (cons '(%#ref make-symbolic-table)
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (length _%kwargs186406%_) '()))
                   (cons '(%#quote 0) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp189580
                                     _%stx186351%_))
                                  '()))
                      '())
                (cons (cons '%#begin
                            (let ((__tmp189581
                                   (cons (let ((__tmp189582
                                                (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%main186402%_ '()))
                    (cons (cons '%#ref (cons _%kwt186418%_ '()))
                          (let ()
                            (declare (not safe))
                            (__foldr1
                             cons
                             _%pargs186405%_
                             _%xargs186445%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189582
                                            _%stx186351%_))
                                         '())))
                              (declare (not safe))
                              (__foldr1 cons __tmp189581 _%kwset186432%_)))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp189579 _%stx186351%_))))
              (declare (not safe))
              (gxc#compile-e__1 _%ctx186350%_ __tmp189578)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%g186382186391%_
                                     'gxc#!kw-lambda-primary::t))
                                  (let* ((_%e186387186451%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186382186391%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%e186388186454%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186382186391%_
                                             '2
                                             '#f
                                             '#f)))
                                         (_%keys186457%_ _%e186388186454%_)
                                         (_%e186389186459%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186382186391%_
                                             '3
                                             '#f
                                             '#f)))
                                         (_%main186462%_ _%e186389186459%_))
                                    (declare (not safe))
                                    (_%K186386186448%_
                                     _%main186462%_
                                     _%keys186457%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else186384186399%_))))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call%
                               _%ctx186350%_
                               _%stx186351%_))))))
                (if '#t
                    (let* ((_%e186368186467%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186364186373%_
                               '1
                               '#f
                               '#f)))
                           (_%e186369186470%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186364186373%_
                               '2
                               '#f
                               '#f)))
                           (_%e186370186473%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186364186373%_
                               '3
                               '#f
                               '#f)))
                           (_%table186476%_ _%e186370186473%_)
                           (_%e186371186478%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186364186373%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch186481%_ _%e186371186478%_))
                      (declare (not safe))
                      (_%K186367186464%_ _%dispatch186481%_ _%table186476%_))
                    (let () (declare (not safe)) (_%E186366186377%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx185962%_ _%args185963%_)
        (let _%lp185965%_ ((_%rest185967%_ _%args185963%_)
                           (_%pargs185968%_ '())
                           (_%kwargs185969%_ '()))
          (let* ((_%__stx189290189291%_ _%rest185967%_)
                 (_%g185975186027%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189290189291%_)))))
            (let ((_%__kont189292189293%_
                   (lambda (_%L186206%_ _%L186207%_)
                     (let ((__tmp189583 (cons _%L186207%_ _%pargs185968%_)))
                       (declare (not safe))
                       (_%lp185965%_
                        _%L186206%_
                        __tmp189583
                        _%kwargs185969%_))))
                  (_%__kont189294189295%_
                   (lambda (_%L186152%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186152%_ _%pargs185968%_))
                             (reverse _%kwargs185969%_))))
                  (_%__kont189296189297%_
                   (lambda (_%L186099%_ _%L186100%_ _%L186101%_)
                     (let ((_%kw186118%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186101%_))))
                       (if (assq _%kw186118%_ _%kwargs185969%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx185962%_
                              _%kw186118%_))
                           (let ((__tmp189584
                                  (cons (cons _%kw186118%_ _%L186100%_)
                                        _%kwargs185969%_)))
                             (declare (not safe))
                             (_%lp185965%_
                              _%L186099%_
                              _%pargs185968%_
                              __tmp189584))))))
                  (_%__kont189298189299%_
                   (lambda (_%L186047%_ _%L186048%_)
                     (let ((__tmp189585 (cons _%L186048%_ _%pargs185968%_)))
                       (declare (not safe))
                       (_%lp185965%_
                        _%L186047%_
                        __tmp189585
                        _%kwargs185969%_))))
                  (_%__kont189300189301%_
                   (lambda ()
                     (values (reverse _%pargs185968%_)
                             (reverse _%kwargs185969%_)))))
              (let ((_%__match189397189398%_
                     (lambda (_%e186008186067%_
                              _%hd186007186070%_
                              _%tl186006186072%_
                              _%e186011186075%_
                              _%hd186010186078%_
                              _%tl186009186080%_
                              _%e186014186083%_
                              _%hd186013186086%_
                              _%tl186012186088%_
                              _%e186017186091%_
                              _%hd186016186094%_
                              _%tl186015186096%_)
                       (let ((_%L186099%_ _%tl186015186096%_)
                             (_%L186100%_ _%hd186016186094%_)
                             (_%L186101%_ _%hd186013186086%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186101%_))
                             (_%__kont189296189297%_
                              _%L186099%_
                              _%L186100%_
                              _%L186101%_)
                             (_%__kont189298189299%_
                              _%tl186006186072%_
                              _%hd186007186070%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189290189291%_))
                    (let ((_%e185981186171%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189290189291%_))))
                      (let ((_%tl185979186176%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185981186171%_)))
                            (_%hd185980186174%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185981186171%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd185980186174%_))
                            (let ((_%e185984186179%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd185980186174%_))))
                              (let ((_%tl185982186184%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e185984186179%_)))
                                    (_%hd185983186182%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e185984186179%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd185983186182%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd185983186182%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl185982186184%_))
                                            (let ((_%e185987186187%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl185982186184%_))))
                                              (let ((_%tl185985186192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e185987186187%_)))
                                                    (_%hd185986186190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e185987186187%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd185986186190%_))
                                                    (let ((_%e185988186195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd185986186190%_))))
                                                      (if (equal? _%e185988186195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl185985186192%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl185979186176%_))
                          (let ((_%e185991186198%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl185979186176%_))))
                            (let ((_%tl185989186203%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e185991186198%_)))
                                  (_%hd185990186201%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e185991186198%_))))
                              (_%__kont189292189293%_
                               _%tl185989186203%_
                               _%hd185990186201%_)))
                          (_%__kont189298189299%_
                           _%tl185979186176%_
                           _%hd185980186174%_))
                      (_%__kont189298189299%_
                       _%tl185979186176%_
                       _%hd185980186174%_))
                  (if (equal? _%e185988186195%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl185985186192%_))
                          (_%__kont189294189295%_ _%tl185979186176%_)
                          (_%__kont189298189299%_
                           _%tl185979186176%_
                           _%hd185980186174%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl185985186192%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl185979186176%_))
                              (let ((_%e186017186091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl185979186176%_))))
                                (let ((_%tl186015186096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186017186091%_)))
                                      (_%hd186016186094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186017186091%_))))
                                  (_%__match189397189398%_
                                   _%e185981186171%_
                                   _%hd185980186174%_
                                   _%tl185979186176%_
                                   _%e185984186179%_
                                   _%hd185983186182%_
                                   _%tl185982186184%_
                                   _%e185987186187%_
                                   _%hd185986186190%_
                                   _%tl185985186192%_
                                   _%e186017186091%_
                                   _%hd186016186094%_
                                   _%tl186015186096%_)))
                              (_%__kont189298189299%_
                               _%tl185979186176%_
                               _%hd185980186174%_))
                          (_%__kont189298189299%_
                           _%tl185979186176%_
                           _%hd185980186174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185985186192%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl185979186176%_))
                                                            (let ((_%e186017186091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185979186176%_))))
                      (let ((_%tl186015186096%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186017186091%_)))
                            (_%hd186016186094%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186017186091%_))))
                        (_%__match189397189398%_
                         _%e185981186171%_
                         _%hd185980186174%_
                         _%tl185979186176%_
                         _%e185984186179%_
                         _%hd185983186182%_
                         _%tl185982186184%_
                         _%e185987186187%_
                         _%hd185986186190%_
                         _%tl185985186192%_
                         _%e186017186091%_
                         _%hd186016186094%_
                         _%tl186015186096%_)))
                    (_%__kont189298189299%_
                     _%tl185979186176%_
                     _%hd185980186174%_))
                (_%__kont189298189299%_
                 _%tl185979186176%_
                 _%hd185980186174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189298189299%_
                                             _%tl185979186176%_
                                             _%hd185980186174%_))
                                        (_%__kont189298189299%_
                                         _%tl185979186176%_
                                         _%hd185980186174%_))
                                    (_%__kont189298189299%_
                                     _%tl185979186176%_
                                     _%hd185980186174%_))))
                            (_%__kont189298189299%_
                             _%tl185979186176%_
                             _%hd185980186174%_))))
                    (_%__kont189300189301%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self185946%_ _%ctx185947%_ _%stx185948%_ _%args185949%_)
        (let ()
          (let ((_%self185952%_ _%self185946%_))
            (let ()
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx185947%_ _%stx185948%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self185634%_ _%stx185635%_)
        (let* ((_%__stx189406189407%_ _%stx185635%_)
               (_%g185638185678%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189406189407%_)))))
          (let ((_%__kont189408189409%_
                 (lambda (_%L185784%_ _%L185785%_)
                   (let ((_%$e185812%_
                          (member 'return:
                                  (let ((__tmp189586
                                         (lambda (_%g185804185807%_
                                                  _%g185805185809%_)
                                           (cons _%g185804185807%_
                                                 _%g185805185809%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp189586 '() _%L185785%_))
                                  gx#stx-eq?)))
                     (if _%$e185812%_
                         ((lambda (_%tail185815%_)
                            (let ((_%type185817%_
                                   (let ((__tmp189587
                                          (let ((__tmp189588
                                                 (cadr _%tail185815%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp189588))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx185635%_
                                      __tmp189587))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx185635%_
                                 _%L185784%_
                                 _%type185817%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self185634%_
                                 _%L185784%_))))
                          _%$e185812%_)
                         (let ()
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self185634%_
                              _%L185784%_)))))))
                (_%__kont189412189413%_
                 (lambda (_%L185707%_ _%L185708%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185634%_ _%L185707%_)))))
            (let ((_%__match189443189444%_
                   (lambda (_%e185644185728%_
                            _%hd185643185731%_
                            _%tl185642185733%_
                            _%e185647185736%_
                            _%hd185646185739%_
                            _%tl185645185741%_
                            _%e185650185744%_
                            _%hd185649185747%_
                            _%tl185648185749%_
                            _%__splice189410189411%_
                            _%target185651185752%_
                            _%tl185653185754%_)
                     (letrec ((_%loop185654185757%_
                               (lambda (_%hd185652185760%_
                                        _%signature185658185762%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd185652185760%_))
                                     (let ((_%e185655185765%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd185652185760%_))))
                                       (let ((_%lp-tl185657185770%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e185655185765%_)))
                                             (_%lp-hd185656185768%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e185655185765%_))))
                                         (let ((__tmp189589
                                                (cons _%lp-hd185656185768%_
                                                      _%signature185658185762%_)))
                                           (declare (not safe))
                                           (_%loop185654185757%_
                                            _%lp-tl185657185770%_
                                            __tmp189589))))
                                     (let ((_%signature185659185773%_
                                            (reverse _%signature185658185762%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl185645185741%_))
                                           (let ((_%e185662185776%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl185645185741%_))))
                                             (let ((_%tl185660185781%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e185662185776%_)))
                                                   (_%hd185661185779%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e185662185776%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl185660185781%_))
                                                   (_%__kont189408189409%_
                                                    _%hd185661185779%_
                                                    _%signature185659185773%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g185638185678%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g185638185678%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop185654185757%_ _%target185651185752%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189406189407%_))
                  (let ((_%e185644185728%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189406189407%_))))
                    (let ((_%tl185642185733%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e185644185728%_)))
                          (_%hd185643185731%_
                           (let ()
                             (declare (not safe))
                             (##car _%e185644185728%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl185642185733%_))
                          (let ((_%e185647185736%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl185642185733%_))))
                            (let ((_%tl185645185741%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e185647185736%_)))
                                  (_%hd185646185739%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e185647185736%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd185646185739%_))
                                  (let ((_%e185650185744%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd185646185739%_))))
                                    (let ((_%tl185648185749%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e185650185744%_)))
                                          (_%hd185649185747%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e185650185744%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd185649185747%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd185649185747%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl185648185749%_))
                                                  (let ((_%__splice189410189411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl185648185749%_
                                                            '0))))
                                                    (let ((_%tl185653185754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189410189411%_
                                                              '1)))
                                                          (_%target185651185752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189410189411%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185653185754%_))
                                                          (_%__match189443189444%_
                                                           _%e185644185728%_
                                                           _%hd185643185731%_
                                                           _%tl185642185733%_
                                                           _%e185647185736%_
                                                           _%hd185646185739%_
                                                           _%tl185645185741%_
                                                           _%e185650185744%_
                                                           _%hd185649185747%_
                                                           _%tl185648185749%_
                                                           _%__splice189410189411%_
                                                           _%target185651185752%_
                                                           _%tl185653185754%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl185645185741%_))
                      (let ((_%e185673185699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl185645185741%_))))
                        (let ((_%tl185671185704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185673185699%_)))
                              (_%hd185672185702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185673185699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl185671185704%_))
                              (_%__kont189412189413%_
                               _%hd185672185702%_
                               _%hd185646185739%_)
                              (let ()
                                (declare (not safe))
                                (_%g185638185678%_)))))
                      (let () (declare (not safe)) (_%g185638185678%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl185645185741%_))
                                                      (let ((_%e185673185699%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl185645185741%_))))
                (let ((_%tl185671185704%_
                       (let () (declare (not safe)) (##cdr _%e185673185699%_)))
                      (_%hd185672185702%_
                       (let ()
                         (declare (not safe))
                         (##car _%e185673185699%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl185671185704%_))
                      (_%__kont189412189413%_
                       _%hd185672185702%_
                       _%hd185646185739%_)
                      (let () (declare (not safe)) (_%g185638185678%_)))))
              (let () (declare (not safe)) (_%g185638185678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl185645185741%_))
                                                  (let ((_%e185673185699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl185645185741%_))))
                                                    (let ((_%tl185671185704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e185673185699%_)))
                                                          (_%hd185672185702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e185673185699%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185671185704%_))
                                                          (_%__kont189412189413%_
                                                           _%hd185672185702%_
                                                           _%hd185646185739%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g185638185678%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g185638185678%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185645185741%_))
                                              (let ((_%e185673185699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185645185741%_))))
                                                (let ((_%tl185671185704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185673185699%_)))
                                                      (_%hd185672185702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185673185699%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185671185704%_))
                                                      (_%__kont189412189413%_
                                                       _%hd185672185702%_
                                                       _%hd185646185739%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g185638185678%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g185638185678%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185645185741%_))
                                      (let ((_%e185673185699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185645185741%_))))
                                        (let ((_%tl185671185704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185673185699%_)))
                                              (_%hd185672185702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185673185699%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl185671185704%_))
                                              (_%__kont189412189413%_
                                               _%hd185672185702%_
                                               _%hd185646185739%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g185638185678%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g185638185678%_))))))
                          (let () (declare (not safe)) (_%g185638185678%_)))))
                  (let () (declare (not safe)) (_%g185638185678%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx185612%_ _%expr185613%_ _%type185614%_)
        (let ((_%$e185616%_
               (let () (declare (not safe)) (not _%type185614%_))))
          (if _%$e185616%_
              _%$e185616%_
              (let ((_%$e185619%_
                     (eq? (##structure-ref _%type185614%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e185619%_
                    _%$e185619%_
                    (let ()
                      (let ((_%expr-type185623%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-basic-expression-type
                                _%expr185613%_))))
                        (if (let ()
                              (declare (not safe))
                              (not _%expr-type185623%_))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; no type information"
                                 _%stx185612%_
                                 _%type185614%_)))
                            (if (eq? 't
                                     (##structure-ref
                                      _%expr-type185623%_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"cannot verify procedure return type; unspecific type"
                                     _%stx185612%_
                                     _%type185614%_
                                     _%expr-type185623%_)))
                                (let ((_%$e185627%_
                                       (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%expr-type185623%_
                                          'gxc#!abort::t))))
                                  (if _%$e185627%_
                                      _%$e185627%_
                                      (let ((_%$e185630%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!type-subtype?
                                                _%expr-type185623%_
                                                _%type185614%_))))
                                        (if _%$e185630%_
                                            _%$e185630%_
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"procedure return type does not match signature"
                                                 _%stx185612%_
                                                 _%type185614%_
                                                 _%expr-type185623%_)))))))))))))))))))
