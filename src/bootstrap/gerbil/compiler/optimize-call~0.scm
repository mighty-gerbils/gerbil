(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712121904)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp189581 (list gxc#::basic-xform::t))
            (__tmp189580 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp189581
         '()
         __tmp189580
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189130%_
        (apply make-instance gxc#::optimize-call::t _%$args189130%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp189582
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
        (__make-promise __tmp189582)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189122%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189125%_
                (let ((__obj189572
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj189572))
               (__tmp189583
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189125%_ _%stx189122%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189583
           gxc#current-compile-method
           _%self189125%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp189585 (list gxc#::void::t))
            (__tmp189584 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp189585
         '()
         __tmp189584
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189119%_
        (apply make-instance gxc#::check-return-type::t _%$args189119%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp189586
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
        (__make-promise __tmp189586)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189111%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189114%_
                (let ((__obj189574
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj189574))
               (__tmp189587
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189114%_ _%stx189111%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189587
           gxc#current-compile-method
           _%self189114%_))))
    (define gxc#optimize-call%
      (lambda (_%self188727%_ _%stx188728%_)
        (let* ((_%__stx189185189186%_ _%stx188728%_)
               (_%g188731188777%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189185189186%_)))))
          (let ((_%__kont189187189188%_
                 (lambda (_%L188914%_ _%L188915%_)
                   (let* ((_%rator-id188935%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L188915%_)))
                          (_%rator-type188937%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id188935%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type188937%_))
                             (eq? (##structure-ref
                                   _%rator-type188937%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%self188727%_ _%stx188728%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type188937%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp189588
                                      (##structure-ref
                                       _%rator-type188937%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id188935%_
                                  '" => "
                                  _%rator-type188937%_
                                  '" "
                                  __tmp189588))
                               (let* ((_%optimized188952%_
                                       (let ((__method189575
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type188937%_
                                                 'optimize-call))))
                                         (if __method189575
                                             (__method189575
                                              _%rator-type188937%_
                                              _%self188727%_
                                              _%stx188728%_
                                              (let ((__tmp189589
                                                     (lambda (_%g188944188947%_
                                                              _%g188945188949%_)
                                                       (cons _%g188944188947%_
                                                             _%g188945188949%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp189589
                                                 '()
                                                 _%L188914%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type188937%_
                                                      'optimize-call)))))
                                      (_%__stx189133189134%_
                                       _%optimized188952%_)
                                      (_%g188955188984%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189133189134%_)))))
                                 (let ((_%__kont189135189136%_
                                        (lambda (_%L189052%_ _%L189053%_)
                                          (let ((_%optimized-rator-id189080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L189053%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type188937%_))
                                                         (eq? _%optimized-rator-id189080%_
                                                              _%rator-id188935%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189080%_
                                                              gxc#checked-primitives)))
                                                _%optimized188952%_
                                                (let ((__tmp189590
                                                       (let ((__tmp189591
                                                              (let ((__tmp189594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L189053%_ '())))
                            (__tmp189592
                             (let ((__tmp189593
                                    (lambda (_%g189084189087%_
                                             _%g189085189089%_)
                                      (cons _%g189084189087%_
                                            _%g189085189089%_))))
                               (declare (not safe))
                               (__foldr1 __tmp189593 '() _%L189052%_))))
                        (declare (not safe))
                        (cons __tmp189594 __tmp189592))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp189591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp189590
                                                   _%stx188728%_))))))
                                       (_%__kont189139189140%_
                                        (lambda () _%optimized188952%_)))
                                   (let ((_%__match189182189183%_
                                          (lambda (_%e188961188996%_
                                                   _%hd188960188999%_
                                                   _%tl188959189001%_
                                                   _%e188964189004%_
                                                   _%hd188963189007%_
                                                   _%tl188962189009%_
                                                   _%e188967189012%_
                                                   _%hd188966189015%_
                                                   _%tl188965189017%_
                                                   _%e188970189020%_
                                                   _%hd188969189023%_
                                                   _%tl188968189025%_
                                                   _%__splice189137189138%_
                                                   _%target188971189028%_
                                                   _%tl188973189030%_)
                                            (letrec ((_%loop188974189033%_
                                                      (lambda (_%hd188972189036%_
                                                               _%arg188978189038%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd188972189036%_))
                                                            (let ((_%e188975189041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd188972189036%_))))
                      (let ((_%lp-tl188977189046%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188975189041%_)))
                            (_%lp-hd188976189044%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188975189041%_))))
                        (let ((__tmp189595
                               (cons _%lp-hd188976189044%_
                                     _%arg188978189038%_)))
                          (declare (not safe))
                          (_%loop188974189033%_
                           _%lp-tl188977189046%_
                           __tmp189595))))
                    (let ((_%arg188979189049%_ (reverse _%arg188978189038%_)))
                      (_%__kont189135189136%_
                       _%arg188979189049%_
                       _%hd188969189023%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop188974189033%_
                                                 _%target188971189028%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189133189134%_))
                                         (let ((_%e188961188996%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189133189134%_))))
                                           (let ((_%tl188959189001%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e188961188996%_)))
                                                 (_%hd188960188999%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e188961188996%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd188960188999%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd188960188999%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl188959189001%_))
                                                         (let ((_%e188964189004%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl188959189001%_))))
                   (let ((_%tl188962189009%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e188964189004%_)))
                         (_%hd188963189007%_
                          (let ()
                            (declare (not safe))
                            (##car _%e188964189004%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd188963189007%_))
                         (let ((_%e188967189012%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd188963189007%_))))
                           (let ((_%tl188965189017%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e188967189012%_)))
                                 (_%hd188966189015%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e188967189012%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd188966189015%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd188966189015%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl188965189017%_))
                                         (let ((_%e188970189020%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl188965189017%_))))
                                           (let ((_%tl188968189025%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e188970189020%_)))
                                                 (_%hd188969189023%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e188970189020%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl188968189025%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl188962189009%_))
                                                     (let ((_%__splice189137189138%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl188962189009%_
                                                               '0))))
                                                       (let ((_%tl188973189030%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189137189138%_ '1)))
                     (_%target188971189028%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189137189138%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl188973189030%_))
                     (_%__match189182189183%_
                      _%e188961188996%_
                      _%hd188960188999%_
                      _%tl188959189001%_
                      _%e188964189004%_
                      _%hd188963189007%_
                      _%tl188962189009%_
                      _%e188967189012%_
                      _%hd188966189015%_
                      _%tl188965189017%_
                      _%e188970189020%_
                      _%hd188969189023%_
                      _%tl188968189025%_
                      _%__splice189137189138%_
                      _%target188971189028%_
                      _%tl188973189030%_)
                     (_%__kont189139189140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189139189140%_))
                                                 (_%__kont189139189140%_))))
                                         (_%__kont189139189140%_))
                                     (_%__kont189139189140%_))
                                 (_%__kont189139189140%_))))
                         (_%__kont189139189140%_))))
                 (_%__kont189139189140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189139189140%_))
                                                 (_%__kont189139189140%_))))
                                         (_%__kont189139189140%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type188937%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type188937%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ()
                                   (let ((__tmp189596
                                          (let ((__tmp189597
                                                 (let ((__tmp189600
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%L188915%_ '())))
               (__tmp189598
                (map (lambda (_%g189095189097%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self188727%_ _%g189095189097%_)))
                     (let ((__tmp189599
                            (lambda (_%g189099189102%_ _%g189100189104%_)
                              (cons _%g189099189102%_ _%g189100189104%_))))
                       (declare (not safe))
                       (__foldr1 __tmp189599 '() _%L188914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp189600
                                                         __tmp189598))))
                                            (declare (not safe))
                                            (cons '%#call-unchecked
                                                  __tmp189597))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp189596
                                      _%stx188728%_)))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#raise-compile-error
                                      '"illegal application; not a procedure"
                                      _%stx188728%_
                                      _%rator-type188937%_)))))))))
                (_%__kont189191189192%_
                 (lambda (_%L188822%_ _%L188823%_)
                   (let ((_%rator-type188840%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L188823%_))))
                     (if (and _%rator-type188840%_
                              (eq? (##structure-ref
                                    _%rator-type188840%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp189601
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type188840%_))))
                                (declare (not safe))
                                (not __tmp189601)))
                         (let ((__tmp189602
                                (let ((__tmp189603
                                       (let ((__tmp189606
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self188727%_
                                                 _%L188823%_)))
                                             (__tmp189604
                                              (map (lambda (_%g188841188843%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self188727%_
                                                        _%g188841188843%_)))
                                                   (let ((__tmp189605
                                                          (lambda (_%g188845188848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g188846188850%_)
                    (cons _%g188845188848%_ _%g188846188850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp189605
                                                      '()
                                                      _%L188822%_)))))
                                         (declare (not safe))
                                         (cons __tmp189606 __tmp189604))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp189603))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp189602 _%stx188728%_))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self188727%_ _%stx188728%_)))))))
            (let* ((_%__match189252189253%_
                    (lambda (_%e188760188782%_
                             _%hd188759188785%_
                             _%tl188758188787%_
                             _%e188763188790%_
                             _%hd188762188793%_
                             _%tl188761188795%_
                             _%__splice189193189194%_
                             _%target188764188798%_
                             _%tl188766188800%_)
                      (letrec ((_%loop188767188803%_
                                (lambda (_%hd188765188806%_
                                         _%rand188771188808%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188765188806%_))
                                      (let ((_%e188768188811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188765188806%_))))
                                        (let ((_%lp-tl188770188816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188768188811%_)))
                                              (_%lp-hd188769188814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188768188811%_))))
                                          (let ((__tmp189607
                                                 (cons _%lp-hd188769188814%_
                                                       _%rand188771188808%_)))
                                            (declare (not safe))
                                            (_%loop188767188803%_
                                             _%lp-tl188770188816%_
                                             __tmp189607))))
                                      (let ((_%rand188772188819%_
                                             (reverse _%rand188771188808%_)))
                                        (_%__kont189191189192%_
                                         _%rand188772188819%_
                                         _%hd188762188793%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188767188803%_ _%target188764188798%_ '())))))
                   (_%__match189232189233%_
                    (lambda (_%e188737188858%_
                             _%hd188736188861%_
                             _%tl188735188863%_
                             _%e188740188866%_
                             _%hd188739188869%_
                             _%tl188738188871%_
                             _%e188743188874%_
                             _%hd188742188877%_
                             _%tl188741188879%_
                             _%e188746188882%_
                             _%hd188745188885%_
                             _%tl188744188887%_
                             _%__splice189189189190%_
                             _%target188747188890%_
                             _%tl188749188892%_)
                      (letrec ((_%loop188750188895%_
                                (lambda (_%hd188748188898%_
                                         _%rand188754188900%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188748188898%_))
                                      (let ((_%e188751188903%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188748188898%_))))
                                        (let ((_%lp-tl188753188908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188751188903%_)))
                                              (_%lp-hd188752188906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188751188903%_))))
                                          (let ((__tmp189608
                                                 (cons _%lp-hd188752188906%_
                                                       _%rand188754188900%_)))
                                            (declare (not safe))
                                            (_%loop188750188895%_
                                             _%lp-tl188753188908%_
                                             __tmp189608))))
                                      (let ((_%rand188755188911%_
                                             (reverse _%rand188754188900%_)))
                                        (_%__kont189187189188%_
                                         _%rand188755188911%_
                                         _%hd188745188885%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188750188895%_
                           _%target188747188890%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189185189186%_))
                  (let ((_%e188737188858%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189185189186%_))))
                    (let ((_%tl188735188863%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188737188858%_)))
                          (_%hd188736188861%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188737188858%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188735188863%_))
                          (let ((_%e188740188866%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188735188863%_))))
                            (let ((_%tl188738188871%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188740188866%_)))
                                  (_%hd188739188869%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188740188866%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd188739188869%_))
                                  (let ((_%e188743188874%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd188739188869%_))))
                                    (let ((_%tl188741188879%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188743188874%_)))
                                          (_%hd188742188877%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188743188874%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd188742188877%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd188742188877%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl188741188879%_))
                                                  (let ((_%e188746188882%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl188741188879%_))))
                                                    (let ((_%tl188744188887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188746188882%_)))
                                                          (_%hd188745188885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188746188882%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188744188887%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl188738188871%_))
                      (let ((_%__splice189189189190%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188738188871%_
                                '0))))
                        (let ((_%tl188749188892%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189189189190%_ '1)))
                              (_%target188747188890%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189189189190%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188749188892%_))
                              (_%__match189232189233%_
                               _%e188737188858%_
                               _%hd188736188861%_
                               _%tl188735188863%_
                               _%e188740188866%_
                               _%hd188739188869%_
                               _%tl188738188871%_
                               _%e188743188874%_
                               _%hd188742188877%_
                               _%tl188741188879%_
                               _%e188746188882%_
                               _%hd188745188885%_
                               _%tl188744188887%_
                               _%__splice189189189190%_
                               _%target188747188890%_
                               _%tl188749188892%_)
                              (let ()
                                (declare (not safe))
                                (_%g188731188777%_)))))
                      (let () (declare (not safe)) (_%g188731188777%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl188738188871%_))
                      (let ((_%__splice189193189194%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188738188871%_
                                '0))))
                        (let ((_%tl188766188800%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189193189194%_ '1)))
                              (_%target188764188798%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189193189194%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188766188800%_))
                              (_%__match189252189253%_
                               _%e188737188858%_
                               _%hd188736188861%_
                               _%tl188735188863%_
                               _%e188740188866%_
                               _%hd188739188869%_
                               _%tl188738188871%_
                               _%__splice189193189194%_
                               _%target188764188798%_
                               _%tl188766188800%_)
                              (let ()
                                (declare (not safe))
                                (_%g188731188777%_)))))
                      (let () (declare (not safe)) (_%g188731188777%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl188738188871%_))
                                                      (let ((_%__splice189193189194%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl188738188871%_ '0))))
                (let ((_%tl188766188800%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189193189194%_ '1)))
                      (_%target188764188798%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189193189194%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188766188800%_))
                      (_%__match189252189253%_
                       _%e188737188858%_
                       _%hd188736188861%_
                       _%tl188735188863%_
                       _%e188740188866%_
                       _%hd188739188869%_
                       _%tl188738188871%_
                       _%__splice189193189194%_
                       _%target188764188798%_
                       _%tl188766188800%_)
                      (let () (declare (not safe)) (_%g188731188777%_)))))
              (let () (declare (not safe)) (_%g188731188777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl188738188871%_))
                                                  (let ((_%__splice189193189194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl188738188871%_
                                                            '0))))
                                                    (let ((_%tl188766188800%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189193189194%_
                                                              '1)))
                                                          (_%target188764188798%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189193189194%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188766188800%_))
                                                          (_%__match189252189253%_
                                                           _%e188737188858%_
                                                           _%hd188736188861%_
                                                           _%tl188735188863%_
                                                           _%e188740188866%_
                                                           _%hd188739188869%_
                                                           _%tl188738188871%_
                                                           _%__splice189193189194%_
                                                           _%target188764188798%_
                                                           _%tl188766188800%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g188731188777%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g188731188777%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl188738188871%_))
                                              (let ((_%__splice189193189194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl188738188871%_
                                                        '0))))
                                                (let ((_%tl188766188800%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189193189194%_
                                                          '1)))
                                                      (_%target188764188798%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189193189194%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl188766188800%_))
                                                      (_%__match189252189253%_
                                                       _%e188737188858%_
                                                       _%hd188736188861%_
                                                       _%tl188735188863%_
                                                       _%e188740188866%_
                                                       _%hd188739188869%_
                                                       _%tl188738188871%_
                                                       _%__splice189193189194%_
                                                       _%target188764188798%_
                                                       _%tl188766188800%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g188731188777%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g188731188777%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188738188871%_))
                                      (let ((_%__splice189193189194%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188738188871%_
                                                '0))))
                                        (let ((_%tl188766188800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189193189194%_
                                                  '1)))
                                              (_%target188764188798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189193189194%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188766188800%_))
                                              (_%__match189252189253%_
                                               _%e188737188858%_
                                               _%hd188736188861%_
                                               _%tl188735188863%_
                                               _%e188740188866%_
                                               _%hd188739188869%_
                                               _%tl188738188871%_
                                               _%__splice189193189194%_
                                               _%target188764188798%_
                                               _%tl188766188800%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g188731188777%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188731188777%_))))))
                          (let () (declare (not safe)) (_%g188731188777%_)))))
                  (let () (declare (not safe)) (_%g188731188777%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self188689%_ _%ctx188690%_ _%stx188691%_ _%args188692%_)
        (let ()
          (let ((_%self188695%_ _%self188689%_))
            (let ()
              (if (let ((__method189576
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188695%_ 'check-arguments))))
                    (if __method189576
                        (__method189576
                         _%self188695%_
                         _%ctx188690%_
                         _%stx188691%_
                         _%args188692%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188695%_
                                 'check-arguments))))
                  (let* ((_%signature188705%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188695%_
                             '2
                             '#f
                             '#f)))
                         (_%signature188707%_ _%signature188705%_))
                    (let ((_%$e188717%_
                           (if _%signature188707%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%signature188707%_
                                  '4
                                  '#f
                                  '#f))
                               '#f)))
                      (if _%$e188717%_
                          ((lambda (_%unchecked188720%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%unchecked188720%_))
                                 (let ((__tmp189609
                                        (let ((__tmp189610
                                               (let ((__tmp189612
                                                      (cons '%#ref
                                                            (cons _%unchecked188720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189611
                                                      (map (lambda (_%g188721188723%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%ctx188690%_ _%g188721188723%_)))
                   _%args188692%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp189612
                                                       __tmp189611))))
                                          (declare (not safe))
                                          (cons '%#call __tmp189610))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp189609
                                    _%stx188691%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#xform-call%
                                    _%ctx188690%_
                                    _%stx188691%_))))
                           _%$e188717%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call%
                               _%ctx188690%_
                               _%stx188691%_))))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx188690%_ _%stx188691%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188440%_ _%ctx188441%_ _%stx188442%_ _%args188443%_)
        (let ()
          (let ((_%self188446%_ _%self188440%_))
            (let ()
              (let ((_%signature188455188457%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self188446%_ '2 '#f '#f))))
                (if _%signature188455188457%_
                    (let* ((_%signature188460%_ _%signature188455188457%_)
                           (_%argument-types188461188463%_
                            (##direct-structure-ref
                             _%signature188460%_
                             '3
                             gxc#!signature::t
                             '#f)))
                      (if _%argument-types188461188463%_
                          (let ((_%argument-types188466%_
                                 _%argument-types188461188463%_))
                            (let ((_%argument-types188471%_
                                   (let ((__tmp189613
                                          (lambda (_%t188469%_)
                                            (if _%t188469%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   _%stx188442%_
                                                   _%t188469%_))
                                                '#f))))
                                     (declare (not safe))
                                     (gxc#map*
                                      __tmp189613
                                      _%argument-types188466%_))))
                              (let _%loop188473%_ ((_%rest-args188475%_
                                                    _%args188443%_)
                                                   (_%rest-types188476%_
                                                    _%argument-types188471%_)
                                                   (_%result188477%_ '#t))
                                (let* ((_%rest-args188478188486%_
                                        _%rest-args188475%_)
                                       (_%else188480188494%_
                                        (lambda () _%result188477%_))
                                       (_%K188482188555%_
                                        (lambda (_%rest-args188497%_
                                                 _%arg188498%_)
                                          (let* ((_%rest-types188499188510%_
                                                  _%rest-types188476%_)
                                                 (_%E188503188514%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%rest-types188499188510%_
                                                             '([type
                                                                .
                                                                rest-types])
                                                             '([])
                                                             '(tail-type)))
                                                    '#!void)))
                                            (let ((_%K188506188543%_
                                                   (lambda (_%rest-types188540%_
                                                            _%type188541%_)
                                                     (let ((__tmp189614
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#check-expression-type!
                           _%stx188442%_
                           _%arg188498%_
                           _%type188541%_))
                        _%result188477%_
                        '#f)))
               (declare (not safe))
               (_%loop188473%_
                _%rest-args188497%_
                _%rest-types188540%_
                __tmp189614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%K188505188534%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"signature arity mismatch"
                                                        _%stx188442%_
                                                        _%argument-types188471%_))))
                                                  (_%K188504188524%_
                                                   (lambda (_%tail-type188518%_)
                                                     (if (let ((__tmp189615
                                                                (lambda (_%g188519188521%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#check-expression-type!
                             _%stx188442%_
                             _%g188519188521%_
                             _%tail-type188518%_)))))
                   (declare (not safe))
                   (__andmap1 __tmp189615 _%rest-args188497%_))
                 _%result188477%_
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%try-match188501188537%_
                                                     (lambda ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##null? _%rest-types188499188510%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%K188505188534%_))
                                                           (let ((_%tail-type188527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%rest-types188499188510%_))
                     (declare (not safe))
                     (_%K188504188524%_ _%tail-type188527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%rest-types188499188510%_))
                                                    (let ((_%tl188508188548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%rest-types188499188510%_)))
                                                          (_%hd188507188546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%rest-types188499188510%_))))
                                                      (let ((_%type188551%_
                                                             _%hd188507188546%_)
                                                            (_%rest-types188553%_
                                                             _%tl188508188548%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%K188506188543%_
                                                           _%rest-types188553%_
                                                           _%type188551%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match188501188537%_)))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%rest-args188478188486%_))
                                      (let ((_%hd188483188558%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%rest-args188478188486%_)))
                                            (_%tl188484188560%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest-args188478188486%_))))
                                        (let* ((_%arg188563%_
                                                _%hd188483188558%_)
                                               (_%rest-args188565%_
                                                _%tl188484188560%_))
                                          (declare (not safe))
                                          (_%K188482188555%_
                                           _%rest-args188565%_
                                           _%arg188563%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else188480188494%_)))))))
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
      (lambda (_%self188251%_ _%ctx188252%_ _%stx188253%_ _%args188254%_)
        (let ()
          (let ((_%self188257%_ _%self188251%_))
            (let ()
              (let* ((_%g188267188277%_
                      (lambda (_%g188268188274%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g188268188274%_))))
                     (_%g188266188315%_
                      (lambda (_%g188268188280%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g188268188280%_))
                            (let ((_%e188272188282%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g188268188280%_))))
                              (let ((_%hd188271188285%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188272188282%_)))
                                    (_%tl188270188287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188272188282%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl188270188287%_))
                                    ((lambda (_%L188290%_)
                                       (let* ((_%klass188302%_
                                               (let ((__tmp189616
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188257%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx188253%_
                                                  __tmp189616)))
                                              (_%object188304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx188252%_
                                                  _%L188290%_)))
                                              (_%instance?188309%_
                                               (let ((_%$e188306%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-type?
                                                         _%object188304%_
                                                         _%klass188302%_))))
                                                 (if _%$e188306%_
                                                     _%$e188306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#expression-type?
                                                        _%L188290%_
                                                        _%klass188302%_))))))
                                         (if _%instance?188309%_
                                             (let ((__tmp189617
                                                    (if (or (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#expression-no-side-effects?
                                                               _%object188304%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#expression-no-side-effects?
                                                               _%L188290%_)))
                                                        (cons '%#quote
                                                              (cons '#t '()))
                                                        (cons '%#begin
                                                              (cons _%object188304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '#t '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp189617
                                                _%stx188253%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#xform-call%
                                                _%ctx188252%_
                                                _%stx188253%_)))))
                                     _%hd188271188285%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g188267188277%_ _%g188268188280%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g188267188277%_ _%g188268188280%_))))))
                (declare (not safe))
                (_%g188266188315%_ _%args188254%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188047%_ _%ctx188048%_ _%stx188049%_ _%args188050%_)
        (let ()
          (let ((_%self188053%_ _%self188047%_))
            (let ()
              (let* ((_%g188063188073%_
                      (lambda (_%g188064188070%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g188064188070%_))))
                     (_%g188062188126%_
                      (lambda (_%g188064188076%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g188064188076%_))
                            (let ((_%e188068188078%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g188064188076%_))))
                              (let ((_%hd188067188081%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188068188078%_)))
                                    (_%tl188066188083%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188068188078%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl188066188083%_))
                                    ((lambda (_%L188086%_)
                                       (let* ((_%klass188098%_
                                               (let ((__tmp189618
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188053%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx188049%_
                                                  __tmp189618)))
                                              (_%object188100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx188048%_
                                                  _%L188086%_)))
                                              (_%instance?188105%_
                                               (let ((_%$e188102%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-type?
                                                         _%object188100%_
                                                         _%klass188098%_))))
                                                 (if _%$e188102%_
                                                     _%$e188102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#expression-type?
                                                        _%L188086%_
                                                        _%klass188098%_))))))
                                         (let ((_%klass188108%_
                                                _%klass188098%_))
                                           (if _%instance?188105%_
                                               (let ()
                                                 (let ((__tmp189619
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#expression-no-side-effects? _%object188100%_))
                        (let ()
                          (declare (not safe))
                          (gxc#expression-no-side-effects? _%L188086%_)))
                    (cons '%#quote (cons '#t '()))
                    (cons '%#begin (cons _%object188100%_ (cons '#t '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189619
                                                    _%stx188049%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass188108%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ()
                                                     (let ((__tmp189620
                                                            (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass188108%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object188100%_ '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp189620 _%stx188049%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass188108%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ()
                                                         (let ((__tmp189621
                                                                (cons '%#struct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass188108%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons _%object188100%_ '())))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189621 _%stx188049%_)))
               (let ()
                 (let ((__tmp189622
                        (cons '%#call
                              (cons (cons '%#ref (cons 'class-instance? '()))
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188053%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons _%object188100%_ '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189622 _%stx188049%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd188067188081%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g188063188073%_ _%g188064188076%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g188063188073%_ _%g188064188076%_))))))
                (declare (not safe))
                (_%g188062188126%_ _%args188050%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx187710%_)
        (let* ((_%__stx189262189263%_ _%stx187710%_)
               (_%g187715187756%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189262189263%_)))))
          (let ((_%__kont189264189265%_ (lambda () '#t))
                (_%__kont189266189267%_ (lambda () '#t))
                (_%__kont189268189269%_
                 (lambda (_%L187824%_ _%L187825%_)
                   (let ((_%rator-type187846187848%_
                          (let ((__tmp189623
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L187825%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp189623))))
                     (if _%rator-type187846187848%_
                         (let* ((_%rator-type187851%_
                                 _%rator-type187846187848%_)
                                (_%rator-signature187852187854%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type187851%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type187851%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature187852187854%_
                               (let* ((_%rator-signature187857%_
                                       _%rator-signature187852187854%_)
                                      (_%rator-effect187858187860%_
                                       (if _%rator-signature187857%_
                                           (##direct-structure-ref
                                            _%rator-signature187857%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect187858187860%_
                                     (let ((_%rator-effect187863%_
                                            _%rator-effect187858187860%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect187863%_)
                                               (equal? '(alloc)
                                                       _%rator-effect187863%_))
                                           (let ((__tmp189624
                                                  (let ((__tmp189625
                                                         (lambda (_%g187868187871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g187869187873%_)
                   (cons _%g187868187871%_ _%g187869187873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp189625
                                                     '()
                                                     _%L187824%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp189624))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189272189273%_ (lambda () '#f)))
            (let ((_%__match189351189352%_
                   (lambda (_%e187733187768%_
                            _%hd187732187771%_
                            _%tl187731187773%_
                            _%e187736187776%_
                            _%hd187735187779%_
                            _%tl187734187781%_
                            _%e187739187784%_
                            _%hd187738187787%_
                            _%tl187737187789%_
                            _%e187742187792%_
                            _%hd187741187795%_
                            _%tl187740187797%_
                            _%__splice189270189271%_
                            _%target187743187800%_
                            _%tl187745187802%_)
                     (letrec ((_%loop187746187805%_
                               (lambda (_%hd187744187808%_
                                        _%rand187750187810%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187744187808%_))
                                     (let ((_%e187747187813%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187744187808%_))))
                                       (let ((_%lp-tl187749187818%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187747187813%_)))
                                             (_%lp-hd187748187816%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187747187813%_))))
                                         (let ((__tmp189626
                                                (cons _%lp-hd187748187816%_
                                                      _%rand187750187810%_)))
                                           (declare (not safe))
                                           (_%loop187746187805%_
                                            _%lp-tl187749187818%_
                                            __tmp189626))))
                                     (let ((_%rand187751187821%_
                                            (reverse _%rand187750187810%_)))
                                       (_%__kont189268189269%_
                                        _%rand187751187821%_
                                        _%hd187741187795%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187746187805%_ _%target187743187800%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189262189263%_))
                  (let ((_%e187719187904%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189262189263%_))))
                    (let ((_%tl187717187909%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187719187904%_)))
                          (_%hd187718187907%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187719187904%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd187718187907%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd187718187907%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl187717187909%_))
                                  (let ((_%e187722187912%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl187717187909%_))))
                                    (let ((_%tl187720187917%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187722187912%_)))
                                          (_%hd187721187915%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187722187912%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187720187917%_))
                                          (_%__kont189264189265%_)
                                          (_%__kont189272189273%_))))
                                  (_%__kont189272189273%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd187718187907%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187717187909%_))
                                      (let ((_%e187728187889%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187717187909%_))))
                                        (let ((_%tl187726187894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187728187889%_)))
                                              (_%hd187727187892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187728187889%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187726187894%_))
                                              (_%__kont189266189267%_)
                                              (_%__kont189272189273%_))))
                                      (_%__kont189272189273%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd187718187907%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl187717187909%_))
                                          (let ((_%e187736187776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl187717187909%_))))
                                            (let ((_%tl187734187781%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e187736187776%_)))
                                                  (_%hd187735187779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e187736187776%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd187735187779%_))
                                                  (let ((_%e187739187784%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd187735187779%_))))
                                                    (let ((_%tl187737187789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187739187784%_)))
                                                          (_%hd187738187787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187739187784%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd187738187787%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd187738187787%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187737187789%_))
                          (let ((_%e187742187792%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187737187789%_))))
                            (let ((_%tl187740187797%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187742187792%_)))
                                  (_%hd187741187795%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187742187792%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl187740187797%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl187734187781%_))
                                      (let ((_%__splice189270189271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl187734187781%_
                                                '0))))
                                        (let ((_%tl187745187802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189270189271%_
                                                  '1)))
                                              (_%target187743187800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189270189271%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187745187802%_))
                                              (_%__match189351189352%_
                                               _%e187719187904%_
                                               _%hd187718187907%_
                                               _%tl187717187909%_
                                               _%e187736187776%_
                                               _%hd187735187779%_
                                               _%tl187734187781%_
                                               _%e187739187784%_
                                               _%hd187738187787%_
                                               _%tl187737187789%_
                                               _%e187742187792%_
                                               _%hd187741187795%_
                                               _%tl187740187797%_
                                               _%__splice189270189271%_
                                               _%target187743187800%_
                                               _%tl187745187802%_)
                                              (_%__kont189272189273%_))))
                                      (_%__kont189272189273%_))
                                  (_%__kont189272189273%_))))
                          (_%__kont189272189273%_))
                      (_%__kont189272189273%_))
                  (_%__kont189272189273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189272189273%_))))
                                          (_%__kont189272189273%_))
                                      (_%__kont189272189273%_))))
                          (_%__kont189272189273%_))))
                  (_%__kont189272189273%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx187705%_ _%klass187706%_)
        (let ((_%expr-type187708%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx187705%_))))
          (if _%expr-type187708%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type187708%_ _%klass187706%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx187683%_ _%expr187684%_ _%type187685%_)
        (if (let () (declare (not safe)) (not _%type187685%_))
            (let () '#f)
            (let ((_%$e187688%_
                   (eq? (##structure-ref _%type187685%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e187688%_
                  _%$e187688%_
                  (let ()
                    (let ((_%expr-type187692%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187684%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187692%_))
                          (let () '#f)
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187692%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let () '#f)
                              (let ((_%$e187696%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187692%_
                                        'gxc#!abort::t))))
                                (if _%$e187696%_
                                    _%$e187696%_
                                    (let ((_%$e187699%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187692%_
                                              _%type187685%_))))
                                      (if _%$e187699%_
                                          _%$e187699%_
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!interface-instance?
                                                 _%type187685%_))
                                              (let () '#f)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gxc#!type-subtype?
                                                     _%type187685%_
                                                     _%expr-type187692%_))
                                                  (let () '#f)
                                                  (let ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#raise-compile-error
                                                       '"signature type mismatch"
                                                       _%stx187683%_
                                                       _%expr187684%_
                                                       _%expr-type187692%_
                                                       _%type187685%_))))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self187497%_ _%ctx187498%_ _%stx187499%_ _%args187500%_)
        (let ()
          (let ((_%self187503%_ _%self187497%_))
            (let ()
              (let* ((_%klass187513%_
                      (let ((__tmp189627
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187503%_
                                '1
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#optimizer-resolve-class
                         _%stx187499%_
                         __tmp189627)))
                     (_%fields187515%_
                      (length (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass187513%_
                                 '5
                                 '#f
                                 '#f))))
                     (_%args187521%_
                      (map (lambda (_%g187516187518%_)
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%ctx187498%_
                                _%g187516187518%_)))
                           _%args187500%_))
                     (_%inline-make-object187523%_
                      (cons '%#begin-annotation
                            (cons (cons '@type
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187503%_
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
                                 _%self187503%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (make-list _%fields187515%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (let ((_%klass187526%_ _%klass187513%_))
                  (let ((_%$e187540%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass187526%_
                            '6
                            '#f
                            '#f))))
                    (if _%$e187540%_
                        ((lambda (_%ctor187543%_)
                           (let ((_%$obj187545%_
                                  (let ((__tmp189628
                                         (let ()
                                           (declare (not safe))
                                           (##gensym '__obj))))
                                    (declare (not safe))
                                    (make-symbol__0 __tmp189628)))
                                 (_%ctor-impl187546%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!class-lookup-method
                                     _%klass187526%_
                                     _%ctor187543%_))))
                             (let ((__tmp189629
                                    (cons '%#let-values
                                          (cons (cons (cons (cons _%$obj187545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _%inline-make-object187523%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#begin
                                                            (cons (if _%ctor-impl187546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _%ctor-impl187546%_ '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187545%_
                                                            '()))
                                                _%args187521%_)))
                              (let ((_%$ctor187548%_
                                     (let ((__tmp189630
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__constructor))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp189630))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$ctor187548%_
                                                              '())
                                                        (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'direct-method-ref '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187503%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187545%_ '()))
                                              (cons (cons '%#quote
                                                          (cons _%ctor187543%_
                                                                '()))
                                                    '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$ctor187548%_ '()))
                      (cons (cons '%#call
                                  (cons (cons '%#ref
                                              (cons _%$ctor187548%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187545%_ '()))
                                              _%args187521%_)))
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
                                       _%self187503%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons 'method: '()))
                              (cons (cons '%#quote (cons _%ctor187543%_ '()))
                                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                          (cons (cons '%#ref (cons _%$obj187545%_ '())) '())))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp189629
                                _%stx187499%_))))
                         _%$e187540%_)
                        (let ((_%$e187550%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass187526%_
                                  '10
                                  '#f
                                  '#f))))
                          (if _%$e187550%_
                              ((lambda (_%metaclass187553%_)
                                 (let* ((_%$obj187555%_
                                         (let ((__tmp189631
                                                (let ()
                                                  (declare (not safe))
                                                  (##gensym '__obj))))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp189631)))
                                        (_%metakons187557%_
                                         (let ((__tmp189632
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   _%stx187499%_
                                                   _%metaclass187553%_))))
                                           (declare (not safe))
                                           (gxc#!class-lookup-method
                                            __tmp189632
                                            'instance-init!))))
                                   (let ((__tmp189633
                                          (cons '%#let-values
                                                (cons (cons (cons (cons _%$obj187555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _%inline-make-object187523%_ '()))
                    '())
              (cons (cons '%#begin
                          (cons (if _%metakons187557%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons _%metakons187557%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187503%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187555%_ '())) _%args187521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'call-method '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187503%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'instance-init! '()))
                    (cons (cons '%#ref (cons _%$obj187555%_ '()))
                          _%args187521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons '%#ref (cons _%$obj187555%_ '()))
                                      '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp189633
                                      _%stx187499%_))))
                               _%$e187550%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass187526%_
                                     '7
                                     '#f
                                     '#f))
                                  (let ()
                                    (if (let ((__tmp189634
                                               (let ()
                                                 (declare (not safe))
                                                 (##length _%args187521%_))))
                                          (declare (not safe))
                                          (##fx= __tmp189634 _%fields187515%_))
                                        (let ((__tmp189635
                                               (cons '%#begin-annotation
                                                     (cons (cons '@type
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self187503%_
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
                                                          _%self187503%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           _%args187521%_)))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp189635
                                           _%stx187499%_))
                                        (let ((__tmp189637
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self187503%_
                                                  '1
                                                  '#f
                                                  '#f)))
                                              (__tmp189636
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187526%_
                                                  '5
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"illegal struct constructor application; arity mismatch"
                                           _%stx187499%_
                                           __tmp189637
                                           __tmp189636))))
                                  (let ()
                                    (let ((_%$obj187562%_
                                           (let ((__tmp189638
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__obj))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp189638))))
                                      (let _%lp187564%_ ((_%rest187566%_
                                                          _%args187521%_)
                                                         (_%initializers187567%_
                                                          '()))
                                        (let* ((_%__stx189354189355%_
                                                _%rest187566%_)
                                               (_%g187571187592%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx189354189355%_)))))
                                          (let ((_%__kont189356189357%_
                                                 (lambda (_%L187646%_
                                                          _%L187647%_
                                                          _%L187648%_)
                                                   (let* ((_%slot187675%_
                                                           (let ((__tmp189639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L187648%_))))
                     (declare (not safe))
                     (keyword->symbol __tmp189639)))
                  (_%off187677%_
                   (let ()
                     (declare (not safe))
                     (gxc#!class-slot->field-offset
                      _%klass187526%_
                      _%slot187675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%off187677%_
                                                         (let ((__tmp189640
                                                                (cons (cons _%off187677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%L187647%_)
                              _%initializers187567%_)))
                   (declare (not safe))
                   (_%lp187564%_ _%L187646%_ __tmp189640))
                 (let ((__tmp189641
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187503%_
                           '1
                           '#f
                           '#f))))
                   (declare (not safe))
                   (gxc#raise-compile-error
                    '"unknown slot"
                    _%stx187499%_
                    __tmp189641
                    _%slot187675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont189358189359%_
                                                 (lambda ()
                                                   (let ((__tmp189642
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$obj187562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _%inline-make-object187523%_
                                                '()))
                                    '())
                              (cons (cons '%#begin
                                          (let ((__tmp189645
                                                 (cons (cons '%#ref
                                                             (cons _%$obj187562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp189643
                                                 (let ((__tmp189644
                                                        (lambda (_%i187606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%r187607%_)
                  (cons (cons '%#struct-unchecked-set!
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187503%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#quote
                                                (cons (car _%i187606%_) '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187562%_
                                                            '()))
                                                (cons (cdr _%i187606%_)
                                                      '())))))
                        _%r187607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldl1
                                                    __tmp189644
                                                    '()
                                                    _%initializers187567%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp189645
                                             __tmp189643)))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189642
                                                      _%stx187499%_))))
                                                (_%__kont189360189361%_
                                                 (lambda ()
                                                   (let ((__tmp189646
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$obj187562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _%inline-make-object187523%_
                                                '()))
                                    '())
                              (cons (cons '%#begin
                                          (cons (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'class-instance-init! '()))
                    (cons (cons '%#ref (cons _%$obj187562%_ '()))
                          _%args187521%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#ref
                                                            (cons _%$obj187562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189646
                                                      _%stx187499%_)))))
                                            (let* ((_%g187569187609%_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%__stx189354189355%_))
                                                          (_%__kont189358189359%_)
                                                          (_%__kont189360189361%_))))
                                                   (_%__match189391189392%_
                                                    (lambda (_%e187578187614%_
                                                             _%hd187577187617%_
                                                             _%tl187576187619%_
                                                             _%e187581187622%_
                                                             _%hd187580187625%_
                                                             _%tl187579187627%_
                                                             _%e187584187630%_
                                                             _%hd187583187633%_
                                                             _%tl187582187635%_
                                                             _%e187587187638%_
                                                             _%hd187586187641%_
                                                             _%tl187585187643%_)
                                                      (let ((_%L187646%_
                                                             _%tl187585187643%_)
                                                            (_%L187647%_
                                                             _%hd187586187641%_)
                                                            (_%L187648%_
                                                             _%hd187583187633%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-keyword?
                                                               _%L187648%_))
                                                            (_%__kont189356189357%_
                                                             _%L187646%_
                                                             _%L187647%_
                                                             _%L187648%_)
                                                            (_%__kont189360189361%_))))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx189354189355%_))
                                                  (let ((_%e187578187614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx189354189355%_))))
                                                    (let ((_%tl187576187619%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187578187614%_)))
                                                          (_%hd187577187617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187578187614%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd187577187617%_))
                                                          (let ((_%e187581187622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd187577187617%_))))
                    (let ((_%tl187579187627%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187581187622%_)))
                          (_%hd187580187625%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187581187622%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd187580187625%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd187580187625%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl187579187627%_))
                                  (let ((_%e187584187630%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl187579187627%_))))
                                    (let ((_%tl187582187635%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187584187630%_)))
                                          (_%hd187583187633%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187584187630%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187582187635%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187576187619%_))
                                              (let ((_%e187587187638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187576187619%_))))
                                                (let ((_%tl187585187643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187587187638%_)))
                                                      (_%hd187586187641%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187587187638%_))))
                                                  (_%__match189391189392%_
                                                   _%e187578187614%_
                                                   _%hd187577187617%_
                                                   _%tl187576187619%_
                                                   _%e187581187622%_
                                                   _%hd187580187625%_
                                                   _%tl187579187627%_
                                                   _%e187584187630%_
                                                   _%hd187583187633%_
                                                   _%tl187582187635%_
                                                   _%e187587187638%_
                                                   _%hd187586187641%_
                                                   _%tl187585187643%_)))
                                              (_%__kont189360189361%_))
                                          (_%__kont189360189361%_))))
                                  (_%__kont189360189361%_))
                              (_%__kont189360189361%_))
                          (_%__kont189360189361%_))))
                  (_%__kont189360189361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187569187609%_)))))))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187280%_ _%ctx187281%_ _%stx187282%_ _%args187283%_)
        (let ()
          (let ((_%self187286%_ _%self187280%_))
            (let ()
              (let* ((_%arguments-ok?187296%_
                      (let ((__method189577
                             (let ()
                               (declare (not safe))
                               (__method-ref
                                _%self187286%_
                                'check-arguments))))
                        (if __method189577
                            (__method189577
                             _%self187286%_
                             _%ctx187281%_
                             _%stx187282%_
                             _%args187283%_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _%self187286%_
                                     'check-arguments)))))
                     (_%g187298187308%_
                      (lambda (_%g187299187305%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187299187305%_))))
                     (_%g187297187372%_
                      (lambda (_%g187299187311%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187299187311%_))
                            (let ((_%e187303187313%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187299187311%_))))
                              (let ((_%hd187302187316%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187303187313%_)))
                                    (_%tl187301187318%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187303187313%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl187301187318%_))
                                    ((lambda (_%L187321%_)
                                       (let* ((_%klass187334%_
                                               (let ((__tmp189647
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187286%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx187282%_
                                                  __tmp189647)))
                                              (_%field187336%_
                                               (let ((__tmp189648
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187286%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass187334%_
                                                  __tmp189648)))
                                              (_%object187338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx187281%_
                                                  _%L187321%_))))
                                         (let ((_%klass187341%_
                                                _%klass187334%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187341%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ()
                                                 (let ((__tmp189649
                                                        (cons (if (or _%arguments-ok?187296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp189650
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187286%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp189650)))
                          '%#struct-unchecked-ref
                          '%#struct-direct-ref)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187286%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field187336%_ '()))
                                  (cons _%object187338%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189649
                                                    _%stx187282%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187341%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ()
                                                     (let ((__tmp189651
                                                            (cons (if (or _%arguments-ok?187296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp189652
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self187286%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp189652)))
                              '%#struct-unchecked-ref
                              '%#struct-ref)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self187286%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field187336%_ '()))
                                      (cons _%object187338%_ '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp189651 _%stx187282%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$e187360%_
                                                          (let ((__tmp189653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187286%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187341%_
                     __tmp189653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187360%_
                                                         ((lambda (_%klass187363%_)
                                                            (let ((__tmp189654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187296%_
                                         (let ((__tmp189655
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187286%_
                                                   '4
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (not __tmp189655)))
                                     '%#struct-unchecked-ref
                                     '%#struct-ref)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187286%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187336%_ '()))
                                             (cons _%object187338%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp189654 _%stx187282%_)))
                  _%$e187360%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187286%_ '4 '#f '#f))
                     (let ()
                       (let ((__tmp189656
                              (let ((_%$obj187369%_
                                     (let ((__tmp189657
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp189657))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj187369%_
                                                              '())
                                                        (cons _%object187338%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass187341%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj187369%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-ref
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187286%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187336%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187369%_
                                                                '()))
                                                    '()))))
                            (cons (if _%arguments-ok?187296%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-ref
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj187369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187286%_
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
                               _%self187286%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj187369%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187286%_
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
                         (gxc#xform-wrap-source __tmp189656 _%stx187282%_)))
                     (let ()
                       (let ((__tmp189658
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons _%object187338%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187286%_
                             '3
                             '#f
                             '#f))
                          '()))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp189658
                          _%stx187282%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd187302187316%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g187298187308%_ _%g187299187311%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g187298187308%_ _%g187299187311%_))))))
                (declare (not safe))
                (_%g187297187372%_ _%args187283%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187044%_ _%ctx187045%_ _%stx187046%_ _%args187047%_)
        (let ()
          (let ((_%self187050%_ _%self187044%_))
            (let ()
              (let* ((_%arguments-ok?187060%_
                      (let ((__method189578
                             (let ()
                               (declare (not safe))
                               (__method-ref
                                _%self187050%_
                                'check-arguments))))
                        (if __method189578
                            (__method189578
                             _%self187050%_
                             _%ctx187045%_
                             _%stx187046%_
                             _%args187047%_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _%self187050%_
                                     'check-arguments)))))
                     (_%g187062187076%_
                      (lambda (_%g187063187073%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187063187073%_))))
                     (_%g187061187155%_
                      (lambda (_%g187063187079%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187063187079%_))
                            (let ((_%e187068187081%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187063187079%_))))
                              (let ((_%hd187067187084%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187068187081%_)))
                                    (_%tl187066187086%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187068187081%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187066187086%_))
                                    (let ((_%e187071187089%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187066187086%_))))
                                      (let ((_%hd187070187092%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187071187089%_)))
                                            (_%tl187069187094%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187071187089%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl187069187094%_))
                                            ((lambda (_%L187097%_ _%L187098%_)
                                               (let* ((_%klass187114%_
                                                       (let ((__tmp189659
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self187050%_
                         '1
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class _%stx187046%_ __tmp189659)))
              (_%field187116%_
               (let ((__tmp189660
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187050%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot->field-offset _%klass187114%_ __tmp189660)))
              (_%object187118%_
               (let ()
                 (declare (not safe))
                 (gxc#compile-e__1 _%ctx187045%_ _%L187098%_)))
              (_%value187120%_
               (let ()
                 (declare (not safe))
                 (gxc#compile-e__1 _%ctx187045%_ _%L187097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%klass187123%_
                                                        _%klass187114%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass187123%_
                                                          '8
                                                          '#f
                                                          '#f))
                                                       (let ()
                                                         (let ((__tmp189661
                                                                (cons (if (or _%arguments-ok?187060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (let ((__tmp189662
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self187050%_
                                                '4
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (not __tmp189662)))
                                  '%#struct-unchecked-set!
                                  '%#struct-direct-set!)
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187050%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#quote
                                                (cons _%field187116%_ '()))
                                          (cons _%object187118%_
                                                (cons _%value187120%_
                                                      '())))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189661 _%stx187046%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass187123%_ '7 '#f '#f))
                   (let ()
                     (let ((__tmp189663
                            (cons (if (or _%arguments-ok?187060%_
                                          (let ((__tmp189664
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self187050%_
                                                    '4
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (not __tmp189664)))
                                      '%#struct-unchecked-set!
                                      '%#struct-set!)
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187050%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187116%_ '()))
                                              (cons _%object187118%_
                                                    (cons _%value187120%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp189663 _%stx187046%_)))
                   (let ((_%$e187143%_
                          (let ((__tmp189665
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187050%_
                                    '3
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (gxc#!class-slot-find-struct
                             _%klass187123%_
                             __tmp189665))))
                     (if _%$e187143%_
                         ((lambda (_%klass187146%_)
                            (let ((__tmp189666
                                   (cons (if (or _%arguments-ok?187060%_
                                                 (let ((__tmp189667
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187050%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (not __tmp189667)))
                                             '%#struct-unchecked-set!
                                             '%#struct-set!)
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187050%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons _%field187116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%object187118%_
                                                           (cons _%value187120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp189666
                               _%stx187046%_)))
                          _%$e187143%_)
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187050%_
                                '4
                                '#f
                                '#f))
                             (let ()
                               (let ((__tmp189668
                                      (let ((_%$obj187152%_
                                             (let ((__tmp189669
                                                    (let ()
                                                      (declare (not safe))
                                                      (##gensym '__obj))))
                                               (declare (not safe))
                                               (make-symbol__0 __tmp189669))))
                                        (cons '%#let-values
                                              (cons (cons (cons (cons _%$obj187152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%object187118%_ '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#if
                                                                (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#quote
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%klass187123%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187152%_
                                                            '()))
                                                '())))
                              (cons (cons '%#struct-unchecked-set!
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self187050%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _%field187116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _%$obj187152%_ '()))
                    (cons _%value187120%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (if _%arguments-ok?187060%_
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'unchecked-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref (cons _%$obj187152%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187050%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value187120%_ '())))))
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
                                       _%self187050%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187152%_ '()))
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187050%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons _%value187120%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp189668
                                  _%stx187046%_)))
                             (let ()
                               (let ((__tmp189670
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons _%object187118%_
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187050%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value187120%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp189670
                                  _%stx187046%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd187070187092%_
                                             _%hd187067187084%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g187062187076%_
                                               _%g187063187079%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g187062187076%_ _%g187063187079%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g187062187076%_ _%g187063187079%_))))))
                (declare (not safe))
                (_%g187061187155%_ _%args187047%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self186859%_ _%ctx186860%_ _%stx186861%_ _%args186862%_)
        (let ()
          (let ((_%self186865%_ _%self186859%_))
            (let ()
              (let* ((_%self186874186884%_ _%self186865%_)
                     (_%E186876186888%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self186874186884%_
                                 '((!lambda _ _ arity dispatch inline))))
                        '#!void))
                     (_%K186877186898%_
                      (lambda (_%inline186891%_
                               _%dispatch186892%_
                               _%arity186893%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#!lambda-arity-match?
                               _%self186865%_
                               _%args186862%_))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal lambda application; arity mismatch"
                               _%stx186861%_
                               _%arity186893%_)))
                        (if _%inline186891%_
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose '"inline lambda"))
                              (let ((__tmp189671
                                     (let ((__tmp189672
                                            (_%inline186891%_ _%stx186861%_)))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp189672
                                        _%stx186861%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx186860%_ __tmp189671)))
                            (if (and _%dispatch186892%_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#symbol-in-local-scope?
                                        _%dispatch186892%_)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"dispatch lambda => "
                                     _%dispatch186892%_))
                                  (let ((__tmp189673
                                         (let ((__tmp189674
                                                (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%dispatch186892%_ '()))
                    _%args186862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189674
                                            _%stx186861%_))))
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%ctx186860%_
                                     __tmp189673)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!procedure::optimize-call
                                     _%self186865%_
                                     _%ctx186860%_
                                     _%stx186861%_
                                     _%args186862%_))))))))
                (if '#t
                    (let* ((_%e186878186901%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186874186884%_
                               '1
                               '#f
                               '#f)))
                           (_%e186879186904%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186874186884%_
                               '2
                               '#f
                               '#f)))
                           (_%e186880186907%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186874186884%_
                               '3
                               '#f
                               '#f)))
                           (_%arity186910%_ _%e186880186907%_)
                           (_%e186881186912%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186874186884%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch186915%_ _%e186881186912%_)
                           (_%e186882186917%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186874186884%_
                               '5
                               '#f
                               '#f)))
                           (_%inline186920%_ _%e186882186917%_))
                      (declare (not safe))
                      (_%K186877186898%_
                       _%inline186920%_
                       _%dispatch186915%_
                       _%arity186910%_))
                    (let () (declare (not safe)) (_%E186876186888%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self186711%_ _%ctx186712%_ _%stx186713%_ _%args186714%_)
        (let ()
          (let ((_%self186717%_ _%self186711%_))
            (let ()
              (let ((_%$e186731%_
                     (let ((__tmp189676
                            (lambda (_%g186726186728%_)
                              (let ()
                                (declare (not safe))
                                (gxc#!lambda-arity-match?
                                 _%g186726186728%_
                                 _%args186714%_))))
                           (__tmp189675
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186717%_
                               '3
                               '#f
                               '#f))))
                       (declare (not safe))
                       (__find __tmp189676 __tmp189675))))
                (if _%$e186731%_
                    ((lambda (_%clause186734%_)
                       (let ((__method189579
                              (let ()
                                (declare (not safe))
                                (__method-ref
                                 _%clause186734%_
                                 'optimize-call))))
                         (if __method189579
                             (__method189579
                              _%clause186734%_
                              _%ctx186712%_
                              _%stx186713%_
                              _%args186714%_)
                             (let ()
                               (declare (not safe))
                               (error '"Missing method"
                                      _%clause186734%_
                                      'optimize-call)))))
                     _%$e186731%_)
                    (let ()
                      (let ((__tmp189677
                             (map gxc#!lambda-arity
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self186717%_
                                     '3
                                     '#f
                                     '#f)))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal case-lambda application; arity mismatch"
                         _%stx186713%_
                         __tmp189677))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self186455%_ _%ctx186456%_ _%stx186457%_ _%args186458%_)
        (let ()
          (let ((_%self186461%_ _%self186455%_))
            (let ()
              (let* ((_%self186470186479%_ _%self186461%_)
                     (_%E186472186483%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self186470186479%_
                                 '((!kw-lambda _ _ table dispatch))))
                        '#!void))
                     (_%K186473186570%_
                      (lambda (_%dispatch186486%_ _%table186487%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%dispatch186486%_))
                            (let* ((_%g186488186497%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-lookup-type
                                       _%dispatch186486%_)))
                                   (_%else186490186505%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"unknown keyword dispatch lambda "
                                         _%dispatch186486%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#xform-call%
                                         _%ctx186456%_
                                         _%stx186457%_))))
                                   (_%K186492186554%_
                                    (lambda (_%main186508%_ _%keys186509%_)
                                      (let ((_g189678_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!kw-lambda-split-args
                                                _%stx186457%_
                                                _%args186458%_))))
                                        (begin
                                          (let ((_g189679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189678_)
                                                       (##vector-length
                                                        _g189678_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189679_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189679_)))
                                          (let ((_%pargs186511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g189678_ 0)))
                                                (_%kwargs186512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g189678_
                                                    1))))
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"dispatch kw-lambda => "
                                                 _%main186508%_))
                                              (if _%table186487%_
                                                  (let ((_%xargs186520%_
                                                         (map (lambda (_%key186514%_)
                                                                (let ((_%$e186516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 _%key186514%_ _%kwargs186512%_))))
                          (if _%$e186516%_
                              _%$e186516%_
                              (let () '(%#ref absent-value)))))
                      _%keys186509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (for-each
                                                     (lambda (_%kw186522%_)
                                                       (if (memq (car _%kw186522%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%keys186509%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Illegal keyword lambda application; unexpected keyword"
                      _%stx186457%_
                      _%keys186509%_
                      _%kw186522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs186512%_)
                                                    (let ((__tmp189680
                                                           (let ((__tmp189681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#call
                                (cons (cons '%#ref (cons _%main186508%_ '()))
                                      (cons (cons '%#quote (cons '#f '()))
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%pargs186511%_
                                               _%xargs186520%_)))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp189681 _%stx186457%_))))
              (declare (not safe))
              (gxc#compile-e__1 _%ctx186456%_ __tmp189680)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%kwt186524%_
                                                          (let ((__tmp189682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##gensym '__kwt))))
                    (declare (not safe))
                    (make-symbol__0 __tmp189682)))
                 (_%kwvars186528%_
                  (map (lambda (_%_186526%_)
                         (let ((__tmp189683
                                (let ()
                                  (declare (not safe))
                                  (##gensym '__kw))))
                           (declare (not safe))
                           (make-symbol__0 __tmp189683)))
                       _%kwargs186512%_))
                 (_%kwbind186533%_
                  (map (lambda (_%kw186530%_ _%kwvar186531%_)
                         (cons (cons _%kwvar186531%_ '())
                               (cons (cdr _%kw186530%_) '())))
                       _%kwargs186512%_
                       _%kwvars186528%_))
                 (_%kwset186538%_
                  (map (lambda (_%kw186535%_ _%kwvar186536%_)
                         (cons '%#call
                               (cons '(%#ref symbolic-table-set!)
                                     (cons (cons '%#ref
                                                 (cons _%kwt186524%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (car _%kw186535%_)
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%kwvar186536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _%kwargs186512%_
                       _%kwvars186528%_))
                 (_%xkwargs186543%_
                  (map (lambda (_%kw186540%_ _%kwvar186541%_)
                         (cons (car _%kw186540%_)
                               (cons '%#ref (cons _%kwvar186541%_ '()))))
                       _%kwargs186512%_
                       _%kwvars186528%_))
                 (_%xargs186551%_
                  (map (lambda (_%key186545%_)
                         (let ((_%$e186547%_
                                (let ()
                                  (declare (not safe))
                                  (agetq__0 _%key186545%_ _%xkwargs186543%_))))
                           (if _%$e186547%_
                               _%$e186547%_
                               (let () '(%#ref absent-value)))))
                       _%keys186509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp189684
                                                           (let ((__tmp189685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#let-values
                                (cons _%kwbind186533%_
                                      (cons (cons '%#let-values
                                                  (cons (cons (cons (cons _%kwt186524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ((__tmp189686
                                         (cons '%#call
                                               (cons '(%#ref make-symbolic-table)
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (length _%kwargs186512%_) '()))
                   (cons '(%#quote 0) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp189686
                                     _%stx186457%_))
                                  '()))
                      '())
                (cons (cons '%#begin
                            (let ((__tmp189687
                                   (cons (let ((__tmp189688
                                                (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%main186508%_ '()))
                    (cons (cons '%#ref (cons _%kwt186524%_ '()))
                          (let ()
                            (declare (not safe))
                            (__foldr1
                             cons
                             _%pargs186511%_
                             _%xargs186551%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189688
                                            _%stx186457%_))
                                         '())))
                              (declare (not safe))
                              (__foldr1 cons __tmp189687 _%kwset186538%_)))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp189685 _%stx186457%_))))
              (declare (not safe))
              (gxc#compile-e__1 _%ctx186456%_ __tmp189684)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%g186488186497%_
                                     'gxc#!kw-lambda-primary::t))
                                  (let* ((_%e186493186557%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186488186497%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%e186494186560%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186488186497%_
                                             '2
                                             '#f
                                             '#f)))
                                         (_%keys186563%_ _%e186494186560%_)
                                         (_%e186495186565%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186488186497%_
                                             '3
                                             '#f
                                             '#f)))
                                         (_%main186568%_ _%e186495186565%_))
                                    (declare (not safe))
                                    (_%K186492186554%_
                                     _%main186568%_
                                     _%keys186563%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else186490186505%_))))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call%
                               _%ctx186456%_
                               _%stx186457%_))))))
                (if '#t
                    (let* ((_%e186474186573%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186470186479%_
                               '1
                               '#f
                               '#f)))
                           (_%e186475186576%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186470186479%_
                               '2
                               '#f
                               '#f)))
                           (_%e186476186579%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186470186479%_
                               '3
                               '#f
                               '#f)))
                           (_%table186582%_ _%e186476186579%_)
                           (_%e186477186584%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186470186479%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch186587%_ _%e186477186584%_))
                      (declare (not safe))
                      (_%K186473186570%_ _%dispatch186587%_ _%table186582%_))
                    (let () (declare (not safe)) (_%E186472186483%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186068%_ _%args186069%_)
        (let _%lp186071%_ ((_%rest186073%_ _%args186069%_)
                           (_%pargs186074%_ '())
                           (_%kwargs186075%_ '()))
          (let* ((_%__stx189396189397%_ _%rest186073%_)
                 (_%g186081186133%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189396189397%_)))))
            (let ((_%__kont189398189399%_
                   (lambda (_%L186312%_ _%L186313%_)
                     (let ((__tmp189689 (cons _%L186313%_ _%pargs186074%_)))
                       (declare (not safe))
                       (_%lp186071%_
                        _%L186312%_
                        __tmp189689
                        _%kwargs186075%_))))
                  (_%__kont189400189401%_
                   (lambda (_%L186258%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186258%_ _%pargs186074%_))
                             (reverse _%kwargs186075%_))))
                  (_%__kont189402189403%_
                   (lambda (_%L186205%_ _%L186206%_ _%L186207%_)
                     (let ((_%kw186224%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186207%_))))
                       (if (assq _%kw186224%_ _%kwargs186075%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186068%_
                              _%kw186224%_))
                           (let ((__tmp189690
                                  (cons (cons _%kw186224%_ _%L186206%_)
                                        _%kwargs186075%_)))
                             (declare (not safe))
                             (_%lp186071%_
                              _%L186205%_
                              _%pargs186074%_
                              __tmp189690))))))
                  (_%__kont189404189405%_
                   (lambda (_%L186153%_ _%L186154%_)
                     (let ((__tmp189691 (cons _%L186154%_ _%pargs186074%_)))
                       (declare (not safe))
                       (_%lp186071%_
                        _%L186153%_
                        __tmp189691
                        _%kwargs186075%_))))
                  (_%__kont189406189407%_
                   (lambda ()
                     (values (reverse _%pargs186074%_)
                             (reverse _%kwargs186075%_)))))
              (let ((_%__match189503189504%_
                     (lambda (_%e186114186173%_
                              _%hd186113186176%_
                              _%tl186112186178%_
                              _%e186117186181%_
                              _%hd186116186184%_
                              _%tl186115186186%_
                              _%e186120186189%_
                              _%hd186119186192%_
                              _%tl186118186194%_
                              _%e186123186197%_
                              _%hd186122186200%_
                              _%tl186121186202%_)
                       (let ((_%L186205%_ _%tl186121186202%_)
                             (_%L186206%_ _%hd186122186200%_)
                             (_%L186207%_ _%hd186119186192%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186207%_))
                             (_%__kont189402189403%_
                              _%L186205%_
                              _%L186206%_
                              _%L186207%_)
                             (_%__kont189404189405%_
                              _%tl186112186178%_
                              _%hd186113186176%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189396189397%_))
                    (let ((_%e186087186277%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189396189397%_))))
                      (let ((_%tl186085186282%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186087186277%_)))
                            (_%hd186086186280%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186087186277%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186086186280%_))
                            (let ((_%e186090186285%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186086186280%_))))
                              (let ((_%tl186088186290%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186090186285%_)))
                                    (_%hd186089186288%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186090186285%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186089186288%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186089186288%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186088186290%_))
                                            (let ((_%e186093186293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186088186290%_))))
                                              (let ((_%tl186091186298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186093186293%_)))
                                                    (_%hd186092186296%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186093186293%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186092186296%_))
                                                    (let ((_%e186094186301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186092186296%_))))
                                                      (if (equal? _%e186094186301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186091186298%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186085186282%_))
                          (let ((_%e186097186304%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186085186282%_))))
                            (let ((_%tl186095186309%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186097186304%_)))
                                  (_%hd186096186307%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186097186304%_))))
                              (_%__kont189398189399%_
                               _%tl186095186309%_
                               _%hd186096186307%_)))
                          (_%__kont189404189405%_
                           _%tl186085186282%_
                           _%hd186086186280%_))
                      (_%__kont189404189405%_
                       _%tl186085186282%_
                       _%hd186086186280%_))
                  (if (equal? _%e186094186301%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186091186298%_))
                          (_%__kont189400189401%_ _%tl186085186282%_)
                          (_%__kont189404189405%_
                           _%tl186085186282%_
                           _%hd186086186280%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186091186298%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186085186282%_))
                              (let ((_%e186123186197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186085186282%_))))
                                (let ((_%tl186121186202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186123186197%_)))
                                      (_%hd186122186200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186123186197%_))))
                                  (_%__match189503189504%_
                                   _%e186087186277%_
                                   _%hd186086186280%_
                                   _%tl186085186282%_
                                   _%e186090186285%_
                                   _%hd186089186288%_
                                   _%tl186088186290%_
                                   _%e186093186293%_
                                   _%hd186092186296%_
                                   _%tl186091186298%_
                                   _%e186123186197%_
                                   _%hd186122186200%_
                                   _%tl186121186202%_)))
                              (_%__kont189404189405%_
                               _%tl186085186282%_
                               _%hd186086186280%_))
                          (_%__kont189404189405%_
                           _%tl186085186282%_
                           _%hd186086186280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186091186298%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186085186282%_))
                                                            (let ((_%e186123186197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186085186282%_))))
                      (let ((_%tl186121186202%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186123186197%_)))
                            (_%hd186122186200%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186123186197%_))))
                        (_%__match189503189504%_
                         _%e186087186277%_
                         _%hd186086186280%_
                         _%tl186085186282%_
                         _%e186090186285%_
                         _%hd186089186288%_
                         _%tl186088186290%_
                         _%e186093186293%_
                         _%hd186092186296%_
                         _%tl186091186298%_
                         _%e186123186197%_
                         _%hd186122186200%_
                         _%tl186121186202%_)))
                    (_%__kont189404189405%_
                     _%tl186085186282%_
                     _%hd186086186280%_))
                (_%__kont189404189405%_
                 _%tl186085186282%_
                 _%hd186086186280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189404189405%_
                                             _%tl186085186282%_
                                             _%hd186086186280%_))
                                        (_%__kont189404189405%_
                                         _%tl186085186282%_
                                         _%hd186086186280%_))
                                    (_%__kont189404189405%_
                                     _%tl186085186282%_
                                     _%hd186086186280%_))))
                            (_%__kont189404189405%_
                             _%tl186085186282%_
                             _%hd186086186280%_))))
                    (_%__kont189406189407%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186052%_ _%ctx186053%_ _%stx186054%_ _%args186055%_)
        (let ()
          (let ((_%self186058%_ _%self186052%_))
            (let ()
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx186053%_ _%stx186054%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self185740%_ _%stx185741%_)
        (let* ((_%__stx189512189513%_ _%stx185741%_)
               (_%g185744185784%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189512189513%_)))))
          (let ((_%__kont189514189515%_
                 (lambda (_%L185890%_ _%L185891%_)
                   (let ((_%$e185918%_
                          (member 'return:
                                  (let ((__tmp189692
                                         (lambda (_%g185910185913%_
                                                  _%g185911185915%_)
                                           (cons _%g185910185913%_
                                                 _%g185911185915%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp189692 '() _%L185891%_))
                                  gx#stx-eq?)))
                     (if _%$e185918%_
                         ((lambda (_%tail185921%_)
                            (let ((_%type185923%_
                                   (let ((__tmp189693
                                          (let ((__tmp189694
                                                 (cadr _%tail185921%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp189694))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx185741%_
                                      __tmp189693))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx185741%_
                                 _%L185890%_
                                 _%type185923%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self185740%_
                                 _%L185890%_))))
                          _%$e185918%_)
                         (let ()
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self185740%_
                              _%L185890%_)))))))
                (_%__kont189518189519%_
                 (lambda (_%L185813%_ _%L185814%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185740%_ _%L185813%_)))))
            (let ((_%__match189549189550%_
                   (lambda (_%e185750185834%_
                            _%hd185749185837%_
                            _%tl185748185839%_
                            _%e185753185842%_
                            _%hd185752185845%_
                            _%tl185751185847%_
                            _%e185756185850%_
                            _%hd185755185853%_
                            _%tl185754185855%_
                            _%__splice189516189517%_
                            _%target185757185858%_
                            _%tl185759185860%_)
                     (letrec ((_%loop185760185863%_
                               (lambda (_%hd185758185866%_
                                        _%signature185764185868%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd185758185866%_))
                                     (let ((_%e185761185871%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd185758185866%_))))
                                       (let ((_%lp-tl185763185876%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e185761185871%_)))
                                             (_%lp-hd185762185874%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e185761185871%_))))
                                         (let ((__tmp189695
                                                (cons _%lp-hd185762185874%_
                                                      _%signature185764185868%_)))
                                           (declare (not safe))
                                           (_%loop185760185863%_
                                            _%lp-tl185763185876%_
                                            __tmp189695))))
                                     (let ((_%signature185765185879%_
                                            (reverse _%signature185764185868%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl185751185847%_))
                                           (let ((_%e185768185882%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl185751185847%_))))
                                             (let ((_%tl185766185887%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e185768185882%_)))
                                                   (_%hd185767185885%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e185768185882%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl185766185887%_))
                                                   (_%__kont189514189515%_
                                                    _%hd185767185885%_
                                                    _%signature185765185879%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g185744185784%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g185744185784%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop185760185863%_ _%target185757185858%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189512189513%_))
                  (let ((_%e185750185834%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189512189513%_))))
                    (let ((_%tl185748185839%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e185750185834%_)))
                          (_%hd185749185837%_
                           (let ()
                             (declare (not safe))
                             (##car _%e185750185834%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl185748185839%_))
                          (let ((_%e185753185842%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl185748185839%_))))
                            (let ((_%tl185751185847%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e185753185842%_)))
                                  (_%hd185752185845%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e185753185842%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd185752185845%_))
                                  (let ((_%e185756185850%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd185752185845%_))))
                                    (let ((_%tl185754185855%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e185756185850%_)))
                                          (_%hd185755185853%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e185756185850%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd185755185853%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd185755185853%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl185754185855%_))
                                                  (let ((_%__splice189516189517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl185754185855%_
                                                            '0))))
                                                    (let ((_%tl185759185860%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189516189517%_
                                                              '1)))
                                                          (_%target185757185858%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189516189517%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185759185860%_))
                                                          (_%__match189549189550%_
                                                           _%e185750185834%_
                                                           _%hd185749185837%_
                                                           _%tl185748185839%_
                                                           _%e185753185842%_
                                                           _%hd185752185845%_
                                                           _%tl185751185847%_
                                                           _%e185756185850%_
                                                           _%hd185755185853%_
                                                           _%tl185754185855%_
                                                           _%__splice189516189517%_
                                                           _%target185757185858%_
                                                           _%tl185759185860%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl185751185847%_))
                      (let ((_%e185779185805%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl185751185847%_))))
                        (let ((_%tl185777185810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185779185805%_)))
                              (_%hd185778185808%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185779185805%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl185777185810%_))
                              (_%__kont189518189519%_
                               _%hd185778185808%_
                               _%hd185752185845%_)
                              (let ()
                                (declare (not safe))
                                (_%g185744185784%_)))))
                      (let () (declare (not safe)) (_%g185744185784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl185751185847%_))
                                                      (let ((_%e185779185805%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl185751185847%_))))
                (let ((_%tl185777185810%_
                       (let () (declare (not safe)) (##cdr _%e185779185805%_)))
                      (_%hd185778185808%_
                       (let ()
                         (declare (not safe))
                         (##car _%e185779185805%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl185777185810%_))
                      (_%__kont189518189519%_
                       _%hd185778185808%_
                       _%hd185752185845%_)
                      (let () (declare (not safe)) (_%g185744185784%_)))))
              (let () (declare (not safe)) (_%g185744185784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl185751185847%_))
                                                  (let ((_%e185779185805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl185751185847%_))))
                                                    (let ((_%tl185777185810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e185779185805%_)))
                                                          (_%hd185778185808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e185779185805%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185777185810%_))
                                                          (_%__kont189518189519%_
                                                           _%hd185778185808%_
                                                           _%hd185752185845%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g185744185784%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g185744185784%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185751185847%_))
                                              (let ((_%e185779185805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185751185847%_))))
                                                (let ((_%tl185777185810%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185779185805%_)))
                                                      (_%hd185778185808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185779185805%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185777185810%_))
                                                      (_%__kont189518189519%_
                                                       _%hd185778185808%_
                                                       _%hd185752185845%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g185744185784%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g185744185784%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185751185847%_))
                                      (let ((_%e185779185805%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185751185847%_))))
                                        (let ((_%tl185777185810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185779185805%_)))
                                              (_%hd185778185808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185779185805%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl185777185810%_))
                                              (_%__kont189518189519%_
                                               _%hd185778185808%_
                                               _%hd185752185845%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g185744185784%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g185744185784%_))))))
                          (let () (declare (not safe)) (_%g185744185784%_)))))
                  (let () (declare (not safe)) (_%g185744185784%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx185718%_ _%expr185719%_ _%type185720%_)
        (let ((_%$e185722%_
               (let () (declare (not safe)) (not _%type185720%_))))
          (if _%$e185722%_
              _%$e185722%_
              (let ((_%$e185725%_
                     (eq? (##structure-ref _%type185720%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e185725%_
                    _%$e185725%_
                    (let ()
                      (let ((_%expr-type185729%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-basic-expression-type
                                _%expr185719%_))))
                        (if (let ()
                              (declare (not safe))
                              (not _%expr-type185729%_))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; no type information"
                                 _%stx185718%_
                                 _%type185720%_)))
                            (if (eq? 't
                                     (##structure-ref
                                      _%expr-type185729%_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"cannot verify procedure return type; unspecific type"
                                     _%stx185718%_
                                     _%type185720%_
                                     _%expr-type185729%_)))
                                (let ((_%$e185733%_
                                       (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%expr-type185729%_
                                          'gxc#!abort::t))))
                                  (if _%$e185733%_
                                      _%$e185733%_
                                      (let ((_%$e185736%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!type-subtype?
                                                _%expr-type185729%_
                                                _%type185720%_))))
                                        (if _%$e185736%_
                                            _%$e185736%_
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"procedure return type does not match signature"
                                                 _%stx185718%_
                                                 _%type185720%_
                                                 _%expr-type185729%_)))))))))))))))))))
