(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770752344)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp252591 (list gxc#::basic-xform::t))
            (__tmp252590 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp252591
         '()
         __tmp252590
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args251868%_
        (apply make-instance gxc#::optimize-call::t _%$args251868%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp252592
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
        (__make-atomic-promise __tmp252592)))
    (define gxc#apply-optimize-call
      (lambda (_%stx251860%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self251863%_
                (let ((__obj252582
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj252582))
               (__tmp252593
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self251863%_ _%stx251860%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp252593
           gxc#current-compile-method
           _%self251863%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp252595 (list gxc#::void::t))
            (__tmp252594 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp252595
         '()
         __tmp252594
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args251857%_
        (apply make-instance gxc#::check-return-type::t _%$args251857%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp252596
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
        (__make-atomic-promise __tmp252596)))
    (define gxc#apply-check-return-type
      (lambda (_%stx251849%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self251852%_
                (let ((__obj252584
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj252584))
               (__tmp252597
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self251852%_ _%stx251849%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp252597
           gxc#current-compile-method
           _%self251852%_))))
    (define gxc#optimize-call%
      (lambda (_%self251456%_ _%stx251457%_)
        (let* ((_%__stx251937251938%_ _%stx251457%_)
               (_%g251460251506%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx251937251938%_)))))
          (let ((_%__kont251939251940%_
                 (lambda (_%g251462251645%_ _%g251463251646%_)
                   (let* ((_%rator-id251666%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g251463251646%_)))
                          (_%rator-type251668%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id251666%_))))
                     (if (or (not _%rator-type251668%_)
                             (eq? (##structure-ref
                                   _%rator-type251668%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self251456%_ _%stx251457%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type251668%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp252598
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type251668%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id251666%_
                                  '" => "
                                  _%rator-type251668%_
                                  '" "
                                  __tmp252598))
                               (let* ((_%optimized251683%_
                                       (let ((__method252585
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type251668%_
                                                 'optimize-call))))
                                         (if __method252585
                                             (let ((__tmp252599
                                                    (let ((__tmp252600
                                                           (lambda (_%g251675251678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g251676251680%_)
                     (cons _%g251675251678%_ _%g251676251680%_))))
              (declare (not safe))
              (foldr__0 __tmp252600 '() _%g251462251645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method252585
                                                _%rator-type251668%_
                                                _%self251456%_
                                                _%stx251457%_
                                                __tmp252599))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type251668%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx251885251886%_
                                       _%optimized251683%_)
                                      (_%g251686251715%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx251885251886%_)))))
                                 (let ((_%__kont251887251888%_
                                        (lambda (_%g251688251781%_
                                                 _%g251689251782%_)
                                          (let* ((_%optimized-rator-id251809%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g251689251782%_)))
                                                 (_%rator-type251814%_
                                                  (let ((_%$e251811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id251809%_))))
                                                    (if _%$e251811%_
                                                        _%$e251811%_
                                                        _%rator-type251668%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type251814%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id251809%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type251814%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type251814%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized251683%_
                                                (let ((__tmp252601
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g251689251782%_ '()))
                           (let ((__tmp252602
                                  (lambda (_%g251822251825%_ _%g251823251827%_)
                                    (cons _%g251822251825%_
                                          _%g251823251827%_))))
                             (declare (not safe))
                             (foldr__0 __tmp252602 '() _%g251688251781%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252601
                                                   _%stx251457%_))))))
                                       (_%__kont251891251892%_
                                        (lambda () _%optimized251683%_)))
                                   (let ((_%__match251934251935%_
                                          (lambda (_%e251690251727%_
                                                   _%hd251691251730%_
                                                   _%tl251692251732%_
                                                   _%e251693251735%_
                                                   _%hd251694251738%_
                                                   _%tl251695251740%_
                                                   _%e251696251743%_
                                                   _%hd251697251746%_
                                                   _%tl251698251748%_
                                                   _%e251699251751%_
                                                   _%hd251700251754%_
                                                   _%tl251701251756%_
                                                   _%__splice251889251890%_
                                                   _%target251702251759%_
                                                   _%tl251704251761%_)
                                            (letrec ((_%loop251705251764%_
                                                      (lambda (_%hd251703251767%_
                                                               _%arg251709251769%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd251703251767%_))
                                                            (let ((_%e251706251771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd251703251767%_))))
                      (let ((_%lp-tl251708251776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251706251771%_)))
                            (_%lp-hd251707251774%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251706251771%_))))
                        (_%loop251705251764%_
                         _%lp-tl251708251776%_
                         (cons _%lp-hd251707251774%_ _%arg251709251769%_))))
                    (let ((_%arg251710251779%_ (reverse _%arg251709251769%_)))
                      (_%__kont251887251888%_
                       _%arg251710251779%_
                       _%hd251700251754%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop251705251764%_
                                               _%target251702251759%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx251885251886%_))
                                         (let ((_%e251690251727%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx251885251886%_))))
                                           (let ((_%tl251692251732%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e251690251727%_)))
                                                 (_%hd251691251730%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e251690251727%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd251691251730%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd251691251730%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl251692251732%_))
                                                         (let ((_%e251693251735%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl251692251732%_))))
                   (let ((_%tl251695251740%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e251693251735%_)))
                         (_%hd251694251738%_
                          (let ()
                            (declare (not safe))
                            (##car _%e251693251735%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd251694251738%_))
                         (let ((_%e251696251743%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd251694251738%_))))
                           (let ((_%tl251698251748%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e251696251743%_)))
                                 (_%hd251697251746%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e251696251743%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd251697251746%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd251697251746%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl251698251748%_))
                                         (let ((_%e251699251751%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl251698251748%_))))
                                           (let ((_%tl251701251756%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e251699251751%_)))
                                                 (_%hd251700251754%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e251699251751%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl251701251756%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl251695251740%_))
                                                     (let ((_%__splice251889251890%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl251695251740%_
                                                               '0))))
                                                       (let ((_%tl251704251761%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice251889251890%_ '1)))
                     (_%target251702251759%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice251889251890%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl251704251761%_))
                     (_%__match251934251935%_
                      _%e251690251727%_
                      _%hd251691251730%_
                      _%tl251692251732%_
                      _%e251693251735%_
                      _%hd251694251738%_
                      _%tl251695251740%_
                      _%e251696251743%_
                      _%hd251697251746%_
                      _%tl251698251748%_
                      _%e251699251751%_
                      _%hd251700251754%_
                      _%tl251701251756%_
                      _%__splice251889251890%_
                      _%target251702251759%_
                      _%tl251704251761%_)
                     (_%__kont251891251892%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont251891251892%_))
                                                 (_%__kont251891251892%_))))
                                         (_%__kont251891251892%_))
                                     (_%__kont251891251892%_))
                                 (_%__kont251891251892%_))))
                         (_%__kont251891251892%_))))
                 (_%__kont251891251892%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont251891251892%_))
                                                 (_%__kont251891251892%_))))
                                         (_%__kont251891251892%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type251668%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type251668%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp252603
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g251463251646%_
                                                                '()))
                                                    (map (lambda (_%g251833251835%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self251456%_
                                                              _%g251833251835%_)))
                                                         (let ((__tmp252604
                                                                (lambda (_%g251837251840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g251838251842%_)
                          (cons _%g251837251840%_ _%g251838251842%_))))
                   (declare (not safe))
                   (foldr__0 __tmp252604 '() _%g251462251645%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp252603
                                    _%stx251457%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx251457%_
                                    _%rator-type251668%_))))))))
                (_%__kont251943251944%_
                 (lambda (_%g251485251549%_ _%g251486251550%_)
                   (let ((_%rator-type251567%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g251486251550%_))))
                     (if (and _%rator-type251567%_
                              (eq? (##structure-ref
                                    _%rator-type251567%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type251567%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type251567%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type251567%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp252605
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self251456%_
                                               _%g251486251550%_))
                                            (map (lambda (_%g251569251571%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self251456%_
                                                      _%g251569251571%_)))
                                                 (let ((__tmp252606
                                                        (lambda (_%g251573251576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g251574251578%_)
                  (cons _%g251573251576%_ _%g251574251578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp252606
                                                    '()
                                                    _%g251485251549%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp252605 _%stx251457%_))
                         (if (or (not _%rator-type251567%_)
                                 (let ((__tmp252607
                                        (##structure-ref
                                         _%rator-type251567%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp252607 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self251456%_ _%stx251457%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx251457%_
                                _%rator-type251567%_))))))))
            (let* ((_%__match252004252005%_
                    (lambda (_%e251487251511%_
                             _%hd251488251514%_
                             _%tl251489251516%_
                             _%e251490251519%_
                             _%hd251491251522%_
                             _%tl251492251524%_
                             _%__splice251945251946%_
                             _%target251493251527%_
                             _%tl251495251529%_)
                      (letrec ((_%loop251496251532%_
                                (lambda (_%hd251494251535%_
                                         _%rand251500251537%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd251494251535%_))
                                      (let ((_%e251497251539%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd251494251535%_))))
                                        (let ((_%lp-tl251499251544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251497251539%_)))
                                              (_%lp-hd251498251542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251497251539%_))))
                                          (_%loop251496251532%_
                                           _%lp-tl251499251544%_
                                           (cons _%lp-hd251498251542%_
                                                 _%rand251500251537%_))))
                                      (let ((_%rand251501251547%_
                                             (reverse _%rand251500251537%_)))
                                        (_%__kont251943251944%_
                                         _%rand251501251547%_
                                         _%hd251491251522%_))))))
                        (_%loop251496251532%_ _%target251493251527%_ '()))))
                   (_%__match251984251985%_
                    (lambda (_%e251464251591%_
                             _%hd251465251594%_
                             _%tl251466251596%_
                             _%e251467251599%_
                             _%hd251468251602%_
                             _%tl251469251604%_
                             _%e251470251607%_
                             _%hd251471251610%_
                             _%tl251472251612%_
                             _%e251473251615%_
                             _%hd251474251618%_
                             _%tl251475251620%_
                             _%__splice251941251942%_
                             _%target251476251623%_
                             _%tl251478251625%_)
                      (letrec ((_%loop251479251628%_
                                (lambda (_%hd251477251631%_
                                         _%rand251483251633%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd251477251631%_))
                                      (let ((_%e251480251635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd251477251631%_))))
                                        (let ((_%lp-tl251482251640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251480251635%_)))
                                              (_%lp-hd251481251638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251480251635%_))))
                                          (_%loop251479251628%_
                                           _%lp-tl251482251640%_
                                           (cons _%lp-hd251481251638%_
                                                 _%rand251483251633%_))))
                                      (let ((_%rand251484251643%_
                                             (reverse _%rand251483251633%_)))
                                        (_%__kont251939251940%_
                                         _%rand251484251643%_
                                         _%hd251474251618%_))))))
                        (_%loop251479251628%_ _%target251476251623%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx251937251938%_))
                  (let ((_%e251464251591%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx251937251938%_))))
                    (let ((_%tl251466251596%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251464251591%_)))
                          (_%hd251465251594%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251464251591%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251466251596%_))
                          (let ((_%e251467251599%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251466251596%_))))
                            (let ((_%tl251469251604%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251467251599%_)))
                                  (_%hd251468251602%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251467251599%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd251468251602%_))
                                  (let ((_%e251470251607%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd251468251602%_))))
                                    (let ((_%tl251472251612%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251470251607%_)))
                                          (_%hd251471251610%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251470251607%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd251471251610%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd251471251610%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251472251612%_))
                                                  (let ((_%e251473251615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251472251612%_))))
                                                    (let ((_%tl251475251620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251473251615%_)))
                                                          (_%hd251474251618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251473251615%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251475251620%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl251469251604%_))
                      (let ((_%__splice251941251942%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl251469251604%_
                                '0))))
                        (let ((_%tl251478251625%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice251941251942%_ '1)))
                              (_%target251476251623%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice251941251942%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251478251625%_))
                              (_%__match251984251985%_
                               _%e251464251591%_
                               _%hd251465251594%_
                               _%tl251466251596%_
                               _%e251467251599%_
                               _%hd251468251602%_
                               _%tl251469251604%_
                               _%e251470251607%_
                               _%hd251471251610%_
                               _%tl251472251612%_
                               _%e251473251615%_
                               _%hd251474251618%_
                               _%tl251475251620%_
                               _%__splice251941251942%_
                               _%target251476251623%_
                               _%tl251478251625%_)
                              (let ()
                                (declare (not safe))
                                (_%g251460251506%_)))))
                      (let () (declare (not safe)) (_%g251460251506%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl251469251604%_))
                      (let ((_%__splice251945251946%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl251469251604%_
                                '0))))
                        (let ((_%tl251495251529%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice251945251946%_ '1)))
                              (_%target251493251527%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice251945251946%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251495251529%_))
                              (_%__match252004252005%_
                               _%e251464251591%_
                               _%hd251465251594%_
                               _%tl251466251596%_
                               _%e251467251599%_
                               _%hd251468251602%_
                               _%tl251469251604%_
                               _%__splice251945251946%_
                               _%target251493251527%_
                               _%tl251495251529%_)
                              (let ()
                                (declare (not safe))
                                (_%g251460251506%_)))))
                      (let () (declare (not safe)) (_%g251460251506%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl251469251604%_))
                                                      (let ((_%__splice251945251946%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl251469251604%_
                        '0))))
                (let ((_%tl251495251529%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice251945251946%_ '1)))
                      (_%target251493251527%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice251945251946%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251495251529%_))
                      (_%__match252004252005%_
                       _%e251464251591%_
                       _%hd251465251594%_
                       _%tl251466251596%_
                       _%e251467251599%_
                       _%hd251468251602%_
                       _%tl251469251604%_
                       _%__splice251945251946%_
                       _%target251493251527%_
                       _%tl251495251529%_)
                      (let () (declare (not safe)) (_%g251460251506%_)))))
              (let () (declare (not safe)) (_%g251460251506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl251469251604%_))
                                                  (let ((_%__splice251945251946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl251469251604%_
                                                            '0))))
                                                    (let ((_%tl251495251529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251945251946%_
                                                              '1)))
                                                          (_%target251493251527%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251945251946%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251495251529%_))
                                                          (_%__match252004252005%_
                                                           _%e251464251591%_
                                                           _%hd251465251594%_
                                                           _%tl251466251596%_
                                                           _%e251467251599%_
                                                           _%hd251468251602%_
                                                           _%tl251469251604%_
                                                           _%__splice251945251946%_
                                                           _%target251493251527%_
                                                           _%tl251495251529%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g251460251506%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251460251506%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl251469251604%_))
                                              (let ((_%__splice251945251946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl251469251604%_
                                                        '0))))
                                                (let ((_%tl251495251529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice251945251946%_
                                                          '1)))
                                                      (_%target251493251527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice251945251946%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251495251529%_))
                                                      (_%__match252004252005%_
                                                       _%e251464251591%_
                                                       _%hd251465251594%_
                                                       _%tl251466251596%_
                                                       _%e251467251599%_
                                                       _%hd251468251602%_
                                                       _%tl251469251604%_
                                                       _%__splice251945251946%_
                                                       _%target251493251527%_
                                                       _%tl251495251529%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251460251506%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251460251506%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl251469251604%_))
                                      (let ((_%__splice251945251946%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl251469251604%_
                                                '0))))
                                        (let ((_%tl251495251529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice251945251946%_
                                                  '1)))
                                              (_%target251493251527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice251945251946%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251495251529%_))
                                              (_%__match252004252005%_
                                               _%e251464251591%_
                                               _%hd251465251594%_
                                               _%tl251466251596%_
                                               _%e251467251599%_
                                               _%hd251468251602%_
                                               _%tl251469251604%_
                                               _%__splice251945251946%_
                                               _%target251493251527%_
                                               _%tl251495251529%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g251460251506%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251460251506%_))))))
                          (let () (declare (not safe)) (_%g251460251506%_)))))
                  (let () (declare (not safe)) (_%g251460251506%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self251418%_ _%ctx251419%_ _%stx251420%_ _%args251421%_)
        (let ((_%self251424%_ _%self251418%_))
          (if (let ((__method252586
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self251424%_ 'check-arguments))))
                (if __method252586
                    (let ()
                      (declare (not safe))
                      (__method252586
                       _%self251424%_
                       _%ctx251419%_
                       _%stx251420%_
                       _%args251421%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self251424%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature251434%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251424%_ '2 '#f '#f)))
                     (_%signature251436%_ _%signature251434%_)
                     (_%$e251446%_
                      (if _%signature251436%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature251436%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e251446%_
                    ((lambda (_%unchecked251449%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked251449%_))
                           (let ((__tmp252608
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked251449%_
                                                          '()))
                                              (map (lambda (_%g251450251452%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251419%_
                                                        _%g251450251452%_)))
                                                   _%args251421%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp252608
                              _%stx251420%_
                              _%ctx251419%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx251419%_ _%stx251420%_))))
                     _%$e251446%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx251419%_ _%stx251420%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx251419%_ _%stx251420%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass251870 __method-table251871)
        (let ((__check-arguments251872
               (let ((__tmp252609
                      (lambda ()
                        (let ((__method251873
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table251871
                                  'check-arguments
                                  '#f))))
                          (if __method251873
                              __method251873
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp252609))))
          (lambda (_%self251418%_ _%ctx251419%_ _%stx251420%_ _%args251421%_)
            (let ((_%self251424%_ _%self251418%_))
              (if ((force __check-arguments251872)
                   _%self251424%_
                   _%ctx251419%_
                   _%stx251420%_
                   _%args251421%_)
                  (let* ((_%signature251434%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self251424%_
                             '2
                             '#f
                             '#f)))
                         (_%signature251436%_ _%signature251434%_)
                         (_%$e251446%_
                          (if _%signature251436%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature251436%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e251446%_
                        ((lambda (_%unchecked251449%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked251449%_))
                               (let ((__tmp252610
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked251449%_
                                                              '()))
                                                  (map (lambda (_%g251450251452%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx251419%_
                                                            _%g251450251452%_)))
                                                       _%args251421%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp252610
                                  _%stx251420%_
                                  _%ctx251419%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx251419%_
                                  _%stx251420%_))))
                         _%$e251446%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx251419%_ _%stx251420%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx251419%_ _%stx251420%_))))))))
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
      (lambda (_%self251171%_ _%ctx251172%_ _%stx251173%_ _%args251174%_)
        (let* ((_%self251177%_ _%self251171%_)
               (_%signature251186251188%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251177%_ '2 '#f '#f))))
          (if _%signature251186251188%_
              (let* ((_%signature251190%_ _%signature251186251188%_)
                     (_%argument-types251191251193%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature251190%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types251191251193%_
                    (let* ((_%argument-types251195%_
                            _%argument-types251191251193%_)
                           (_%argument-types251200%_
                            (let ((__tmp252611
                                   (lambda (_%t251198%_)
                                     (if _%t251198%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx251173%_
                                            _%t251198%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp252611
                               _%argument-types251195%_))))
                      (let _%loop251202%_ ((_%rest-args251204%_ _%args251174%_)
                                           (_%rest-types251205%_
                                            _%argument-types251200%_)
                                           (_%result251206%_ '#t))
                        (let* ((_%rest-args251207251215%_ _%rest-args251204%_)
                               (_%else251209251223%_
                                (lambda () _%result251206%_))
                               (_%K251211251284%_
                                (lambda (_%rest-args251226%_ _%arg251227%_)
                                  (let* ((_%rest-types251228251239%_
                                          _%rest-types251205%_)
                                         (_%E251232251243%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types251228251239%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K251235251272%_
                                           (lambda (_%rest-types251269%_
                                                    _%type251270%_)
                                             (_%loop251202%_
                                              _%rest-args251226%_
                                              _%rest-types251269%_
                                              (if (gxc#check-expression-type!
                                                   _%stx251173%_
                                                   _%arg251227%_
                                                   _%type251270%_)
                                                  _%result251206%_
                                                  '#f))))
                                          (_%K251234251263%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx251173%_
                                                _%argument-types251200%_))))
                                          (_%K251233251253%_
                                           (lambda (_%tail-type251247%_)
                                             (if (let ((__tmp252612
                                                        (lambda (_%g251248251250%_)
                                                          (gxc#check-expression-type!
                                                           _%stx251173%_
                                                           _%g251248251250%_
                                                           _%tail-type251247%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp252612
                                                    _%rest-args251226%_))
                                                 _%result251206%_
                                                 '#f))))
                                      (let ((_%try-match251230251266%_
                                             (lambda ()
                                               (if (null? _%rest-types251228251239%_)
                                                   (_%K251234251263%_)
                                                   (let ((_%tail-type251256%_
                                                          _%rest-types251228251239%_))
                                                     (_%K251233251253%_
                                                      _%tail-type251256%_))))))
                                        (if (pair? _%rest-types251228251239%_)
                                            (let ((_%tl251237251277%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types251228251239%_)))
                                                  (_%hd251236251275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types251228251239%_))))
                                              (let ((_%type251280%_
                                                     _%hd251236251275%_)
                                                    (_%rest-types251282%_
                                                     _%tl251237251277%_))
                                                (_%K251235251272%_
                                                 _%rest-types251282%_
                                                 _%type251280%_)))
                                            (_%try-match251230251266%_))))))))
                          (if (pair? _%rest-args251207251215%_)
                              (let ((_%hd251212251287%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args251207251215%_)))
                                    (_%tl251213251289%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args251207251215%_))))
                                (let* ((_%arg251292%_ _%hd251212251287%_)
                                       (_%rest-args251294%_
                                        _%tl251213251289%_))
                                  (_%K251211251284%_
                                   _%rest-args251294%_
                                   _%arg251292%_)))
                              (_%else251209251223%_)))))
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
      (lambda (_%self250982%_ _%ctx250983%_ _%stx250984%_ _%args250985%_)
        (let* ((_%self250988%_ _%self250982%_)
               (_%g250998251008%_
                (lambda (_%g250999251005%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250999251005%_))))
               (_%g250997251046%_
                (lambda (_%g250999251011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250999251011%_))
                      (let ((_%e251001251013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g250999251011%_))))
                        (let ((_%hd251002251016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251001251013%_)))
                              (_%tl251003251018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251001251013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251003251018%_))
                              ((lambda (_%g251000251021%_)
                                 (let* ((_%klass251033%_
                                         (let ((__tmp252613
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self250988%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx250984%_
                                            __tmp252613)))
                                        (_%object251035%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx250983%_
                                            _%g251000251021%_)))
                                        (_%instance?251040%_
                                         (let ((_%$e251037%_
                                                (gxc#expression-type?
                                                 _%object251035%_
                                                 _%klass251033%_)))
                                           (if _%$e251037%_
                                               _%$e251037%_
                                               (gxc#expression-type?
                                                _%g251000251021%_
                                                _%klass251033%_)))))
                                   (if _%instance?251040%_
                                       (let ((__tmp252614
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object251035%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g251000251021%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object251035%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252614
                                          _%stx250984%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx250983%_
                                          _%stx250984%_)))))
                               _%hd251002251016%_)
                              (_%g250998251008%_ _%g250999251011%_))))
                      (_%g250998251008%_ _%g250999251011%_)))))
          (_%g250997251046%_ _%args250985%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self250778%_ _%ctx250779%_ _%stx250780%_ _%args250781%_)
        (let* ((_%self250784%_ _%self250778%_)
               (_%g250794250804%_
                (lambda (_%g250795250801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250795250801%_))))
               (_%g250793250857%_
                (lambda (_%g250795250807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250795250807%_))
                      (let ((_%e250797250809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g250795250807%_))))
                        (let ((_%hd250798250812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250797250809%_)))
                              (_%tl250799250814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250797250809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250799250814%_))
                              ((lambda (_%g250796250817%_)
                                 (let* ((_%klass250829%_
                                         (let ((__tmp252615
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self250784%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx250780%_
                                            __tmp252615)))
                                        (_%object250831%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx250779%_
                                            _%g250796250817%_)))
                                        (_%instance?250836%_
                                         (let ((_%$e250833%_
                                                (gxc#expression-type?
                                                 _%object250831%_
                                                 _%klass250829%_)))
                                           (if _%$e250833%_
                                               _%$e250833%_
                                               (gxc#expression-type?
                                                _%g250796250817%_
                                                _%klass250829%_))))
                                        (_%klass250839%_ _%klass250829%_))
                                   (if _%instance?250836%_
                                       (let ((__tmp252616
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object250831%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g250796250817%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object250831%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252616
                                          _%stx250780%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass250839%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp252617
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass250839%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object250831%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp252617
                                              _%stx250780%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass250839%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp252618
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass250839%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object250831%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp252618
                                                  _%stx250780%_))
                                               (let ((__tmp252619
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self250784%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object250831%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp252619
                                                  _%stx250780%_)))))))
                               _%hd250798250812%_)
                              (_%g250794250804%_ _%g250795250807%_))))
                      (_%g250794250804%_ _%g250795250807%_)))))
          (_%g250793250857%_ _%args250781%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx250446%_)
        (let* ((_%__stx252014252015%_ _%stx250446%_)
               (_%g250451250492%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx252014252015%_)))))
          (let ((_%__kont252016252017%_ (lambda () '#t))
                (_%__kont252018252019%_ (lambda () '#t))
                (_%__kont252020252021%_
                 (lambda (_%g250465250558%_ _%g250466250559%_)
                   (let ((_%rator-type250580250582%_
                          (let ((__tmp252620
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g250466250559%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp252620))))
                     (if _%rator-type250580250582%_
                         (let* ((_%rator-type250584%_
                                 _%rator-type250580250582%_)
                                (_%rator-signature250585250587%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type250584%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type250584%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature250585250587%_
                               (let* ((_%rator-signature250589%_
                                       _%rator-signature250585250587%_)
                                      (_%rator-effect250590250592%_
                                       (if _%rator-signature250589%_
                                           (##direct-structure-ref
                                            _%rator-signature250589%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect250590250592%_
                                     (let ((_%rator-effect250594%_
                                            _%rator-effect250590250592%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect250594%_)
                                               (equal? '(alloc)
                                                       _%rator-effect250594%_))
                                           (let ((__tmp252621
                                                  (let ((__tmp252622
                                                         (lambda (_%g250599250602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g250600250604%_)
                   (cons _%g250599250602%_ _%g250600250604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp252622
                                                     '()
                                                     _%g250465250558%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp252621))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont252024252025%_ (lambda () '#f)))
            (let ((_%__match252103252104%_
                   (lambda (_%e250467250504%_
                            _%hd250468250507%_
                            _%tl250469250509%_
                            _%e250470250512%_
                            _%hd250471250515%_
                            _%tl250472250517%_
                            _%e250473250520%_
                            _%hd250474250523%_
                            _%tl250475250525%_
                            _%e250476250528%_
                            _%hd250477250531%_
                            _%tl250478250533%_
                            _%__splice252022252023%_
                            _%target250479250536%_
                            _%tl250481250538%_)
                     (letrec ((_%loop250482250541%_
                               (lambda (_%hd250480250544%_
                                        _%rand250486250546%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd250480250544%_))
                                     (let ((_%e250483250548%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd250480250544%_))))
                                       (let ((_%lp-tl250485250553%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e250483250548%_)))
                                             (_%lp-hd250484250551%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e250483250548%_))))
                                         (_%loop250482250541%_
                                          _%lp-tl250485250553%_
                                          (cons _%lp-hd250484250551%_
                                                _%rand250486250546%_))))
                                     (let ((_%rand250487250556%_
                                            (reverse _%rand250486250546%_)))
                                       (_%__kont252020252021%_
                                        _%rand250487250556%_
                                        _%hd250477250531%_))))))
                       (_%loop250482250541%_ _%target250479250536%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx252014252015%_))
                  (let ((_%e250453250635%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx252014252015%_))))
                    (let ((_%tl250455250640%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250453250635%_)))
                          (_%hd250454250638%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250453250635%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd250454250638%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd250454250638%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250455250640%_))
                                  (let ((_%e250456250643%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250455250640%_))))
                                    (let ((_%tl250458250648%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250456250643%_)))
                                          (_%hd250457250646%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250456250643%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250458250648%_))
                                          (_%__kont252016252017%_)
                                          (_%__kont252024252025%_))))
                                  (_%__kont252024252025%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd250454250638%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250455250640%_))
                                      (let ((_%e250462250620%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250455250640%_))))
                                        (let ((_%tl250464250625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250462250620%_)))
                                              (_%hd250463250623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250462250620%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250464250625%_))
                                              (_%__kont252018252019%_)
                                              (_%__kont252024252025%_))))
                                      (_%__kont252024252025%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd250454250638%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250455250640%_))
                                          (let ((_%e250470250512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250455250640%_))))
                                            (let ((_%tl250472250517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250470250512%_)))
                                                  (_%hd250471250515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250470250512%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd250471250515%_))
                                                  (let ((_%e250473250520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd250471250515%_))))
                                                    (let ((_%tl250475250525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250473250520%_)))
                                                          (_%hd250474250523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250473250520%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd250474250523%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd250474250523%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250475250525%_))
                          (let ((_%e250476250528%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250475250525%_))))
                            (let ((_%tl250478250533%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250476250528%_)))
                                  (_%hd250477250531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250476250528%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250478250533%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl250472250517%_))
                                      (let ((_%__splice252022252023%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl250472250517%_
                                                '0))))
                                        (let ((_%tl250481250538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice252022252023%_
                                                  '1)))
                                              (_%target250479250536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice252022252023%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250481250538%_))
                                              (_%__match252103252104%_
                                               _%e250453250635%_
                                               _%hd250454250638%_
                                               _%tl250455250640%_
                                               _%e250470250512%_
                                               _%hd250471250515%_
                                               _%tl250472250517%_
                                               _%e250473250520%_
                                               _%hd250474250523%_
                                               _%tl250475250525%_
                                               _%e250476250528%_
                                               _%hd250477250531%_
                                               _%tl250478250533%_
                                               _%__splice252022252023%_
                                               _%target250479250536%_
                                               _%tl250481250538%_)
                                              (_%__kont252024252025%_))))
                                      (_%__kont252024252025%_))
                                  (_%__kont252024252025%_))))
                          (_%__kont252024252025%_))
                      (_%__kont252024252025%_))
                  (_%__kont252024252025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont252024252025%_))))
                                          (_%__kont252024252025%_))
                                      (_%__kont252024252025%_))))
                          (_%__kont252024252025%_))))
                  (_%__kont252024252025%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx250441%_ _%klass250442%_)
        (let ((_%expr-type250444%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx250441%_))))
          (if _%expr-type250444%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type250444%_ _%klass250442%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx250419%_ _%expr250420%_ _%type250421%_)
        (if (not _%type250421%_)
            '#f
            (let ((_%$e250424%_
                   (eq? (##structure-ref _%type250421%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e250424%_
                  _%$e250424%_
                  (let ((_%expr-type250428%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr250420%_))))
                    (if (not _%expr-type250428%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type250428%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e250432%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type250428%_
                                      'gxc#!abort::t))))
                              (if _%$e250432%_
                                  _%$e250432%_
                                  (let ((_%$e250435%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type250428%_
                                            _%type250421%_))))
                                    (if _%$e250435%_
                                        _%$e250435%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type250421%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type250421%_
                                                   _%expr-type250428%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx250419%_
                                                   _%expr250420%_
                                                   _%expr-type250428%_
                                                   _%type250421%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self250233%_ _%ctx250234%_ _%stx250235%_ _%args250236%_)
        (let* ((_%self250239%_ _%self250233%_)
               (_%klass250249%_
                (let ((__tmp252623
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self250239%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx250235%_ __tmp252623)))
               (_%fields250251%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass250249%_
                           '5
                           '#f
                           '#f))))
               (_%args250257%_
                (map (lambda (_%g250252250254%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx250234%_ _%g250252250254%_)))
                     _%args250236%_))
               (_%inline-make-object250259%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self250239%_
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
                           _%self250239%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields250251%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass250262%_ _%klass250249%_)
               (_%$e250276%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass250262%_ '6 '#f '#f))))
          (if _%$e250276%_
              ((lambda (_%ctor250279%_)
                 (let ((_%$obj250281%_
                        (let ((__tmp252624
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp252624)))
                       (_%ctor-impl250282%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass250262%_
                           _%ctor250279%_))))
                   (let ((__tmp252625
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj250281%_ '())
                                                  (cons _%inline-make-object250259%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl250282%_
                                                            (let ((__tmp252626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl250282%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj250281%_ '()))
                                             _%args250257%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp252626
                       _%stx250235%_
                       _%ctx250234%_))
                    (let ((_%$ctor250284%_
                           (let ((__tmp252627
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp252627))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor250284%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self250239%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj250281%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor250279%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor250284%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor250284%_ '()))
                              (cons (cons '%#ref (cons _%$obj250281%_ '()))
                                    _%args250257%_)))
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
                             _%self250239%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor250279%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj250281%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp252625 _%stx250235%_))))
               _%$e250276%_)
              (let ((_%$e250286%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass250262%_
                        '10
                        '#f
                        '#f))))
                (if _%$e250286%_
                    ((lambda (_%metaclass250289%_)
                       (let* ((_%$obj250291%_
                               (let ((__tmp252628
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp252628)))
                              (_%metakons250293%_
                               (let ((__tmp252629
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx250235%_
                                         _%metaclass250289%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp252629
                                  'instance-init!)))
                              (__tmp252630
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj250291%_
                                                             '())
                                                       (cons _%inline-make-object250259%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons250293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp252631
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons250293%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self250239%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj250291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args250257%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp252631
                            _%stx250235%_
                            _%ctx250234%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self250239%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj250291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args250257%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj250291%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252630 _%stx250235%_)))
                     _%$e250286%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass250262%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp252632
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args250257%_))))
                              (declare (not safe))
                              (##fx= __tmp252632 _%fields250251%_))
                            (let ((__tmp252633
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self250239%_
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
                                              _%self250239%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args250257%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp252633
                               _%stx250235%_))
                            (let ((__tmp252635
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self250239%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp252634
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass250262%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx250235%_
                               __tmp252635
                               __tmp252634)))
                        (let ((_%$obj250298%_
                               (let ((__tmp252636
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp252636))))
                          (let _%lp250300%_ ((_%rest250302%_ _%args250257%_)
                                             (_%initializers250303%_ '()))
                            (let* ((_%__stx252106252107%_ _%rest250302%_)
                                   (_%g250307250328%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx252106252107%_)))))
                              (let ((_%__kont252108252109%_
                                     (lambda (_%g250309250382%_
                                              _%g250310250383%_
                                              _%g250311250384%_)
                                       (let* ((_%slot250411%_
                                               (let ((__tmp252637
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g250311250384%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp252637)))
                                              (_%off250413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass250262%_
                                                  _%slot250411%_))))
                                         (if _%off250413%_
                                             (_%lp250300%_
                                              _%g250309250382%_
                                              (cons (cons _%off250413%_
                                                          _%g250310250383%_)
                                                    _%initializers250303%_))
                                             (let ((__tmp252638
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self250239%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx250235%_
                                                __tmp252638
                                                _%slot250411%_))))))
                                    (_%__kont252110252111%_
                                     (lambda ()
                                       (let ((__tmp252639
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj250298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object250259%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp252642
                                     (cons (cons '%#ref
                                                 (cons _%$obj250298%_ '()))
                                           '()))
                                    (__tmp252640
                                     (let ((__tmp252641
                                            (lambda (_%i250342%_ _%r250343%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self250239%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i250342%_) '()))
                              (cons (cons '%#ref (cons _%$obj250298%_ '()))
                                    (cons (cdr _%i250342%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r250343%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp252641
                                        '()
                                        _%initializers250303%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp252642 __tmp252640)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252639
                                          _%stx250235%_))))
                                    (_%__kont252112252113%_
                                     (lambda ()
                                       (let ((__tmp252643
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj250298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object250259%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj250298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args250257%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj250298%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252643
                                          _%stx250235%_)))))
                                (let* ((_%g250305250345%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx252106252107%_))
                                              (_%__kont252110252111%_)
                                              (_%__kont252112252113%_))))
                                       (_%__match252143252144%_
                                        (lambda (_%e250312250350%_
                                                 _%hd250313250353%_
                                                 _%tl250314250355%_
                                                 _%e250315250358%_
                                                 _%hd250316250361%_
                                                 _%tl250317250363%_
                                                 _%e250318250366%_
                                                 _%hd250319250369%_
                                                 _%tl250320250371%_
                                                 _%e250321250374%_
                                                 _%hd250322250377%_
                                                 _%tl250323250379%_)
                                          (let ((_%g250309250382%_
                                                 _%tl250323250379%_)
                                                (_%g250310250383%_
                                                 _%hd250322250377%_)
                                                (_%g250311250384%_
                                                 _%hd250319250369%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g250311250384%_))
                                                (_%__kont252108252109%_
                                                 _%g250309250382%_
                                                 _%g250310250383%_
                                                 _%g250311250384%_)
                                                (_%__kont252112252113%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx252106252107%_))
                                      (let ((_%e250312250350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx252106252107%_))))
                                        (let ((_%tl250314250355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250312250350%_)))
                                              (_%hd250313250353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250312250350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd250313250353%_))
                                              (let ((_%e250315250358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd250313250353%_))))
                                                (let ((_%tl250317250363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250315250358%_)))
                                                      (_%hd250316250361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250315250358%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd250316250361%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd250316250361%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250317250363%_))
                      (let ((_%e250318250366%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250317250363%_))))
                        (let ((_%tl250320250371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250318250366%_)))
                              (_%hd250319250369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250318250366%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250320250371%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250314250355%_))
                                  (let ((_%e250321250374%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250314250355%_))))
                                    (let ((_%tl250323250379%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250321250374%_)))
                                          (_%hd250322250377%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250321250374%_))))
                                      (_%__match252143252144%_
                                       _%e250312250350%_
                                       _%hd250313250353%_
                                       _%tl250314250355%_
                                       _%e250315250358%_
                                       _%hd250316250361%_
                                       _%tl250317250363%_
                                       _%e250318250366%_
                                       _%hd250319250369%_
                                       _%tl250320250371%_
                                       _%e250321250374%_
                                       _%hd250322250377%_
                                       _%tl250323250379%_)))
                                  (_%__kont252112252113%_))
                              (_%__kont252112252113%_))))
                      (_%__kont252112252113%_))
                  (_%__kont252112252113%_))
              (_%__kont252112252113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont252112252113%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250305250345%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self250016%_ _%ctx250017%_ _%stx250018%_ _%args250019%_)
        (let* ((_%self250022%_ _%self250016%_)
               (_%arguments-ok?250032%_
                (let ((__method252587
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self250022%_ 'check-arguments))))
                  (if __method252587
                      (let ()
                        (declare (not safe))
                        (__method252587
                         _%self250022%_
                         _%ctx250017%_
                         _%stx250018%_
                         _%args250019%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self250022%_
                                 'check-arguments))
                        '#!void))))
               (_%g250034250044%_
                (lambda (_%g250035250041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250035250041%_))))
               (_%g250033250108%_
                (lambda (_%g250035250047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250035250047%_))
                      (let ((_%e250037250049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g250035250047%_))))
                        (let ((_%hd250038250052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250037250049%_)))
                              (_%tl250039250054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250037250049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250039250054%_))
                              ((lambda (_%g250036250057%_)
                                 (let* ((_%klass250070%_
                                         (let ((__tmp252644
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self250022%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx250018%_
                                            __tmp252644)))
                                        (_%field250072%_
                                         (let ((__tmp252645
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self250022%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass250070%_
                                            __tmp252645)))
                                        (_%object250074%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx250017%_
                                            _%g250036250057%_)))
                                        (_%klass250077%_ _%klass250070%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass250077%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp252646
                                              (cons (if (or _%arguments-ok?250032%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self250022%_
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
                                 _%self250022%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field250072%_ '()))
                        (cons _%object250074%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252646
                                          _%stx250018%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass250077%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp252647
                                                  (cons (if (or _%arguments-ok?250032%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self250022%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self250022%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field250072%_ '()))
                            (cons _%object250074%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp252647
                                              _%stx250018%_))
                                           (let ((_%$e250096%_
                                                  (let ((__tmp252648
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self250022%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass250077%_
                                                     __tmp252648))))
                                             (if _%$e250096%_
                                                 ((lambda (_%klass250099%_)
                                                    (let ((__tmp252649
                                                           (cons (if (or _%arguments-ok?250032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self250022%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self250022%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field250072%_ '()))
                                     (cons _%object250074%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp252649 _%stx250018%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e250096%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self250022%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp252650
                                                            (let ((_%$obj250105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp252651
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp252651))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj250105%_ '())
                                              (cons _%object250074%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass250077%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj250105%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self250022%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field250072%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj250105%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?250032%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj250105%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self250022%_
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
                                                             _%self250022%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj250105%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self250022%_
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
               (gxc#xform-wrap-source __tmp252650 _%stx250018%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp252652
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object250074%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self250022%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp252652 _%stx250018%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd250038250052%_)
                              (_%g250034250044%_ _%g250035250047%_))))
                      (_%g250034250044%_ _%g250035250047%_)))))
          (_%g250033250108%_ _%args250019%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass251874 __method-table251875)
        (let ((__check-arguments251876
               (let ((__tmp252653
                      (lambda ()
                        (let ((__method251877
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table251875
                                  'check-arguments
                                  '#f))))
                          (if __method251877
                              __method251877
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp252653)))
              (__slot251878
               (let ((__slot251879
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass251874 'slot))))
                 (if __slot251879
                     __slot251879
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self250016%_ _%ctx250017%_ _%stx250018%_ _%args250019%_)
            (let* ((_%self250022%_ _%self250016%_)
                   (_%arguments-ok?250032%_
                    ((force __check-arguments251876)
                     _%self250022%_
                     _%ctx250017%_
                     _%stx250018%_
                     _%args250019%_))
                   (_%g250034250044%_
                    (lambda (_%g250035250041%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g250035250041%_))))
                   (_%g250033250108%_
                    (lambda (_%g250035250047%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g250035250047%_))
                          (let ((_%e250037250049%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g250035250047%_))))
                            (let ((_%hd250038250052%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250037250049%_)))
                                  (_%tl250039250054%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250037250049%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250039250054%_))
                                  ((lambda (_%g250036250057%_)
                                     (let* ((_%klass250070%_
                                             (let ((__tmp252654
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self250022%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx250018%_
                                                __tmp252654)))
                                            (_%field250072%_
                                             (let ((__tmp252655
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self250022%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass250070%_
                                                __tmp252655)))
                                            (_%object250074%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx250017%_
                                                _%g250036250057%_)))
                                            (_%klass250077%_ _%klass250070%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass250077%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp252656
                                                  (cons (if (or _%arguments-ok?250032%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self250022%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self250022%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field250072%_ '()))
                            (cons _%object250074%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp252656
                                              _%stx250018%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass250077%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp252657
                                                      (cons (if (or _%arguments-ok?250032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self250022%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self250022%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field250072%_ '()))
                                (cons _%object250074%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp252657
                                                  _%stx250018%_))
                                               (let ((_%$e250096%_
                                                      (let ((__tmp252658
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self250022%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass250077%_ __tmp252658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e250096%_
                                                     ((lambda (_%klass250099%_)
                                                        (let ((__tmp252659
                                                               (cons (if (or _%arguments-ok?250032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self250022%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self250022%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field250072%_ '()))
                                         (cons _%object250074%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp252659 _%stx250018%_)))
              _%$e250096%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self250022%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp252660
                                                                (let ((_%$obj250105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252661
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp252661))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj250105%_ '())
                                                  (cons _%object250074%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass250077%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj250105%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self250022%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field250072%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj250105%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?250032%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj250105%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self250022%_
                               __slot251878
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
                        (##unchecked-structure-ref _%self250022%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj250105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self250022%_
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
                   (gxc#xform-wrap-source __tmp252660 _%stx250018%_))
                 (let ((__tmp252662
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object250074%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self250022%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp252662 _%stx250018%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd250038250052%_)
                                  (_%g250034250044%_ _%g250035250047%_))))
                          (_%g250034250044%_ _%g250035250047%_)))))
              (_%g250033250108%_ _%args250019%_))))))
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
      (lambda (_%self249780%_ _%ctx249781%_ _%stx249782%_ _%args249783%_)
        (let* ((_%self249786%_ _%self249780%_)
               (_%arguments-ok?249796%_
                (let ((__method252588
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self249786%_ 'check-arguments))))
                  (if __method252588
                      (let ()
                        (declare (not safe))
                        (__method252588
                         _%self249786%_
                         _%ctx249781%_
                         _%stx249782%_
                         _%args249783%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self249786%_
                                 'check-arguments))
                        '#!void))))
               (_%g249798249812%_
                (lambda (_%g249799249809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249799249809%_))))
               (_%g249797249891%_
                (lambda (_%g249799249815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249799249815%_))
                      (let ((_%e249802249817%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g249799249815%_))))
                        (let ((_%hd249803249820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249802249817%_)))
                              (_%tl249804249822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249802249817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249804249822%_))
                              (let ((_%e249805249825%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249804249822%_))))
                                (let ((_%hd249806249828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249805249825%_)))
                                      (_%tl249807249830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249805249825%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249807249830%_))
                                      ((lambda (_%g249800249833%_
                                                _%g249801249834%_)
                                         (let* ((_%klass249850%_
                                                 (let ((__tmp252663
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self249786%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx249782%_
                                                    __tmp252663)))
                                                (_%field249852%_
                                                 (let ((__tmp252664
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self249786%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass249850%_
                                                    __tmp252664)))
                                                (_%object249854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx249781%_
                                                    _%g249801249834%_)))
                                                (_%value249856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx249781%_
                                                    _%g249800249833%_)))
                                                (_%klass249859%_
                                                 _%klass249850%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass249859%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp252665
                                                      (cons (if (or _%arguments-ok?249796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self249786%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self249786%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field249852%_ '()))
                                (cons _%object249854%_
                                      (cons _%value249856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp252665
                                                  _%stx249782%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass249859%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp252666
                                                          (cons (if (or _%arguments-ok?249796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self249786%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self249786%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field249852%_ '()))
                                    (cons _%object249854%_
                                          (cons _%value249856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252666
                                                      _%stx249782%_))
                                                   (let ((_%$e249879%_
                                                          (let ((__tmp252667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self249786%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass249859%_
                     __tmp252667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e249879%_
                                                         ((lambda (_%klass249882%_)
                                                            (let ((__tmp252668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?249796%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self249786%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self249786%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field249852%_ '()))
                                             (cons _%object249854%_
                                                   (cons _%value249856%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252668 _%stx249782%_)))
                  _%$e249879%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self249786%_ '4 '#f '#f))
                     (let ((__tmp252669
                            (let ((_%$obj249888%_
                                   (let ((__tmp252670
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp252670))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj249888%_ '())
                                                      (cons _%object249854%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass249859%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj249888%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self249786%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field249852%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj249888%_
                                                              '()))
                                                  (cons _%value249856%_
                                                        '())))))
                          (cons (if _%arguments-ok?249796%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj249888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self249786%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value249856%_ '())))))
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
                             _%self249786%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj249888%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self249786%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value249856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp252669 _%stx249782%_))
                     (let ((__tmp252671
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object249854%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self249786%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value249856%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp252671
                        _%stx249782%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd249806249828%_
                                       _%hd249803249820%_)
                                      (_%g249798249812%_ _%g249799249815%_))))
                              (_%g249798249812%_ _%g249799249815%_))))
                      (_%g249798249812%_ _%g249799249815%_)))))
          (_%g249797249891%_ _%args249783%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass251880 __method-table251881)
        (let ((__check-arguments251882
               (let ((__tmp252672
                      (lambda ()
                        (let ((__method251883
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table251881
                                  'check-arguments
                                  '#f))))
                          (if __method251883
                              __method251883
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp252672))))
          (lambda (_%self249780%_ _%ctx249781%_ _%stx249782%_ _%args249783%_)
            (let* ((_%self249786%_ _%self249780%_)
                   (_%arguments-ok?249796%_
                    ((force __check-arguments251882)
                     _%self249786%_
                     _%ctx249781%_
                     _%stx249782%_
                     _%args249783%_))
                   (_%g249798249812%_
                    (lambda (_%g249799249809%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g249799249809%_))))
                   (_%g249797249891%_
                    (lambda (_%g249799249815%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g249799249815%_))
                          (let ((_%e249802249817%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g249799249815%_))))
                            (let ((_%hd249803249820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249802249817%_)))
                                  (_%tl249804249822%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249802249817%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249804249822%_))
                                  (let ((_%e249805249825%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249804249822%_))))
                                    (let ((_%hd249806249828%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249805249825%_)))
                                          (_%tl249807249830%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249805249825%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249807249830%_))
                                          ((lambda (_%g249800249833%_
                                                    _%g249801249834%_)
                                             (let* ((_%klass249850%_
                                                     (let ((__tmp252673
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self249786%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx249782%_
                                                        __tmp252673)))
                                                    (_%field249852%_
                                                     (let ((__tmp252674
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self249786%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass249850%_
                                                        __tmp252674)))
                                                    (_%object249854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx249781%_
                                                        _%g249801249834%_)))
                                                    (_%value249856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx249781%_
                                                        _%g249800249833%_)))
                                                    (_%klass249859%_
                                                     _%klass249850%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass249859%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp252675
                                                          (cons (if (or _%arguments-ok?249796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self249786%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self249786%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field249852%_ '()))
                                    (cons _%object249854%_
                                          (cons _%value249856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252675
                                                      _%stx249782%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass249859%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp252676
                                                              (cons (if (or _%arguments-ok?249796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self249786%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self249786%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field249852%_ '()))
                                        (cons _%object249854%_
                                              (cons _%value249856%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp252676 _%stx249782%_))
               (let ((_%$e249879%_
                      (let ((__tmp252677
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self249786%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass249859%_
                         __tmp252677))))
                 (if _%$e249879%_
                     ((lambda (_%klass249882%_)
                        (let ((__tmp252678
                               (cons (if (or _%arguments-ok?249796%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self249786%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self249786%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field249852%_
                                                             '()))
                                                 (cons _%object249854%_
                                                       (cons _%value249856%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp252678 _%stx249782%_)))
                      _%$e249879%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self249786%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp252679
                                (let ((_%$obj249888%_
                                       (let ((__tmp252680
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp252680))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj249888%_
                                                                '())
                                                          (cons _%object249854%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass249859%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj249888%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self249786%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field249852%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj249888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value249856%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?249796%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj249888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self249786%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value249856%_ '())))))
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
                                 _%self249786%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj249888%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self249786%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value249856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp252679 _%stx249782%_))
                         (let ((__tmp252681
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object249854%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self249786%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value249856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp252681
                            _%stx249782%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd249806249828%_
                                           _%hd249803249820%_)
                                          (_%g249798249812%_
                                           _%g249799249815%_))))
                                  (_%g249798249812%_ _%g249799249815%_))))
                          (_%g249798249812%_ _%g249799249815%_)))))
              (_%g249797249891%_ _%args249783%_))))))
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
      (lambda (_%self249596%_ _%ctx249597%_ _%stx249598%_ _%args249599%_)
        (let* ((_%self249602%_ _%self249596%_)
               (_%self249611249621%_ _%self249602%_)
               (_%E249613249624%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self249611249621%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K249614249634%_
                (lambda (_%inline249627%_ _%dispatch249628%_ _%arity249629%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self249602%_
                         _%args249599%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx249598%_
                         _%arity249629%_)))
                  (if _%inline249627%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp252682 (_%inline249627%_ _%stx249598%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp252682
                           _%stx249598%_
                           _%ctx249597%_)))
                      (if (and _%dispatch249628%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch249628%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch249628%_))
                            (let ((__tmp252683
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch249628%_
                                                           '()))
                                               _%args249599%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp252683
                               _%stx249598%_
                               _%ctx249597%_)))
                          (gxc#!procedure::optimize-call
                           _%self249602%_
                           _%ctx249597%_
                           _%stx249598%_
                           _%args249599%_)))))
               (_%e249615249637%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249611249621%_ '1 '#f '#f)))
               (_%e249616249640%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249611249621%_ '2 '#f '#f)))
               (_%e249617249643%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249611249621%_ '3 '#f '#f)))
               (_%arity249646%_ _%e249617249643%_)
               (_%e249618249648%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249611249621%_ '4 '#f '#f)))
               (_%dispatch249651%_ _%e249618249648%_)
               (_%e249619249653%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249611249621%_ '5 '#f '#f)))
               (_%inline249656%_ _%e249619249653%_))
          (_%K249614249634%_
           _%inline249656%_
           _%dispatch249651%_
           _%arity249646%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self249448%_ _%ctx249449%_ _%stx249450%_ _%args249451%_)
        (let* ((_%self249454%_ _%self249448%_)
               (_%$e249468%_
                (let ((__tmp252685
                       (lambda (_%g249463249465%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g249463249465%_
                            _%args249451%_))))
                      (__tmp252684
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self249454%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp252685 __tmp252684))))
          (if _%$e249468%_
              ((lambda (_%clause249471%_)
                 (let ((__method252589
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause249471%_ 'optimize-call))))
                   (if __method252589
                       (let ()
                         (declare (not safe))
                         (__method252589
                          _%clause249471%_
                          _%ctx249449%_
                          _%stx249450%_
                          _%args249451%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause249471%_
                                  'optimize-call))
                         '#!void))))
               _%$e249468%_)
              (let ((__tmp252686
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self249454%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx249450%_
                 __tmp252686))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self249189%_ _%ctx249190%_ _%stx249191%_ _%args249192%_)
        (let* ((_%self249195%_ _%self249189%_)
               (_%self249204249213%_ _%self249195%_)
               (_%E249206249216%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self249204249213%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K249207249307%_
                (lambda (_%dispatch249219%_ _%table249220%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch249219%_))
                      (let* ((_%g249221249231%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch249219%_)))
                             (_%else249223249239%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch249219%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx249190%_
                                   _%stx249191%_))))
                             (_%K249225249288%_
                              (lambda (_%main249242%_ _%keys249243%_)
                                (let ((_g252687_
                                       (gxc#!kw-lambda-split-args
                                        _%stx249191%_
                                        _%args249192%_)))
                                  (begin
                                    (let ((_g252688_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g252687_)
                                                 (##values-length _g252687_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g252688_ 2)))
                                          (error "Context expects 2 values"
                                                 _g252688_)))
                                    (let ((_%pargs249245%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g252687_ 0)))
                                          (_%kwargs249246%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g252687_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main249242%_))
                                        (if _%table249220%_
                                            (let ((_%xargs249254%_
                                                   (map (lambda (_%key249248%_)
                                                          (let ((_%$e249250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key249248%_ _%kwargs249246%_))))
                    (if _%$e249250%_ _%$e249250%_ '(%#ref absent-value))))
                _%keys249243%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw249256%_)
                                                 (if (memq (car _%kw249256%_)
                                                           _%keys249243%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx249191%_
                                                        _%keys249243%_
                                                        _%kw249256%_))))
                                               _%kwargs249246%_)
                                              (let ((__tmp252689
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main249242%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs249245%_
                                  _%xargs249254%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp252689
                                                 _%stx249191%_
                                                 _%ctx249190%_)))
                                            (let* ((_%kwt249258%_
                                                    (let ((__tmp252690
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp252690)))
                                                   (_%kwvars249262%_
                                                    (map (lambda (_%_249260%_)
                                                           (let ((__tmp252691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp252691)))
                 _%kwargs249246%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind249267%_
                                                    (map (lambda (_%kw249264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar249265%_)
                   (cons (cons _%kwvar249265%_ '())
                         (cons (cdr _%kw249264%_) '())))
                 _%kwargs249246%_
                 _%kwvars249262%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset249272%_
                                                    (map (lambda (_%kw249269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar249270%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt249258%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw249269%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar249270%_
                                                             '()))
                                                 '()))))))
                 _%kwargs249246%_
                 _%kwvars249262%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs249277%_
                                                    (map (lambda (_%kw249274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar249275%_)
                   (cons (car _%kw249274%_)
                         (cons '%#ref (cons _%kwvar249275%_ '()))))
                 _%kwargs249246%_
                 _%kwvars249262%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs249285%_
                                                    (map (lambda (_%key249279%_)
                                                           (let ((_%$e249281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key249279%_ _%xkwargs249277%_))))
                     (if _%$e249281%_ _%$e249281%_ '(%#ref absent-value))))
                 _%keys249243%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252692
                                                    (cons '%#let-values
                                                          (cons _%kwbind249267%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt249258%_ '())
                                                      (cons (let ((__tmp252693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs249246%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252693 _%stx249191%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp252694
                                                             (cons (let ((__tmp252695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main249242%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt249258%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs249245%_
                                                       _%xargs249285%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp252695 _%stx249191%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp252694 _%kwset249272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp252692
                                               _%stx249191%_
                                               _%ctx249190%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g249221249231%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e249226249291%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g249221249231%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e249227249294%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g249221249231%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e249228249297%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g249221249231%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys249300%_ _%e249228249297%_)
                                   (_%e249229249302%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g249221249231%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main249305%_ _%e249229249302%_))
                              (_%K249225249288%_
                               _%main249305%_
                               _%keys249300%_))
                            (_%else249223249239%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx249190%_ _%stx249191%_)))))
               (_%e249208249310%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249204249213%_ '1 '#f '#f)))
               (_%e249209249313%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249204249213%_ '2 '#f '#f)))
               (_%e249210249316%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249204249213%_ '3 '#f '#f)))
               (_%table249319%_ _%e249210249316%_)
               (_%e249211249321%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249204249213%_ '4 '#f '#f)))
               (_%dispatch249324%_ _%e249211249321%_))
          (_%K249207249307%_ _%dispatch249324%_ _%table249319%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx248802%_ _%args248803%_)
        (let _%lp248805%_ ((_%rest248807%_ _%args248803%_)
                           (_%pargs248808%_ '())
                           (_%kwargs248809%_ '()))
          (let* ((_%__stx252148252149%_ _%rest248807%_)
                 (_%g248815248867%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx252148252149%_)))))
            (let ((_%__kont252150252151%_
                   (lambda (_%g248817249046%_ _%g248818249047%_)
                     (_%lp248805%_
                      _%g248817249046%_
                      (cons _%g248818249047%_ _%pargs248808%_)
                      _%kwargs248809%_)))
                  (_%__kont252152252153%_
                   (lambda (_%g248832248992%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g248832248992%_
                                _%pargs248808%_))
                             (reverse _%kwargs248809%_))))
                  (_%__kont252154252155%_
                   (lambda (_%g248843248939%_
                            _%g248844248940%_
                            _%g248845248941%_)
                     (let ((_%kw248958%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g248845248941%_))))
                       (if (assq _%kw248958%_ _%kwargs248809%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx248802%_
                              _%kw248958%_))
                           (_%lp248805%_
                            _%g248843248939%_
                            _%pargs248808%_
                            (cons (cons _%kw248958%_ _%g248844248940%_)
                                  _%kwargs248809%_))))))
                  (_%__kont252156252157%_
                   (lambda (_%g248858248887%_ _%g248859248888%_)
                     (_%lp248805%_
                      _%g248858248887%_
                      (cons _%g248859248888%_ _%pargs248808%_)
                      _%kwargs248809%_)))
                  (_%__kont252158252159%_
                   (lambda ()
                     (values (reverse _%pargs248808%_)
                             (reverse _%kwargs248809%_)))))
              (let ((_%__match252255252256%_
                     (lambda (_%e248846248907%_
                              _%hd248847248910%_
                              _%tl248848248912%_
                              _%e248849248915%_
                              _%hd248850248918%_
                              _%tl248851248920%_
                              _%e248852248923%_
                              _%hd248853248926%_
                              _%tl248854248928%_
                              _%e248855248931%_
                              _%hd248856248934%_
                              _%tl248857248936%_)
                       (let ((_%g248843248939%_ _%tl248857248936%_)
                             (_%g248844248940%_ _%hd248856248934%_)
                             (_%g248845248941%_ _%hd248853248926%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g248845248941%_))
                             (_%__kont252154252155%_
                              _%g248843248939%_
                              _%g248844248940%_
                              _%g248845248941%_)
                             (_%__kont252156252157%_
                              _%tl248848248912%_
                              _%hd248847248910%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx252148252149%_))
                    (let ((_%e248819249011%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx252148252149%_))))
                      (let ((_%tl248821249016%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e248819249011%_)))
                            (_%hd248820249014%_
                             (let ()
                               (declare (not safe))
                               (##car _%e248819249011%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd248820249014%_))
                            (let ((_%e248822249019%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd248820249014%_))))
                              (let ((_%tl248824249024%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e248822249019%_)))
                                    (_%hd248823249022%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e248822249019%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd248823249022%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd248823249022%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl248824249024%_))
                                            (let ((_%e248825249027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl248824249024%_))))
                                              (let ((_%tl248827249032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e248825249027%_)))
                                                    (_%hd248826249030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e248825249027%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd248826249030%_))
                                                    (let ((_%e248828249035%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd248826249030%_))))
                                                      (if (equal? _%e248828249035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl248827249032%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl248821249016%_))
                          (let ((_%e248829249038%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl248821249016%_))))
                            (let ((_%tl248831249043%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248829249038%_)))
                                  (_%hd248830249041%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248829249038%_))))
                              (_%__kont252150252151%_
                               _%tl248831249043%_
                               _%hd248830249041%_)))
                          (_%__kont252156252157%_
                           _%tl248821249016%_
                           _%hd248820249014%_))
                      (_%__kont252156252157%_
                       _%tl248821249016%_
                       _%hd248820249014%_))
                  (if (equal? _%e248828249035%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl248827249032%_))
                          (_%__kont252152252153%_ _%tl248821249016%_)
                          (_%__kont252156252157%_
                           _%tl248821249016%_
                           _%hd248820249014%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl248827249032%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl248821249016%_))
                              (let ((_%e248855248931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl248821249016%_))))
                                (let ((_%tl248857248936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e248855248931%_)))
                                      (_%hd248856248934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e248855248931%_))))
                                  (_%__match252255252256%_
                                   _%e248819249011%_
                                   _%hd248820249014%_
                                   _%tl248821249016%_
                                   _%e248822249019%_
                                   _%hd248823249022%_
                                   _%tl248824249024%_
                                   _%e248825249027%_
                                   _%hd248826249030%_
                                   _%tl248827249032%_
                                   _%e248855248931%_
                                   _%hd248856248934%_
                                   _%tl248857248936%_)))
                              (_%__kont252156252157%_
                               _%tl248821249016%_
                               _%hd248820249014%_))
                          (_%__kont252156252157%_
                           _%tl248821249016%_
                           _%hd248820249014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl248827249032%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl248821249016%_))
                                                            (let ((_%e248855248931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl248821249016%_))))
                      (let ((_%tl248857248936%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e248855248931%_)))
                            (_%hd248856248934%_
                             (let ()
                               (declare (not safe))
                               (##car _%e248855248931%_))))
                        (_%__match252255252256%_
                         _%e248819249011%_
                         _%hd248820249014%_
                         _%tl248821249016%_
                         _%e248822249019%_
                         _%hd248823249022%_
                         _%tl248824249024%_
                         _%e248825249027%_
                         _%hd248826249030%_
                         _%tl248827249032%_
                         _%e248855248931%_
                         _%hd248856248934%_
                         _%tl248857248936%_)))
                    (_%__kont252156252157%_
                     _%tl248821249016%_
                     _%hd248820249014%_))
                (_%__kont252156252157%_
                 _%tl248821249016%_
                 _%hd248820249014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont252156252157%_
                                             _%tl248821249016%_
                                             _%hd248820249014%_))
                                        (_%__kont252156252157%_
                                         _%tl248821249016%_
                                         _%hd248820249014%_))
                                    (_%__kont252156252157%_
                                     _%tl248821249016%_
                                     _%hd248820249014%_))))
                            (_%__kont252156252157%_
                             _%tl248821249016%_
                             _%hd248820249014%_))))
                    (_%__kont252158252159%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self248786%_ _%ctx248787%_ _%stx248788%_ _%args248789%_)
        (let ((_%self248792%_ _%self248786%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx248787%_ _%stx248788%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self248476%_ _%stx248477%_)
        (let* ((_%__stx252264252265%_ _%stx248477%_)
               (_%g248480248520%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx252264252265%_)))))
          (let ((_%__kont252266252267%_
                 (lambda (_%g248482248624%_ _%g248483248625%_)
                   (let ((_%$e248652%_
                          (member 'return:
                                  (let ((__tmp252696
                                         (lambda (_%g248644248647%_
                                                  _%g248645248649%_)
                                           (cons _%g248644248647%_
                                                 _%g248645248649%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp252696
                                     '()
                                     _%g248483248625%_))
                                  gx#stx-eq?)))
                     (if _%$e248652%_
                         ((lambda (_%tail248655%_)
                            (let ((_%type248657%_
                                   (let ((__tmp252697
                                          (let ((__tmp252698
                                                 (cadr _%tail248655%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp252698))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx248477%_
                                      __tmp252697))))
                              (gxc#check-return-type!
                               _%stx248477%_
                               _%g248482248624%_
                               _%type248657%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self248476%_
                                 _%g248482248624%_))))
                          _%$e248652%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self248476%_
                            _%g248482248624%_))))))
                (_%__kont252270252271%_
                 (lambda (_%g248505248549%_ _%g248506248550%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self248476%_ _%g248505248549%_)))))
            (let ((_%__match252301252302%_
                   (lambda (_%e248484248570%_
                            _%hd248485248573%_
                            _%tl248486248575%_
                            _%e248487248578%_
                            _%hd248488248581%_
                            _%tl248489248583%_
                            _%e248490248586%_
                            _%hd248491248589%_
                            _%tl248492248591%_
                            _%__splice252268252269%_
                            _%target248493248594%_
                            _%tl248495248596%_)
                     (letrec ((_%loop248496248599%_
                               (lambda (_%hd248494248602%_
                                        _%signature248500248604%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd248494248602%_))
                                     (let ((_%e248497248606%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd248494248602%_))))
                                       (let ((_%lp-tl248499248611%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e248497248606%_)))
                                             (_%lp-hd248498248609%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e248497248606%_))))
                                         (_%loop248496248599%_
                                          _%lp-tl248499248611%_
                                          (cons _%lp-hd248498248609%_
                                                _%signature248500248604%_))))
                                     (let ((_%signature248501248614%_
                                            (reverse _%signature248500248604%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl248489248583%_))
                                           (let ((_%e248502248616%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl248489248583%_))))
                                             (let ((_%tl248504248621%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e248502248616%_)))
                                                   (_%hd248503248619%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e248502248616%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl248504248621%_))
                                                   (_%__kont252266252267%_
                                                    _%hd248503248619%_
                                                    _%signature248501248614%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g248480248520%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g248480248520%_))))))))
                       (_%loop248496248599%_ _%target248493248594%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx252264252265%_))
                  (let ((_%e248484248570%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx252264252265%_))))
                    (let ((_%tl248486248575%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e248484248570%_)))
                          (_%hd248485248573%_
                           (let ()
                             (declare (not safe))
                             (##car _%e248484248570%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl248486248575%_))
                          (let ((_%e248487248578%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl248486248575%_))))
                            (let ((_%tl248489248583%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248487248578%_)))
                                  (_%hd248488248581%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248487248578%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd248488248581%_))
                                  (let ((_%e248490248586%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd248488248581%_))))
                                    (let ((_%tl248492248591%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e248490248586%_)))
                                          (_%hd248491248589%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e248490248586%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd248491248589%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd248491248589%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl248492248591%_))
                                                  (let ((_%__splice252268252269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl248492248591%_
                                                            '0))))
                                                    (let ((_%tl248495248596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice252268252269%_
                                                              '1)))
                                                          (_%target248493248594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice252268252269%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl248495248596%_))
                                                          (_%__match252301252302%_
                                                           _%e248484248570%_
                                                           _%hd248485248573%_
                                                           _%tl248486248575%_
                                                           _%e248487248578%_
                                                           _%hd248488248581%_
                                                           _%tl248489248583%_
                                                           _%e248490248586%_
                                                           _%hd248491248589%_
                                                           _%tl248492248591%_
                                                           _%__splice252268252269%_
                                                           _%target248493248594%_
                                                           _%tl248495248596%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl248489248583%_))
                      (let ((_%e248513248541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl248489248583%_))))
                        (let ((_%tl248515248546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e248513248541%_)))
                              (_%hd248514248544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e248513248541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl248515248546%_))
                              (_%__kont252270252271%_
                               _%hd248514248544%_
                               _%hd248488248581%_)
                              (let ()
                                (declare (not safe))
                                (_%g248480248520%_)))))
                      (let () (declare (not safe)) (_%g248480248520%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl248489248583%_))
                                                      (let ((_%e248513248541%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl248489248583%_))))
                (let ((_%tl248515248546%_
                       (let () (declare (not safe)) (##cdr _%e248513248541%_)))
                      (_%hd248514248544%_
                       (let ()
                         (declare (not safe))
                         (##car _%e248513248541%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl248515248546%_))
                      (_%__kont252270252271%_
                       _%hd248514248544%_
                       _%hd248488248581%_)
                      (let () (declare (not safe)) (_%g248480248520%_)))))
              (let () (declare (not safe)) (_%g248480248520%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl248489248583%_))
                                                  (let ((_%e248513248541%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl248489248583%_))))
                                                    (let ((_%tl248515248546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e248513248541%_)))
                                                          (_%hd248514248544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e248513248541%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl248515248546%_))
                                                          (_%__kont252270252271%_
                                                           _%hd248514248544%_
                                                           _%hd248488248581%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g248480248520%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g248480248520%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl248489248583%_))
                                              (let ((_%e248513248541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl248489248583%_))))
                                                (let ((_%tl248515248546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e248513248541%_)))
                                                      (_%hd248514248544%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e248513248541%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl248515248546%_))
                                                      (_%__kont252270252271%_
                                                       _%hd248514248544%_
                                                       _%hd248488248581%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g248480248520%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g248480248520%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl248489248583%_))
                                      (let ((_%e248513248541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl248489248583%_))))
                                        (let ((_%tl248515248546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e248513248541%_)))
                                              (_%hd248514248544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e248513248541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl248515248546%_))
                                              (_%__kont252270252271%_
                                               _%hd248514248544%_
                                               _%hd248488248581%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g248480248520%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g248480248520%_))))))
                          (let () (declare (not safe)) (_%g248480248520%_)))))
                  (let () (declare (not safe)) (_%g248480248520%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx248451%_ _%expr248452%_ _%type248453%_)
        (let ((_%$e248455%_ (not _%type248453%_)))
          (if _%$e248455%_
              _%$e248455%_
              (let ((_%$e248458%_
                     (eq? (##structure-ref _%type248453%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e248458%_
                    _%$e248458%_
                    (let ((_%$e248461%_
                           (eq? (##structure-ref
                                 _%type248453%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e248461%_
                          _%$e248461%_
                          (let ((_%expr-type248465%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr248452%_))))
                            (if (not _%expr-type248465%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx248451%_
                                   _%type248453%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type248465%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx248451%_
                                       _%type248453%_
                                       _%expr-type248465%_))
                                    (let ((_%$e248469%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type248465%_
                                              'gxc#!abort::t))))
                                      (if _%$e248469%_
                                          _%$e248469%_
                                          (let ((_%$e248472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type248465%_
                                                    _%type248453%_))))
                                            (if _%$e248472%_
                                                _%$e248472%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx248451%_
                                                   _%type248453%_
                                                   _%expr-type248465%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self247877%_ _%stx247878%_)
        (let* ((_%__stx252346252347%_ _%stx247878%_)
               (_%g247883247993%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx252346252347%_)))))
          (let ((_%__kont252348252349%_
                 (lambda (_%g247885248425%_
                          _%g247886248426%_
                          _%g247887248427%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g247887248427%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self247877%_ _%g247886248426%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self247877%_
                          _%g247885248425%_)))))
                (_%__kont252350252351%_
                 (lambda (_%g247906248251%_
                          _%g247907248252%_
                          _%g247908248253%_
                          _%g247909248254%_)
                   (let ((_%$e248286%_
                          (let ((__tmp252699
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g247909248254%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp252699))))
                     (if _%$e248286%_
                         ((lambda (_%pred-type248289%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type248289%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type248289%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test248294%_
                                        (let ((__tmp252700
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g247909248254%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g247908248253%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp252700
                                           _%stx247878%_
                                           _%self247877%_)))
                                       (_%K248298%_
                                        (let ((__tmp252701
                                               (lambda ()
                                                 (let ((__tmp252704
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self247877%_
                                                             _%g247907248252%_))))
                                                       (__tmp252702
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g247908248253%_))
                            (let ((__tmp252703
                                   (##structure-ref
                                    _%pred-type248289%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx247878%_
                               __tmp252703)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp252704
                                                    gxc#current-compile-path-type
                                                    __tmp252702)))))
                                          (declare (not safe))
                                          (__make-promise __tmp252701)))
                                       (_%E248301%_
                                        (let ((__tmp252705
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self247877%_
                                                    _%g247906248251%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp252705)))
                                       (_%__stx252324252325%_ _%test248294%_)
                                       (_%g248305248319%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx252324252325%_)))))
                                  (let ((_%__kont252326252327%_
                                         (lambda (_%g248307248347%_
                                                  _%g248308248348%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g248307248347%_))
                                               (force _%K248298%_)
                                               (force _%E248301%_))))
                                        (_%__kont252328252329%_
                                         (lambda ()
                                           (let ((__tmp252706
                                                  (cons '%#if
                                                        (cons _%test248294%_
                                                              (cons (force _%K248298%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E248301%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp252706
                                              _%stx247878%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx252324252325%_))
                                        (let ((_%e248309248331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx252324252325%_))))
                                          (let ((_%tl248311248336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e248309248331%_)))
                                                (_%hd248310248334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e248309248331%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl248311248336%_))
                                                (let ((_%e248312248339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl248311248336%_))))
                                                  (let ((_%tl248314248344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e248312248339%_)))
                                                        (_%hd248313248342%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e248312248339%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl248314248344%_))
                                                        (_%__kont252326252327%_
                                                         _%hd248313248342%_
                                                         _%hd248310248334%_)
                                                        (_%__kont252328252329%_))))
                                                (_%__kont252328252329%_))))
                                        (_%__kont252328252329%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self247877%_
                                   _%stx247878%_))))
                          _%$e248286%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self247877%_
                            _%stx247878%_))))))
                (_%__kont252352252353%_
                 (lambda (_%g247943248127%_
                          _%g247944248128%_
                          _%g247945248129%_
                          _%g247946248130%_)
                   (gxc#optimize-if%
                    _%self247877%_
                    (let ((__tmp252707
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g247945248129%_
                                       (cons _%g247943248127%_
                                             (cons _%g247944248128%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252707 _%stx247878%_)))))
                (_%__kont252354252355%_
                 (lambda (_%g247974248030%_
                          _%g247975248031%_
                          _%g247976248032%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self247877%_ _%stx247878%_)))))
            (let ((_%__match252553252554%_
                   (lambda (_%e247947248055%_
                            _%hd247948248058%_
                            _%tl247949248060%_
                            _%e247950248063%_
                            _%hd247951248066%_
                            _%tl247952248068%_
                            _%e247953248071%_
                            _%hd247954248074%_
                            _%tl247955248076%_
                            _%e247956248079%_
                            _%hd247957248082%_
                            _%tl247958248084%_
                            _%e247959248087%_
                            _%hd247960248090%_
                            _%tl247961248092%_
                            _%e247962248095%_
                            _%hd247963248098%_
                            _%tl247964248100%_
                            _%e247965248103%_
                            _%hd247966248106%_
                            _%tl247967248108%_
                            _%e247968248111%_
                            _%hd247969248114%_
                            _%tl247970248116%_
                            _%e247971248119%_
                            _%hd247972248122%_
                            _%tl247973248124%_)
                     (let ((_%g247943248127%_ _%hd247972248122%_)
                           (_%g247944248128%_ _%hd247969248114%_)
                           (_%g247945248129%_ _%hd247966248106%_)
                           (_%g247946248130%_ _%hd247963248098%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g247946248130%_ 'not))
                           (_%__kont252352252353%_
                            _%g247943248127%_
                            _%g247944248128%_
                            _%g247945248129%_
                            _%g247946248130%_)
                           (_%__kont252354252355%_
                            _%hd247972248122%_
                            _%hd247969248114%_
                            _%hd247951248066%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx252346252347%_))
                  (let ((_%e247888248377%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx252346252347%_))))
                    (let ((_%tl247890248382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247888248377%_)))
                          (_%hd247889248380%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247888248377%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247890248382%_))
                          (let ((_%e247891248385%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247890248382%_))))
                            (let ((_%tl247893248390%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247891248385%_)))
                                  (_%hd247892248388%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247891248385%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd247892248388%_))
                                  (let ((_%e247894248393%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd247892248388%_))))
                                    (let ((_%tl247896248398%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247894248393%_)))
                                          (_%hd247895248396%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247894248393%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd247895248396%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd247895248396%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247896248398%_))
                                                  (let ((_%e247897248401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247896248398%_))))
                                                    (let ((_%tl247899248406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247897248401%_)))
                                                          (_%hd247898248404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247897248401%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247899248406%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl247893248390%_))
                      (let ((_%e247900248409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247893248390%_))))
                        (let ((_%tl247902248414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247900248409%_)))
                              (_%hd247901248412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247900248409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl247902248414%_))
                              (let ((_%e247903248417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl247902248414%_))))
                                (let ((_%tl247905248422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e247903248417%_)))
                                      (_%hd247904248420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e247903248417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl247905248422%_))
                                      (_%__kont252348252349%_
                                       _%hd247904248420%_
                                       _%hd247901248412%_
                                       _%hd247898248404%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g247883247993%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g247883247993%_)))))
                      (let () (declare (not safe)) (_%g247883247993%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl247893248390%_))
                      (let ((_%e247983248014%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247893248390%_))))
                        (let ((_%tl247985248019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247983248014%_)))
                              (_%hd247984248017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247983248014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl247985248019%_))
                              (let ((_%e247986248022%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl247985248019%_))))
                                (let ((_%tl247988248027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e247986248022%_)))
                                      (_%hd247987248025%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e247986248022%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl247988248027%_))
                                      (_%__kont252354252355%_
                                       _%hd247987248025%_
                                       _%hd247984248017%_
                                       _%hd247892248388%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g247883247993%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g247883247993%_)))))
                      (let () (declare (not safe)) (_%g247883247993%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247893248390%_))
                                                      (let ((_%e247983248014%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247893248390%_))))
                (let ((_%tl247985248019%_
                       (let () (declare (not safe)) (##cdr _%e247983248014%_)))
                      (_%hd247984248017%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247983248014%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl247985248019%_))
                      (let ((_%e247986248022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247985248019%_))))
                        (let ((_%tl247988248027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247986248022%_)))
                              (_%hd247987248025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247986248022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247988248027%_))
                              (_%__kont252354252355%_
                               _%hd247987248025%_
                               _%hd247984248017%_
                               _%hd247892248388%_)
                              (let ()
                                (declare (not safe))
                                (_%g247883247993%_)))))
                      (let () (declare (not safe)) (_%g247883247993%_)))))
              (let () (declare (not safe)) (_%g247883247993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd247895248396%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247896248398%_))
                                                      (let ((_%e247919248187%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247896248398%_))))
                (let ((_%tl247921248192%_
                       (let () (declare (not safe)) (##cdr _%e247919248187%_)))
                      (_%hd247920248190%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247919248187%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd247920248190%_))
                      (let ((_%e247922248195%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd247920248190%_))))
                        (let ((_%tl247924248200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247922248195%_)))
                              (_%hd247923248198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247922248195%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd247923248198%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd247923248198%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247924248200%_))
                                      (let ((_%e247925248203%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247924248200%_))))
                                        (let ((_%tl247927248208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247925248203%_)))
                                              (_%hd247926248206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247925248203%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl247927248208%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247921248192%_))
                                                  (let ((_%e247928248211%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247921248192%_))))
                                                    (let ((_%tl247930248216%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247928248211%_)))
                                                          (_%hd247929248214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247928248211%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd247929248214%_))
                                                          (let ((_%e247931248219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd247929248214%_))))
                    (let ((_%tl247933248224%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247931248219%_)))
                          (_%hd247932248222%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247931248219%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd247932248222%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd247932248222%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247933248224%_))
                                  (let ((_%e247934248227%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247933248224%_))))
                                    (let ((_%tl247936248232%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247934248227%_)))
                                          (_%hd247935248230%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247934248227%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl247936248232%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl247930248216%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247893248390%_))
                                                  (let ((_%e247937248235%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247893248390%_))))
                                                    (let ((_%tl247939248240%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247937248235%_)))
                                                          (_%hd247938248238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247937248235%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247939248240%_))
                                                          (let ((_%e247940248243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247939248240%_))))
                    (let ((_%tl247942248248%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247940248243%_)))
                          (_%hd247941248246%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247940248243%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247942248248%_))
                          (_%__kont252350252351%_
                           _%hd247941248246%_
                           _%hd247938248238%_
                           _%hd247935248230%_
                           _%hd247926248206%_)
                          (let () (declare (not safe)) (_%g247883247993%_)))))
                  (let () (declare (not safe)) (_%g247883247993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247893248390%_))
                                                  (let ((_%e247983248014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247893248390%_))))
                                                    (let ((_%tl247985248019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247983248014%_)))
                                                          (_%hd247984248017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247983248014%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247985248019%_))
                                                          (let ((_%e247986248022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247985248019%_))))
                    (let ((_%tl247988248027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247986248022%_)))
                          (_%hd247987248025%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247986248022%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247988248027%_))
                          (_%__kont252354252355%_
                           _%hd247987248025%_
                           _%hd247984248017%_
                           _%hd247892248388%_)
                          (let () (declare (not safe)) (_%g247883247993%_)))))
                  (let () (declare (not safe)) (_%g247883247993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl247930248216%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247893248390%_))
                                                  (let ((_%e247968248111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247893248390%_))))
                                                    (let ((_%tl247970248116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247968248111%_)))
                                                          (_%hd247969248114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247968248111%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247970248116%_))
                                                          (let ((_%e247971248119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247970248116%_))))
                    (let ((_%tl247973248124%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247971248119%_)))
                          (_%hd247972248122%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247971248119%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247973248124%_))
                          (_%__match252553252554%_
                           _%e247888248377%_
                           _%hd247889248380%_
                           _%tl247890248382%_
                           _%e247891248385%_
                           _%hd247892248388%_
                           _%tl247893248390%_
                           _%e247894248393%_
                           _%hd247895248396%_
                           _%tl247896248398%_
                           _%e247919248187%_
                           _%hd247920248190%_
                           _%tl247921248192%_
                           _%e247922248195%_
                           _%hd247923248198%_
                           _%tl247924248200%_
                           _%e247925248203%_
                           _%hd247926248206%_
                           _%tl247927248208%_
                           _%e247928248211%_
                           _%hd247929248214%_
                           _%tl247930248216%_
                           _%e247968248111%_
                           _%hd247969248114%_
                           _%tl247970248116%_
                           _%e247971248119%_
                           _%hd247972248122%_
                           _%tl247973248124%_)
                          (let () (declare (not safe)) (_%g247883247993%_)))))
                  (let () (declare (not safe)) (_%g247883247993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247893248390%_))
                                                  (let ((_%e247983248014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247893248390%_))))
                                                    (let ((_%tl247985248019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247983248014%_)))
                                                          (_%hd247984248017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247983248014%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247985248019%_))
                                                          (let ((_%e247986248022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247985248019%_))))
                    (let ((_%tl247988248027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247986248022%_)))
                          (_%hd247987248025%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247986248022%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247988248027%_))
                          (_%__kont252354252355%_
                           _%hd247987248025%_
                           _%hd247984248017%_
                           _%hd247892248388%_)
                          (let () (declare (not safe)) (_%g247883247993%_)))))
                  (let () (declare (not safe)) (_%g247883247993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl247930248216%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247893248390%_))
                                          (let ((_%e247968248111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247893248390%_))))
                                            (let ((_%tl247970248116%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247968248111%_)))
                                                  (_%hd247969248114%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247968248111%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247970248116%_))
                                                  (let ((_%e247971248119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247970248116%_))))
                                                    (let ((_%tl247973248124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247971248119%_)))
                                                          (_%hd247972248122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247971248119%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247973248124%_))
                                                          (_%__match252553252554%_
                                                           _%e247888248377%_
                                                           _%hd247889248380%_
                                                           _%tl247890248382%_
                                                           _%e247891248385%_
                                                           _%hd247892248388%_
                                                           _%tl247893248390%_
                                                           _%e247894248393%_
                                                           _%hd247895248396%_
                                                           _%tl247896248398%_
                                                           _%e247919248187%_
                                                           _%hd247920248190%_
                                                           _%tl247921248192%_
                                                           _%e247922248195%_
                                                           _%hd247923248198%_
                                                           _%tl247924248200%_
                                                           _%e247925248203%_
                                                           _%hd247926248206%_
                                                           _%tl247927248208%_
                                                           _%e247928248211%_
                                                           _%hd247929248214%_
                                                           _%tl247930248216%_
                                                           _%e247968248111%_
                                                           _%hd247969248114%_
                                                           _%tl247970248116%_
                                                           _%e247971248119%_
                                                           _%hd247972248122%_
                                                           _%tl247973248124%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g247883247993%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247883247993%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247893248390%_))
                                          (let ((_%e247983248014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247893248390%_))))
                                            (let ((_%tl247985248019%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247983248014%_)))
                                                  (_%hd247984248017%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247983248014%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247985248019%_))
                                                  (let ((_%e247986248022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247985248019%_))))
                                                    (let ((_%tl247988248027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247986248022%_)))
                                                          (_%hd247987248025%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247986248022%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247988248027%_))
                                                          (_%__kont252354252355%_
                                                           _%hd247987248025%_
                                                           _%hd247984248017%_
                                                           _%hd247892248388%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g247883247993%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247883247993%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl247930248216%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247893248390%_))
                                      (let ((_%e247968248111%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247893248390%_))))
                                        (let ((_%tl247970248116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247968248111%_)))
                                              (_%hd247969248114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247968248111%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247970248116%_))
                                              (let ((_%e247971248119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247970248116%_))))
                                                (let ((_%tl247973248124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247971248119%_)))
                                                      (_%hd247972248122%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247971248119%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247973248124%_))
                                                      (_%__match252553252554%_
                                                       _%e247888248377%_
                                                       _%hd247889248380%_
                                                       _%tl247890248382%_
                                                       _%e247891248385%_
                                                       _%hd247892248388%_
                                                       _%tl247893248390%_
                                                       _%e247894248393%_
                                                       _%hd247895248396%_
                                                       _%tl247896248398%_
                                                       _%e247919248187%_
                                                       _%hd247920248190%_
                                                       _%tl247921248192%_
                                                       _%e247922248195%_
                                                       _%hd247923248198%_
                                                       _%tl247924248200%_
                                                       _%e247925248203%_
                                                       _%hd247926248206%_
                                                       _%tl247927248208%_
                                                       _%e247928248211%_
                                                       _%hd247929248214%_
                                                       _%tl247930248216%_
                                                       _%e247968248111%_
                                                       _%hd247969248114%_
                                                       _%tl247970248116%_
                                                       _%e247971248119%_
                                                       _%hd247972248122%_
                                                       _%tl247973248124%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247883247993%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247883247993%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247883247993%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247893248390%_))
                                      (let ((_%e247983248014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247893248390%_))))
                                        (let ((_%tl247985248019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247983248014%_)))
                                              (_%hd247984248017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247983248014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247985248019%_))
                                              (let ((_%e247986248022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247985248019%_))))
                                                (let ((_%tl247988248027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247986248022%_)))
                                                      (_%hd247987248025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247986248022%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247988248027%_))
                                                      (_%__kont252354252355%_
                                                       _%hd247987248025%_
                                                       _%hd247984248017%_
                                                       _%hd247892248388%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247883247993%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247883247993%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247883247993%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247930248216%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247893248390%_))
                                  (let ((_%e247968248111%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247893248390%_))))
                                    (let ((_%tl247970248116%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247968248111%_)))
                                          (_%hd247969248114%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247968248111%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247970248116%_))
                                          (let ((_%e247971248119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247970248116%_))))
                                            (let ((_%tl247973248124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247971248119%_)))
                                                  (_%hd247972248122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247971248119%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl247973248124%_))
                                                  (_%__match252553252554%_
                                                   _%e247888248377%_
                                                   _%hd247889248380%_
                                                   _%tl247890248382%_
                                                   _%e247891248385%_
                                                   _%hd247892248388%_
                                                   _%tl247893248390%_
                                                   _%e247894248393%_
                                                   _%hd247895248396%_
                                                   _%tl247896248398%_
                                                   _%e247919248187%_
                                                   _%hd247920248190%_
                                                   _%tl247921248192%_
                                                   _%e247922248195%_
                                                   _%hd247923248198%_
                                                   _%tl247924248200%_
                                                   _%e247925248203%_
                                                   _%hd247926248206%_
                                                   _%tl247927248208%_
                                                   _%e247928248211%_
                                                   _%hd247929248214%_
                                                   _%tl247930248216%_
                                                   _%e247968248111%_
                                                   _%hd247969248114%_
                                                   _%tl247970248116%_
                                                   _%e247971248119%_
                                                   _%hd247972248122%_
                                                   _%tl247973248124%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247883247993%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247883247993%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247893248390%_))
                                  (let ((_%e247983248014%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247893248390%_))))
                                    (let ((_%tl247985248019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247983248014%_)))
                                          (_%hd247984248017%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247983248014%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247985248019%_))
                                          (let ((_%e247986248022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247985248019%_))))
                                            (let ((_%tl247988248027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247986248022%_)))
                                                  (_%hd247987248025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247986248022%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl247988248027%_))
                                                  (_%__kont252354252355%_
                                                   _%hd247987248025%_
                                                   _%hd247984248017%_
                                                   _%hd247892248388%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247883247993%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247883247993%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247930248216%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247893248390%_))
                          (let ((_%e247968248111%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247893248390%_))))
                            (let ((_%tl247970248116%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247968248111%_)))
                                  (_%hd247969248114%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247968248111%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247970248116%_))
                                  (let ((_%e247971248119%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247970248116%_))))
                                    (let ((_%tl247973248124%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247971248119%_)))
                                          (_%hd247972248122%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247971248119%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl247973248124%_))
                                          (_%__match252553252554%_
                                           _%e247888248377%_
                                           _%hd247889248380%_
                                           _%tl247890248382%_
                                           _%e247891248385%_
                                           _%hd247892248388%_
                                           _%tl247893248390%_
                                           _%e247894248393%_
                                           _%hd247895248396%_
                                           _%tl247896248398%_
                                           _%e247919248187%_
                                           _%hd247920248190%_
                                           _%tl247921248192%_
                                           _%e247922248195%_
                                           _%hd247923248198%_
                                           _%tl247924248200%_
                                           _%e247925248203%_
                                           _%hd247926248206%_
                                           _%tl247927248208%_
                                           _%e247928248211%_
                                           _%hd247929248214%_
                                           _%tl247930248216%_
                                           _%e247968248111%_
                                           _%hd247969248114%_
                                           _%tl247970248116%_
                                           _%e247971248119%_
                                           _%hd247972248122%_
                                           _%tl247973248124%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g247883247993%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247883247993%_)))))
                          (let () (declare (not safe)) (_%g247883247993%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247893248390%_))
                          (let ((_%e247983248014%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247893248390%_))))
                            (let ((_%tl247985248019%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247983248014%_)))
                                  (_%hd247984248017%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247983248014%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247985248019%_))
                                  (let ((_%e247986248022%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247985248019%_))))
                                    (let ((_%tl247988248027%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247986248022%_)))
                                          (_%hd247987248025%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247986248022%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl247988248027%_))
                                          (_%__kont252354252355%_
                                           _%hd247987248025%_
                                           _%hd247984248017%_
                                           _%hd247892248388%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g247883247993%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247883247993%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g247883247993%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247893248390%_))
                                                      (let ((_%e247983248014%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247893248390%_))))
                (let ((_%tl247985248019%_
                       (let () (declare (not safe)) (##cdr _%e247983248014%_)))
                      (_%hd247984248017%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247983248014%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl247985248019%_))
                      (let ((_%e247986248022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247985248019%_))))
                        (let ((_%tl247988248027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247986248022%_)))
                              (_%hd247987248025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247986248022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247988248027%_))
                              (_%__kont252354252355%_
                               _%hd247987248025%_
                               _%hd247984248017%_
                               _%hd247892248388%_)
                              (let ()
                                (declare (not safe))
                                (_%g247883247993%_)))))
                      (let () (declare (not safe)) (_%g247883247993%_)))))
              (let () (declare (not safe)) (_%g247883247993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247893248390%_))
                                                  (let ((_%e247983248014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247893248390%_))))
                                                    (let ((_%tl247985248019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247983248014%_)))
                                                          (_%hd247984248017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247983248014%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247985248019%_))
                                                          (let ((_%e247986248022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247985248019%_))))
                    (let ((_%tl247988248027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247986248022%_)))
                          (_%hd247987248025%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247986248022%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247988248027%_))
                          (_%__kont252354252355%_
                           _%hd247987248025%_
                           _%hd247984248017%_
                           _%hd247892248388%_)
                          (let () (declare (not safe)) (_%g247883247993%_)))))
                  (let () (declare (not safe)) (_%g247883247993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247893248390%_))
                                          (let ((_%e247983248014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247893248390%_))))
                                            (let ((_%tl247985248019%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247983248014%_)))
                                                  (_%hd247984248017%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247983248014%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247985248019%_))
                                                  (let ((_%e247986248022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247985248019%_))))
                                                    (let ((_%tl247988248027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247986248022%_)))
                                                          (_%hd247987248025%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247986248022%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247988248027%_))
                                                          (_%__kont252354252355%_
                                                           _%hd247987248025%_
                                                           _%hd247984248017%_
                                                           _%hd247892248388%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g247883247993%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247883247993%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247893248390%_))
                                      (let ((_%e247983248014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247893248390%_))))
                                        (let ((_%tl247985248019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247983248014%_)))
                                              (_%hd247984248017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247983248014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247985248019%_))
                                              (let ((_%e247986248022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247985248019%_))))
                                                (let ((_%tl247988248027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247986248022%_)))
                                                      (_%hd247987248025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247986248022%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247988248027%_))
                                                      (_%__kont252354252355%_
                                                       _%hd247987248025%_
                                                       _%hd247984248017%_
                                                       _%hd247892248388%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247883247993%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247883247993%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247883247993%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247893248390%_))
                                  (let ((_%e247983248014%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247893248390%_))))
                                    (let ((_%tl247985248019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247983248014%_)))
                                          (_%hd247984248017%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247983248014%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247985248019%_))
                                          (let ((_%e247986248022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247985248019%_))))
                                            (let ((_%tl247988248027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247986248022%_)))
                                                  (_%hd247987248025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247986248022%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl247988248027%_))
                                                  (_%__kont252354252355%_
                                                   _%hd247987248025%_
                                                   _%hd247984248017%_
                                                   _%hd247892248388%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247883247993%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247883247993%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247883247993%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247893248390%_))
                          (let ((_%e247983248014%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247893248390%_))))
                            (let ((_%tl247985248019%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247983248014%_)))
                                  (_%hd247984248017%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247983248014%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247985248019%_))
                                  (let ((_%e247986248022%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247985248019%_))))
                                    (let ((_%tl247988248027%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247986248022%_)))
                                          (_%hd247987248025%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247986248022%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl247988248027%_))
                                          (_%__kont252354252355%_
                                           _%hd247987248025%_
                                           _%hd247984248017%_
                                           _%hd247892248388%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g247883247993%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247883247993%_)))))
                          (let () (declare (not safe)) (_%g247883247993%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl247893248390%_))
                  (let ((_%e247983248014%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247893248390%_))))
                    (let ((_%tl247985248019%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247983248014%_)))
                          (_%hd247984248017%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247983248014%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247985248019%_))
                          (let ((_%e247986248022%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247985248019%_))))
                            (let ((_%tl247988248027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247986248022%_)))
                                  (_%hd247987248025%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247986248022%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl247988248027%_))
                                  (_%__kont252354252355%_
                                   _%hd247987248025%_
                                   _%hd247984248017%_
                                   _%hd247892248388%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g247883247993%_)))))
                          (let () (declare (not safe)) (_%g247883247993%_)))))
                  (let () (declare (not safe)) (_%g247883247993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247893248390%_))
                                                      (let ((_%e247983248014%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247893248390%_))))
                (let ((_%tl247985248019%_
                       (let () (declare (not safe)) (##cdr _%e247983248014%_)))
                      (_%hd247984248017%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247983248014%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl247985248019%_))
                      (let ((_%e247986248022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247985248019%_))))
                        (let ((_%tl247988248027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247986248022%_)))
                              (_%hd247987248025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247986248022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247988248027%_))
                              (_%__kont252354252355%_
                               _%hd247987248025%_
                               _%hd247984248017%_
                               _%hd247892248388%_)
                              (let ()
                                (declare (not safe))
                                (_%g247883247993%_)))))
                      (let () (declare (not safe)) (_%g247883247993%_)))))
              (let () (declare (not safe)) (_%g247883247993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247893248390%_))
                                              (let ((_%e247983248014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247893248390%_))))
                                                (let ((_%tl247985248019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247983248014%_)))
                                                      (_%hd247984248017%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247983248014%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247985248019%_))
                                                      (let ((_%e247986248022%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247985248019%_))))
                (let ((_%tl247988248027%_
                       (let () (declare (not safe)) (##cdr _%e247986248022%_)))
                      (_%hd247987248025%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247986248022%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247988248027%_))
                      (_%__kont252354252355%_
                       _%hd247987248025%_
                       _%hd247984248017%_
                       _%hd247892248388%_)
                      (let () (declare (not safe)) (_%g247883247993%_)))))
              (let () (declare (not safe)) (_%g247883247993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g247883247993%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247893248390%_))
                                      (let ((_%e247983248014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247893248390%_))))
                                        (let ((_%tl247985248019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247983248014%_)))
                                              (_%hd247984248017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247983248014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247985248019%_))
                                              (let ((_%e247986248022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247985248019%_))))
                                                (let ((_%tl247988248027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247986248022%_)))
                                                      (_%hd247987248025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247986248022%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247988248027%_))
                                                      (_%__kont252354252355%_
                                                       _%hd247987248025%_
                                                       _%hd247984248017%_
                                                       _%hd247892248388%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247883247993%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247883247993%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247883247993%_))))))
                          (let () (declare (not safe)) (_%g247883247993%_)))))
                  (let () (declare (not safe)) (_%g247883247993%_))))))))))
