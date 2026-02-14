(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1771092635)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp254489 (list gxc#::basic-xform::t))
            (__tmp254488 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp254489
         '()
         __tmp254488
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args253766%_
        (apply make-instance gxc#::optimize-call::t _%$args253766%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp254490
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
        (__make-atomic-promise __tmp254490)))
    (define gxc#apply-optimize-call
      (lambda (_%stx253758%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self253761%_
                (let ((__obj254480
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj254480))
               (__tmp254491
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self253761%_ _%stx253758%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254491
           gxc#current-compile-method
           _%self253761%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp254493 (list gxc#::void::t))
            (__tmp254492 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp254493
         '()
         __tmp254492
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args253755%_
        (apply make-instance gxc#::check-return-type::t _%$args253755%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp254494
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
        (__make-atomic-promise __tmp254494)))
    (define gxc#apply-check-return-type
      (lambda (_%stx253747%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self253750%_
                (let ((__obj254482
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj254482))
               (__tmp254495
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self253750%_ _%stx253747%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254495
           gxc#current-compile-method
           _%self253750%_))))
    (define gxc#optimize-call%
      (lambda (_%self253354%_ _%stx253355%_)
        (let* ((_%__stx253835253836%_ _%stx253355%_)
               (_%g253358253404%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253835253836%_)))))
          (let ((_%__kont253837253838%_
                 (lambda (_%g253360253543%_ _%g253361253544%_)
                   (let* ((_%rator-id253564%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g253361253544%_)))
                          (_%rator-type253566%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id253564%_))))
                     (if (or (not _%rator-type253566%_)
                             (eq? (##structure-ref
                                   _%rator-type253566%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self253354%_ _%stx253355%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type253566%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp254496
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type253566%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id253564%_
                                  '" => "
                                  _%rator-type253566%_
                                  '" "
                                  __tmp254496))
                               (let* ((_%optimized253581%_
                                       (let ((__method254483
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type253566%_
                                                 'optimize-call))))
                                         (if __method254483
                                             (let ((__tmp254497
                                                    (let ((__tmp254498
                                                           (lambda (_%g253573253576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g253574253578%_)
                     (cons _%g253573253576%_ _%g253574253578%_))))
              (declare (not safe))
              (foldr__0 __tmp254498 '() _%g253360253543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method254483
                                                _%rator-type253566%_
                                                _%self253354%_
                                                _%stx253355%_
                                                __tmp254497))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type253566%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx253783253784%_
                                       _%optimized253581%_)
                                      (_%g253584253613%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx253783253784%_)))))
                                 (let ((_%__kont253785253786%_
                                        (lambda (_%g253586253679%_
                                                 _%g253587253680%_)
                                          (let* ((_%optimized-rator-id253707%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g253587253680%_)))
                                                 (_%rator-type253712%_
                                                  (let ((_%$e253709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id253707%_))))
                                                    (if _%$e253709%_
                                                        _%$e253709%_
                                                        _%rator-type253566%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type253712%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id253707%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type253712%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type253712%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized253581%_
                                                (let ((__tmp254499
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g253587253680%_ '()))
                           (let ((__tmp254500
                                  (lambda (_%g253720253723%_ _%g253721253725%_)
                                    (cons _%g253720253723%_
                                          _%g253721253725%_))))
                             (declare (not safe))
                             (foldr__0 __tmp254500 '() _%g253586253679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp254499
                                                   _%stx253355%_))))))
                                       (_%__kont253789253790%_
                                        (lambda () _%optimized253581%_)))
                                   (let ((_%__match253832253833%_
                                          (lambda (_%e253588253625%_
                                                   _%hd253589253628%_
                                                   _%tl253590253630%_
                                                   _%e253591253633%_
                                                   _%hd253592253636%_
                                                   _%tl253593253638%_
                                                   _%e253594253641%_
                                                   _%hd253595253644%_
                                                   _%tl253596253646%_
                                                   _%e253597253649%_
                                                   _%hd253598253652%_
                                                   _%tl253599253654%_
                                                   _%__splice253787253788%_
                                                   _%target253600253657%_
                                                   _%tl253602253659%_)
                                            (letrec ((_%loop253603253662%_
                                                      (lambda (_%hd253601253665%_
                                                               _%arg253607253667%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd253601253665%_))
                                                            (let ((_%e253604253669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd253601253665%_))))
                      (let ((_%lp-tl253606253674%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253604253669%_)))
                            (_%lp-hd253605253672%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253604253669%_))))
                        (_%loop253603253662%_
                         _%lp-tl253606253674%_
                         (cons _%lp-hd253605253672%_ _%arg253607253667%_))))
                    (let ((_%arg253608253677%_ (reverse _%arg253607253667%_)))
                      (_%__kont253785253786%_
                       _%arg253608253677%_
                       _%hd253598253652%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop253603253662%_
                                               _%target253600253657%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx253783253784%_))
                                         (let ((_%e253588253625%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx253783253784%_))))
                                           (let ((_%tl253590253630%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e253588253625%_)))
                                                 (_%hd253589253628%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e253588253625%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd253589253628%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd253589253628%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl253590253630%_))
                                                         (let ((_%e253591253633%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl253590253630%_))))
                   (let ((_%tl253593253638%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e253591253633%_)))
                         (_%hd253592253636%_
                          (let ()
                            (declare (not safe))
                            (##car _%e253591253633%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd253592253636%_))
                         (let ((_%e253594253641%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd253592253636%_))))
                           (let ((_%tl253596253646%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e253594253641%_)))
                                 (_%hd253595253644%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e253594253641%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd253595253644%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd253595253644%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl253596253646%_))
                                         (let ((_%e253597253649%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl253596253646%_))))
                                           (let ((_%tl253599253654%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e253597253649%_)))
                                                 (_%hd253598253652%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e253597253649%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl253599253654%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl253593253638%_))
                                                     (let ((_%__splice253787253788%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl253593253638%_
                                                               '0))))
                                                       (let ((_%tl253602253659%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice253787253788%_ '1)))
                     (_%target253600253657%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice253787253788%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl253602253659%_))
                     (_%__match253832253833%_
                      _%e253588253625%_
                      _%hd253589253628%_
                      _%tl253590253630%_
                      _%e253591253633%_
                      _%hd253592253636%_
                      _%tl253593253638%_
                      _%e253594253641%_
                      _%hd253595253644%_
                      _%tl253596253646%_
                      _%e253597253649%_
                      _%hd253598253652%_
                      _%tl253599253654%_
                      _%__splice253787253788%_
                      _%target253600253657%_
                      _%tl253602253659%_)
                     (_%__kont253789253790%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont253789253790%_))
                                                 (_%__kont253789253790%_))))
                                         (_%__kont253789253790%_))
                                     (_%__kont253789253790%_))
                                 (_%__kont253789253790%_))))
                         (_%__kont253789253790%_))))
                 (_%__kont253789253790%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont253789253790%_))
                                                 (_%__kont253789253790%_))))
                                         (_%__kont253789253790%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type253566%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type253566%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp254501
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g253361253544%_
                                                                '()))
                                                    (map (lambda (_%g253731253733%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self253354%_
                                                              _%g253731253733%_)))
                                                         (let ((__tmp254502
                                                                (lambda (_%g253735253738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g253736253740%_)
                          (cons _%g253735253738%_ _%g253736253740%_))))
                   (declare (not safe))
                   (foldr__0 __tmp254502 '() _%g253360253543%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp254501
                                    _%stx253355%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx253355%_
                                    _%rator-type253566%_))))))))
                (_%__kont253841253842%_
                 (lambda (_%g253383253447%_ _%g253384253448%_)
                   (let ((_%rator-type253465%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g253384253448%_))))
                     (if (and _%rator-type253465%_
                              (eq? (##structure-ref
                                    _%rator-type253465%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type253465%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type253465%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type253465%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp254503
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self253354%_
                                               _%g253384253448%_))
                                            (map (lambda (_%g253467253469%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self253354%_
                                                      _%g253467253469%_)))
                                                 (let ((__tmp254504
                                                        (lambda (_%g253471253474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g253472253476%_)
                  (cons _%g253471253474%_ _%g253472253476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp254504
                                                    '()
                                                    _%g253383253447%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp254503 _%stx253355%_))
                         (if (or (not _%rator-type253465%_)
                                 (let ((__tmp254505
                                        (##structure-ref
                                         _%rator-type253465%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp254505 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self253354%_ _%stx253355%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx253355%_
                                _%rator-type253465%_))))))))
            (let* ((_%__match253902253903%_
                    (lambda (_%e253385253409%_
                             _%hd253386253412%_
                             _%tl253387253414%_
                             _%e253388253417%_
                             _%hd253389253420%_
                             _%tl253390253422%_
                             _%__splice253843253844%_
                             _%target253391253425%_
                             _%tl253393253427%_)
                      (letrec ((_%loop253394253430%_
                                (lambda (_%hd253392253433%_
                                         _%rand253398253435%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253392253433%_))
                                      (let ((_%e253395253437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253392253433%_))))
                                        (let ((_%lp-tl253397253442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253395253437%_)))
                                              (_%lp-hd253396253440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253395253437%_))))
                                          (_%loop253394253430%_
                                           _%lp-tl253397253442%_
                                           (cons _%lp-hd253396253440%_
                                                 _%rand253398253435%_))))
                                      (let ((_%rand253399253445%_
                                             (reverse _%rand253398253435%_)))
                                        (_%__kont253841253842%_
                                         _%rand253399253445%_
                                         _%hd253389253420%_))))))
                        (_%loop253394253430%_ _%target253391253425%_ '()))))
                   (_%__match253882253883%_
                    (lambda (_%e253362253489%_
                             _%hd253363253492%_
                             _%tl253364253494%_
                             _%e253365253497%_
                             _%hd253366253500%_
                             _%tl253367253502%_
                             _%e253368253505%_
                             _%hd253369253508%_
                             _%tl253370253510%_
                             _%e253371253513%_
                             _%hd253372253516%_
                             _%tl253373253518%_
                             _%__splice253839253840%_
                             _%target253374253521%_
                             _%tl253376253523%_)
                      (letrec ((_%loop253377253526%_
                                (lambda (_%hd253375253529%_
                                         _%rand253381253531%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253375253529%_))
                                      (let ((_%e253378253533%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253375253529%_))))
                                        (let ((_%lp-tl253380253538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253378253533%_)))
                                              (_%lp-hd253379253536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253378253533%_))))
                                          (_%loop253377253526%_
                                           _%lp-tl253380253538%_
                                           (cons _%lp-hd253379253536%_
                                                 _%rand253381253531%_))))
                                      (let ((_%rand253382253541%_
                                             (reverse _%rand253381253531%_)))
                                        (_%__kont253837253838%_
                                         _%rand253382253541%_
                                         _%hd253372253516%_))))))
                        (_%loop253377253526%_ _%target253374253521%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253835253836%_))
                  (let ((_%e253362253489%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253835253836%_))))
                    (let ((_%tl253364253494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253362253489%_)))
                          (_%hd253363253492%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253362253489%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253364253494%_))
                          (let ((_%e253365253497%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253364253494%_))))
                            (let ((_%tl253367253502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253365253497%_)))
                                  (_%hd253366253500%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253365253497%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd253366253500%_))
                                  (let ((_%e253368253505%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd253366253500%_))))
                                    (let ((_%tl253370253510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253368253505%_)))
                                          (_%hd253369253508%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253368253505%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd253369253508%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd253369253508%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253370253510%_))
                                                  (let ((_%e253371253513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253370253510%_))))
                                                    (let ((_%tl253373253518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253371253513%_)))
                                                          (_%hd253372253516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253371253513%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253373253518%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl253367253502%_))
                      (let ((_%__splice253839253840%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253367253502%_
                                '0))))
                        (let ((_%tl253376253523%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253839253840%_ '1)))
                              (_%target253374253521%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253839253840%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253376253523%_))
                              (_%__match253882253883%_
                               _%e253362253489%_
                               _%hd253363253492%_
                               _%tl253364253494%_
                               _%e253365253497%_
                               _%hd253366253500%_
                               _%tl253367253502%_
                               _%e253368253505%_
                               _%hd253369253508%_
                               _%tl253370253510%_
                               _%e253371253513%_
                               _%hd253372253516%_
                               _%tl253373253518%_
                               _%__splice253839253840%_
                               _%target253374253521%_
                               _%tl253376253523%_)
                              (let ()
                                (declare (not safe))
                                (_%g253358253404%_)))))
                      (let () (declare (not safe)) (_%g253358253404%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl253367253502%_))
                      (let ((_%__splice253843253844%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253367253502%_
                                '0))))
                        (let ((_%tl253393253427%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253843253844%_ '1)))
                              (_%target253391253425%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253843253844%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253393253427%_))
                              (_%__match253902253903%_
                               _%e253362253489%_
                               _%hd253363253492%_
                               _%tl253364253494%_
                               _%e253365253497%_
                               _%hd253366253500%_
                               _%tl253367253502%_
                               _%__splice253843253844%_
                               _%target253391253425%_
                               _%tl253393253427%_)
                              (let ()
                                (declare (not safe))
                                (_%g253358253404%_)))))
                      (let () (declare (not safe)) (_%g253358253404%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl253367253502%_))
                                                      (let ((_%__splice253843253844%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl253367253502%_
                        '0))))
                (let ((_%tl253393253427%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice253843253844%_ '1)))
                      (_%target253391253425%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice253843253844%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl253393253427%_))
                      (_%__match253902253903%_
                       _%e253362253489%_
                       _%hd253363253492%_
                       _%tl253364253494%_
                       _%e253365253497%_
                       _%hd253366253500%_
                       _%tl253367253502%_
                       _%__splice253843253844%_
                       _%target253391253425%_
                       _%tl253393253427%_)
                      (let () (declare (not safe)) (_%g253358253404%_)))))
              (let () (declare (not safe)) (_%g253358253404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl253367253502%_))
                                                  (let ((_%__splice253843253844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl253367253502%_
                                                            '0))))
                                                    (let ((_%tl253393253427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253843253844%_
                                                              '1)))
                                                          (_%target253391253425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253843253844%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253393253427%_))
                                                          (_%__match253902253903%_
                                                           _%e253362253489%_
                                                           _%hd253363253492%_
                                                           _%tl253364253494%_
                                                           _%e253365253497%_
                                                           _%hd253366253500%_
                                                           _%tl253367253502%_
                                                           _%__splice253843253844%_
                                                           _%target253391253425%_
                                                           _%tl253393253427%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g253358253404%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g253358253404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl253367253502%_))
                                              (let ((_%__splice253843253844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl253367253502%_
                                                        '0))))
                                                (let ((_%tl253393253427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice253843253844%_
                                                          '1)))
                                                      (_%target253391253425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice253843253844%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253393253427%_))
                                                      (_%__match253902253903%_
                                                       _%e253362253489%_
                                                       _%hd253363253492%_
                                                       _%tl253364253494%_
                                                       _%e253365253497%_
                                                       _%hd253366253500%_
                                                       _%tl253367253502%_
                                                       _%__splice253843253844%_
                                                       _%target253391253425%_
                                                       _%tl253393253427%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g253358253404%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g253358253404%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253367253502%_))
                                      (let ((_%__splice253843253844%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl253367253502%_
                                                '0))))
                                        (let ((_%tl253393253427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253843253844%_
                                                  '1)))
                                              (_%target253391253425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253843253844%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253393253427%_))
                                              (_%__match253902253903%_
                                               _%e253362253489%_
                                               _%hd253363253492%_
                                               _%tl253364253494%_
                                               _%e253365253497%_
                                               _%hd253366253500%_
                                               _%tl253367253502%_
                                               _%__splice253843253844%_
                                               _%target253391253425%_
                                               _%tl253393253427%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g253358253404%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g253358253404%_))))))
                          (let () (declare (not safe)) (_%g253358253404%_)))))
                  (let () (declare (not safe)) (_%g253358253404%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self253316%_ _%ctx253317%_ _%stx253318%_ _%args253319%_)
        (let ((_%self253322%_ _%self253316%_))
          (if (let ((__method254484
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self253322%_ 'check-arguments))))
                (if __method254484
                    (let ()
                      (declare (not safe))
                      (__method254484
                       _%self253322%_
                       _%ctx253317%_
                       _%stx253318%_
                       _%args253319%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self253322%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature253332%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253322%_ '2 '#f '#f)))
                     (_%signature253334%_ _%signature253332%_)
                     (_%$e253344%_
                      (if _%signature253334%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature253334%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e253344%_
                    ((lambda (_%unchecked253347%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked253347%_))
                           (let ((__tmp254506
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked253347%_
                                                          '()))
                                              (map (lambda (_%g253348253350%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx253317%_
                                                        _%g253348253350%_)))
                                                   _%args253319%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp254506
                              _%stx253318%_
                              _%ctx253317%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx253317%_ _%stx253318%_))))
                     _%$e253344%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx253317%_ _%stx253318%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx253317%_ _%stx253318%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass253768 __method-table253769)
        (let ((__check-arguments253770
               (let ((__tmp254507
                      (lambda ()
                        (let ((__method253771
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253769
                                  'check-arguments
                                  '#f))))
                          (if __method253771
                              __method253771
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp254507))))
          (lambda (_%self253316%_ _%ctx253317%_ _%stx253318%_ _%args253319%_)
            (let ((_%self253322%_ _%self253316%_))
              (if ((force __check-arguments253770)
                   _%self253322%_
                   _%ctx253317%_
                   _%stx253318%_
                   _%args253319%_)
                  (let* ((_%signature253332%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self253322%_
                             '2
                             '#f
                             '#f)))
                         (_%signature253334%_ _%signature253332%_)
                         (_%$e253344%_
                          (if _%signature253334%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature253334%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e253344%_
                        ((lambda (_%unchecked253347%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked253347%_))
                               (let ((__tmp254508
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked253347%_
                                                              '()))
                                                  (map (lambda (_%g253348253350%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx253317%_
                                                            _%g253348253350%_)))
                                                       _%args253319%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp254508
                                  _%stx253318%_
                                  _%ctx253317%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx253317%_
                                  _%stx253318%_))))
                         _%$e253344%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx253317%_ _%stx253318%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx253317%_ _%stx253318%_))))))))
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
      (lambda (_%self253069%_ _%ctx253070%_ _%stx253071%_ _%args253072%_)
        (let* ((_%self253075%_ _%self253069%_)
               (_%signature253084253086%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253075%_ '2 '#f '#f))))
          (if _%signature253084253086%_
              (let* ((_%signature253088%_ _%signature253084253086%_)
                     (_%argument-types253089253091%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature253088%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types253089253091%_
                    (let* ((_%argument-types253093%_
                            _%argument-types253089253091%_)
                           (_%argument-types253098%_
                            (let ((__tmp254509
                                   (lambda (_%t253096%_)
                                     (if _%t253096%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253071%_
                                            _%t253096%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp254509
                               _%argument-types253093%_))))
                      (let _%loop253100%_ ((_%rest-args253102%_ _%args253072%_)
                                           (_%rest-types253103%_
                                            _%argument-types253098%_)
                                           (_%result253104%_ '#t))
                        (let* ((_%rest-args253105253113%_ _%rest-args253102%_)
                               (_%else253107253121%_
                                (lambda () _%result253104%_))
                               (_%K253109253182%_
                                (lambda (_%rest-args253124%_ _%arg253125%_)
                                  (let* ((_%rest-types253126253137%_
                                          _%rest-types253103%_)
                                         (_%E253130253141%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types253126253137%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K253133253170%_
                                           (lambda (_%rest-types253167%_
                                                    _%type253168%_)
                                             (_%loop253100%_
                                              _%rest-args253124%_
                                              _%rest-types253167%_
                                              (if (gxc#check-expression-type!
                                                   _%stx253071%_
                                                   _%arg253125%_
                                                   _%type253168%_)
                                                  _%result253104%_
                                                  '#f))))
                                          (_%K253132253161%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx253071%_
                                                _%argument-types253098%_))))
                                          (_%K253131253151%_
                                           (lambda (_%tail-type253145%_)
                                             (if (let ((__tmp254510
                                                        (lambda (_%g253146253148%_)
                                                          (gxc#check-expression-type!
                                                           _%stx253071%_
                                                           _%g253146253148%_
                                                           _%tail-type253145%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp254510
                                                    _%rest-args253124%_))
                                                 _%result253104%_
                                                 '#f))))
                                      (let ((_%try-match253128253164%_
                                             (lambda ()
                                               (if (null? _%rest-types253126253137%_)
                                                   (_%K253132253161%_)
                                                   (let ((_%tail-type253154%_
                                                          _%rest-types253126253137%_))
                                                     (_%K253131253151%_
                                                      _%tail-type253154%_))))))
                                        (if (pair? _%rest-types253126253137%_)
                                            (let ((_%tl253135253175%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types253126253137%_)))
                                                  (_%hd253134253173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types253126253137%_))))
                                              (let ((_%type253178%_
                                                     _%hd253134253173%_)
                                                    (_%rest-types253180%_
                                                     _%tl253135253175%_))
                                                (_%K253133253170%_
                                                 _%rest-types253180%_
                                                 _%type253178%_)))
                                            (_%try-match253128253164%_))))))))
                          (if (pair? _%rest-args253105253113%_)
                              (let ((_%hd253110253185%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args253105253113%_)))
                                    (_%tl253111253187%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args253105253113%_))))
                                (let* ((_%arg253190%_ _%hd253110253185%_)
                                       (_%rest-args253192%_
                                        _%tl253111253187%_))
                                  (_%K253109253182%_
                                   _%rest-args253192%_
                                   _%arg253190%_)))
                              (_%else253107253121%_)))))
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
      (lambda (_%self252880%_ _%ctx252881%_ _%stx252882%_ _%args252883%_)
        (let* ((_%self252886%_ _%self252880%_)
               (_%g252896252906%_
                (lambda (_%g252897252903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252897252903%_))))
               (_%g252895252944%_
                (lambda (_%g252897252909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252897252909%_))
                      (let ((_%e252899252911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252897252909%_))))
                        (let ((_%hd252900252914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252899252911%_)))
                              (_%tl252901252916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252899252911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252901252916%_))
                              ((lambda (_%g252898252919%_)
                                 (let* ((_%klass252931%_
                                         (let ((__tmp254511
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252886%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252882%_
                                            __tmp254511)))
                                        (_%object252933%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252881%_
                                            _%g252898252919%_)))
                                        (_%instance?252938%_
                                         (let ((_%$e252935%_
                                                (gxc#expression-type?
                                                 _%object252933%_
                                                 _%klass252931%_)))
                                           (if _%$e252935%_
                                               _%$e252935%_
                                               (gxc#expression-type?
                                                _%g252898252919%_
                                                _%klass252931%_)))))
                                   (if _%instance?252938%_
                                       (let ((__tmp254512
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object252933%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g252898252919%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object252933%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254512
                                          _%stx252882%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx252881%_
                                          _%stx252882%_)))))
                               _%hd252900252914%_)
                              (_%g252896252906%_ _%g252897252909%_))))
                      (_%g252896252906%_ _%g252897252909%_)))))
          (_%g252895252944%_ _%args252883%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self252676%_ _%ctx252677%_ _%stx252678%_ _%args252679%_)
        (let* ((_%self252682%_ _%self252676%_)
               (_%g252692252702%_
                (lambda (_%g252693252699%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252693252699%_))))
               (_%g252691252755%_
                (lambda (_%g252693252705%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252693252705%_))
                      (let ((_%e252695252707%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252693252705%_))))
                        (let ((_%hd252696252710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252695252707%_)))
                              (_%tl252697252712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252695252707%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252697252712%_))
                              ((lambda (_%g252694252715%_)
                                 (let* ((_%klass252727%_
                                         (let ((__tmp254513
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252682%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252678%_
                                            __tmp254513)))
                                        (_%object252729%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252677%_
                                            _%g252694252715%_)))
                                        (_%instance?252734%_
                                         (let ((_%$e252731%_
                                                (gxc#expression-type?
                                                 _%object252729%_
                                                 _%klass252727%_)))
                                           (if _%$e252731%_
                                               _%$e252731%_
                                               (gxc#expression-type?
                                                _%g252694252715%_
                                                _%klass252727%_))))
                                        (_%klass252737%_ _%klass252727%_))
                                   (if _%instance?252734%_
                                       (let ((__tmp254514
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object252729%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g252694252715%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object252729%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254514
                                          _%stx252678%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252737%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp254515
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass252737%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object252729%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254515
                                              _%stx252678%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252737%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254516
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass252737%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object252729%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254516
                                                  _%stx252678%_))
                                               (let ((__tmp254517
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self252682%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object252729%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254517
                                                  _%stx252678%_)))))))
                               _%hd252696252710%_)
                              (_%g252692252702%_ _%g252693252705%_))))
                      (_%g252692252702%_ _%g252693252705%_)))))
          (_%g252691252755%_ _%args252679%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx252344%_)
        (let* ((_%__stx253912253913%_ _%stx252344%_)
               (_%g252349252390%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253912253913%_)))))
          (let ((_%__kont253914253915%_ (lambda () '#t))
                (_%__kont253916253917%_ (lambda () '#t))
                (_%__kont253918253919%_
                 (lambda (_%g252363252456%_ _%g252364252457%_)
                   (let ((_%rator-type252478252480%_
                          (let ((__tmp254518
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g252364252457%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp254518))))
                     (if _%rator-type252478252480%_
                         (let* ((_%rator-type252482%_
                                 _%rator-type252478252480%_)
                                (_%rator-signature252483252485%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type252482%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type252482%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature252483252485%_
                               (let* ((_%rator-signature252487%_
                                       _%rator-signature252483252485%_)
                                      (_%rator-effect252488252490%_
                                       (if _%rator-signature252487%_
                                           (##direct-structure-ref
                                            _%rator-signature252487%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect252488252490%_
                                     (let ((_%rator-effect252492%_
                                            _%rator-effect252488252490%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect252492%_)
                                               (equal? '(alloc)
                                                       _%rator-effect252492%_))
                                           (let ((__tmp254519
                                                  (let ((__tmp254520
                                                         (lambda (_%g252497252500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g252498252502%_)
                   (cons _%g252497252500%_ _%g252498252502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp254520
                                                     '()
                                                     _%g252363252456%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp254519))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont253922253923%_ (lambda () '#f)))
            (let ((_%__match254001254002%_
                   (lambda (_%e252365252402%_
                            _%hd252366252405%_
                            _%tl252367252407%_
                            _%e252368252410%_
                            _%hd252369252413%_
                            _%tl252370252415%_
                            _%e252371252418%_
                            _%hd252372252421%_
                            _%tl252373252423%_
                            _%e252374252426%_
                            _%hd252375252429%_
                            _%tl252376252431%_
                            _%__splice253920253921%_
                            _%target252377252434%_
                            _%tl252379252436%_)
                     (letrec ((_%loop252380252439%_
                               (lambda (_%hd252378252442%_
                                        _%rand252384252444%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd252378252442%_))
                                     (let ((_%e252381252446%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd252378252442%_))))
                                       (let ((_%lp-tl252383252451%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e252381252446%_)))
                                             (_%lp-hd252382252449%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e252381252446%_))))
                                         (_%loop252380252439%_
                                          _%lp-tl252383252451%_
                                          (cons _%lp-hd252382252449%_
                                                _%rand252384252444%_))))
                                     (let ((_%rand252385252454%_
                                            (reverse _%rand252384252444%_)))
                                       (_%__kont253918253919%_
                                        _%rand252385252454%_
                                        _%hd252375252429%_))))))
                       (_%loop252380252439%_ _%target252377252434%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253912253913%_))
                  (let ((_%e252351252533%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253912253913%_))))
                    (let ((_%tl252353252538%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252351252533%_)))
                          (_%hd252352252536%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252351252533%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd252352252536%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd252352252536%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252353252538%_))
                                  (let ((_%e252354252541%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252353252538%_))))
                                    (let ((_%tl252356252546%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252354252541%_)))
                                          (_%hd252355252544%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252354252541%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252356252546%_))
                                          (_%__kont253914253915%_)
                                          (_%__kont253922253923%_))))
                                  (_%__kont253922253923%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd252352252536%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl252353252538%_))
                                      (let ((_%e252360252518%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl252353252538%_))))
                                        (let ((_%tl252362252523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252360252518%_)))
                                              (_%hd252361252521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252360252518%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252362252523%_))
                                              (_%__kont253916253917%_)
                                              (_%__kont253922253923%_))))
                                      (_%__kont253922253923%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd252352252536%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl252353252538%_))
                                          (let ((_%e252368252410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl252353252538%_))))
                                            (let ((_%tl252370252415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e252368252410%_)))
                                                  (_%hd252369252413%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e252368252410%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd252369252413%_))
                                                  (let ((_%e252371252418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd252369252413%_))))
                                                    (let ((_%tl252373252423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252371252418%_)))
                                                          (_%hd252372252421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252371252418%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd252372252421%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd252372252421%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252373252423%_))
                          (let ((_%e252374252426%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252373252423%_))))
                            (let ((_%tl252376252431%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252374252426%_)))
                                  (_%hd252375252429%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252374252426%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252376252431%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl252370252415%_))
                                      (let ((_%__splice253920253921%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl252370252415%_
                                                '0))))
                                        (let ((_%tl252379252436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253920253921%_
                                                  '1)))
                                              (_%target252377252434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253920253921%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252379252436%_))
                                              (_%__match254001254002%_
                                               _%e252351252533%_
                                               _%hd252352252536%_
                                               _%tl252353252538%_
                                               _%e252368252410%_
                                               _%hd252369252413%_
                                               _%tl252370252415%_
                                               _%e252371252418%_
                                               _%hd252372252421%_
                                               _%tl252373252423%_
                                               _%e252374252426%_
                                               _%hd252375252429%_
                                               _%tl252376252431%_
                                               _%__splice253920253921%_
                                               _%target252377252434%_
                                               _%tl252379252436%_)
                                              (_%__kont253922253923%_))))
                                      (_%__kont253922253923%_))
                                  (_%__kont253922253923%_))))
                          (_%__kont253922253923%_))
                      (_%__kont253922253923%_))
                  (_%__kont253922253923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont253922253923%_))))
                                          (_%__kont253922253923%_))
                                      (_%__kont253922253923%_))))
                          (_%__kont253922253923%_))))
                  (_%__kont253922253923%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx252339%_ _%klass252340%_)
        (let ((_%expr-type252342%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx252339%_))))
          (if _%expr-type252342%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type252342%_ _%klass252340%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx252317%_ _%expr252318%_ _%type252319%_)
        (if (not _%type252319%_)
            '#f
            (let ((_%$e252322%_
                   (eq? (##structure-ref _%type252319%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e252322%_
                  _%$e252322%_
                  (let ((_%expr-type252326%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr252318%_))))
                    (if (not _%expr-type252326%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type252326%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e252330%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type252326%_
                                      'gxc#!abort::t))))
                              (if _%$e252330%_
                                  _%$e252330%_
                                  (let ((_%$e252333%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type252326%_
                                            _%type252319%_))))
                                    (if _%$e252333%_
                                        _%$e252333%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type252319%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type252319%_
                                                   _%expr-type252326%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx252317%_
                                                   _%expr252318%_
                                                   _%expr-type252326%_
                                                   _%type252319%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self252131%_ _%ctx252132%_ _%stx252133%_ _%args252134%_)
        (let* ((_%self252137%_ _%self252131%_)
               (_%klass252147%_
                (let ((__tmp254521
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252137%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx252133%_ __tmp254521)))
               (_%fields252149%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252147%_
                           '5
                           '#f
                           '#f))))
               (_%args252155%_
                (map (lambda (_%g252150252152%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx252132%_ _%g252150252152%_)))
                     _%args252134%_))
               (_%inline-make-object252157%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self252137%_
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
                           _%self252137%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields252149%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass252160%_ _%klass252147%_)
               (_%$e252174%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass252160%_ '6 '#f '#f))))
          (if _%$e252174%_
              ((lambda (_%ctor252177%_)
                 (let ((_%$obj252179%_
                        (let ((__tmp254522
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp254522)))
                       (_%ctor-impl252180%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass252160%_
                           _%ctor252177%_))))
                   (let ((__tmp254523
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252179%_ '())
                                                  (cons _%inline-make-object252157%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl252180%_
                                                            (let ((__tmp254524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl252180%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj252179%_ '()))
                                             _%args252155%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp254524
                       _%stx252133%_
                       _%ctx252132%_))
                    (let ((_%$ctor252182%_
                           (let ((__tmp254525
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp254525))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor252182%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252137%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj252179%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor252177%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor252182%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor252182%_ '()))
                              (cons (cons '%#ref (cons _%$obj252179%_ '()))
                                    _%args252155%_)))
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
                             _%self252137%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor252177%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj252179%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp254523 _%stx252133%_))))
               _%$e252174%_)
              (let ((_%$e252184%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass252160%_
                        '10
                        '#f
                        '#f))))
                (if _%$e252184%_
                    ((lambda (_%metaclass252187%_)
                       (let* ((_%$obj252189%_
                               (let ((__tmp254526
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp254526)))
                              (_%metakons252191%_
                               (let ((__tmp254527
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx252133%_
                                         _%metaclass252187%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp254527
                                  'instance-init!)))
                              (__tmp254528
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj252189%_
                                                             '())
                                                       (cons _%inline-make-object252157%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons252191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp254529
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons252191%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self252137%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args252155%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp254529
                            _%stx252133%_
                            _%ctx252132%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252137%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj252189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args252155%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj252189%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp254528 _%stx252133%_)))
                     _%$e252184%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252160%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp254530
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args252155%_))))
                              (declare (not safe))
                              (##fx= __tmp254530 _%fields252149%_))
                            (let ((__tmp254531
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self252137%_
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
                                              _%self252137%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args252155%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp254531
                               _%stx252133%_))
                            (let ((__tmp254533
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self252137%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp254532
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass252160%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx252133%_
                               __tmp254533
                               __tmp254532)))
                        (let ((_%$obj252196%_
                               (let ((__tmp254534
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp254534))))
                          (let _%lp252198%_ ((_%rest252200%_ _%args252155%_)
                                             (_%initializers252201%_ '()))
                            (let* ((_%__stx254004254005%_ _%rest252200%_)
                                   (_%g252205252226%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx254004254005%_)))))
                              (let ((_%__kont254006254007%_
                                     (lambda (_%g252207252280%_
                                              _%g252208252281%_
                                              _%g252209252282%_)
                                       (let* ((_%slot252309%_
                                               (let ((__tmp254535
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g252209252282%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp254535)))
                                              (_%off252311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass252160%_
                                                  _%slot252309%_))))
                                         (if _%off252311%_
                                             (_%lp252198%_
                                              _%g252207252280%_
                                              (cons (cons _%off252311%_
                                                          _%g252208252281%_)
                                                    _%initializers252201%_))
                                             (let ((__tmp254536
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252137%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx252133%_
                                                __tmp254536
                                                _%slot252309%_))))))
                                    (_%__kont254008254009%_
                                     (lambda ()
                                       (let ((__tmp254537
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252157%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp254540
                                     (cons (cons '%#ref
                                                 (cons _%$obj252196%_ '()))
                                           '()))
                                    (__tmp254538
                                     (let ((__tmp254539
                                            (lambda (_%i252240%_ _%r252241%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252137%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i252240%_) '()))
                              (cons (cons '%#ref (cons _%$obj252196%_ '()))
                                    (cons (cdr _%i252240%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r252241%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp254539
                                        '()
                                        _%initializers252201%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp254540 __tmp254538)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254537
                                          _%stx252133%_))))
                                    (_%__kont254010254011%_
                                     (lambda ()
                                       (let ((__tmp254541
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252157%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args252155%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj252196%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254541
                                          _%stx252133%_)))))
                                (let* ((_%g252203252243%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx254004254005%_))
                                              (_%__kont254008254009%_)
                                              (_%__kont254010254011%_))))
                                       (_%__match254041254042%_
                                        (lambda (_%e252210252248%_
                                                 _%hd252211252251%_
                                                 _%tl252212252253%_
                                                 _%e252213252256%_
                                                 _%hd252214252259%_
                                                 _%tl252215252261%_
                                                 _%e252216252264%_
                                                 _%hd252217252267%_
                                                 _%tl252218252269%_
                                                 _%e252219252272%_
                                                 _%hd252220252275%_
                                                 _%tl252221252277%_)
                                          (let ((_%g252207252280%_
                                                 _%tl252221252277%_)
                                                (_%g252208252281%_
                                                 _%hd252220252275%_)
                                                (_%g252209252282%_
                                                 _%hd252217252267%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g252209252282%_))
                                                (_%__kont254006254007%_
                                                 _%g252207252280%_
                                                 _%g252208252281%_
                                                 _%g252209252282%_)
                                                (_%__kont254010254011%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx254004254005%_))
                                      (let ((_%e252210252248%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx254004254005%_))))
                                        (let ((_%tl252212252253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252210252248%_)))
                                              (_%hd252211252251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252210252248%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd252211252251%_))
                                              (let ((_%e252213252256%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd252211252251%_))))
                                                (let ((_%tl252215252261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252213252256%_)))
                                                      (_%hd252214252259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252213252256%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd252214252259%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd252214252259%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl252215252261%_))
                      (let ((_%e252216252264%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl252215252261%_))))
                        (let ((_%tl252218252269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252216252264%_)))
                              (_%hd252217252267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252216252264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252218252269%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252212252253%_))
                                  (let ((_%e252219252272%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252212252253%_))))
                                    (let ((_%tl252221252277%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252219252272%_)))
                                          (_%hd252220252275%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252219252272%_))))
                                      (_%__match254041254042%_
                                       _%e252210252248%_
                                       _%hd252211252251%_
                                       _%tl252212252253%_
                                       _%e252213252256%_
                                       _%hd252214252259%_
                                       _%tl252215252261%_
                                       _%e252216252264%_
                                       _%hd252217252267%_
                                       _%tl252218252269%_
                                       _%e252219252272%_
                                       _%hd252220252275%_
                                       _%tl252221252277%_)))
                                  (_%__kont254010254011%_))
                              (_%__kont254010254011%_))))
                      (_%__kont254010254011%_))
                  (_%__kont254010254011%_))
              (_%__kont254010254011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254010254011%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252203252243%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self251914%_ _%ctx251915%_ _%stx251916%_ _%args251917%_)
        (let* ((_%self251920%_ _%self251914%_)
               (_%arguments-ok?251930%_
                (let ((__method254485
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self251920%_ 'check-arguments))))
                  (if __method254485
                      (let ()
                        (declare (not safe))
                        (__method254485
                         _%self251920%_
                         _%ctx251915%_
                         _%stx251916%_
                         _%args251917%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self251920%_
                                 'check-arguments))
                        '#!void))))
               (_%g251932251942%_
                (lambda (_%g251933251939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251933251939%_))))
               (_%g251931252006%_
                (lambda (_%g251933251945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251933251945%_))
                      (let ((_%e251935251947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g251933251945%_))))
                        (let ((_%hd251936251950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251935251947%_)))
                              (_%tl251937251952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251935251947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251937251952%_))
                              ((lambda (_%g251934251955%_)
                                 (let* ((_%klass251968%_
                                         (let ((__tmp254542
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self251920%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx251916%_
                                            __tmp254542)))
                                        (_%field251970%_
                                         (let ((__tmp254543
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self251920%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass251968%_
                                            __tmp254543)))
                                        (_%object251972%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx251915%_
                                            _%g251934251955%_)))
                                        (_%klass251975%_ _%klass251968%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass251975%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp254544
                                              (cons (if (or _%arguments-ok?251930%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251920%_
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
                                 _%self251920%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field251970%_ '()))
                        (cons _%object251972%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254544
                                          _%stx251916%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass251975%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp254545
                                                  (cons (if (or _%arguments-ok?251930%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251920%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251920%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field251970%_ '()))
                            (cons _%object251972%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254545
                                              _%stx251916%_))
                                           (let ((_%$e251994%_
                                                  (let ((__tmp254546
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self251920%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass251975%_
                                                     __tmp254546))))
                                             (if _%$e251994%_
                                                 ((lambda (_%klass251997%_)
                                                    (let ((__tmp254547
                                                           (cons (if (or _%arguments-ok?251930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251920%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self251920%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field251970%_ '()))
                                     (cons _%object251972%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp254547 _%stx251916%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e251994%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self251920%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp254548
                                                            (let ((_%$obj252003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp254549
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp254549))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj252003%_ '())
                                              (cons _%object251972%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass251975%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj252003%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251920%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251970%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252003%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?251930%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252003%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self251920%_
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
                                                             _%self251920%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj252003%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self251920%_
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
               (gxc#xform-wrap-source __tmp254548 _%stx251916%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp254550
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object251972%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251920%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp254550 _%stx251916%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd251936251950%_)
                              (_%g251932251942%_ _%g251933251945%_))))
                      (_%g251932251942%_ _%g251933251945%_)))))
          (_%g251931252006%_ _%args251917%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass253772 __method-table253773)
        (let ((__check-arguments253774
               (let ((__tmp254551
                      (lambda ()
                        (let ((__method253775
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253773
                                  'check-arguments
                                  '#f))))
                          (if __method253775
                              __method253775
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp254551)))
              (__slot253776
               (let ((__slot253777
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass253772 'slot))))
                 (if __slot253777
                     __slot253777
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self251914%_ _%ctx251915%_ _%stx251916%_ _%args251917%_)
            (let* ((_%self251920%_ _%self251914%_)
                   (_%arguments-ok?251930%_
                    ((force __check-arguments253774)
                     _%self251920%_
                     _%ctx251915%_
                     _%stx251916%_
                     _%args251917%_))
                   (_%g251932251942%_
                    (lambda (_%g251933251939%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g251933251939%_))))
                   (_%g251931252006%_
                    (lambda (_%g251933251945%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g251933251945%_))
                          (let ((_%e251935251947%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g251933251945%_))))
                            (let ((_%hd251936251950%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251935251947%_)))
                                  (_%tl251937251952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251935251947%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl251937251952%_))
                                  ((lambda (_%g251934251955%_)
                                     (let* ((_%klass251968%_
                                             (let ((__tmp254552
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251920%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx251916%_
                                                __tmp254552)))
                                            (_%field251970%_
                                             (let ((__tmp254553
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251920%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass251968%_
                                                __tmp254553)))
                                            (_%object251972%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx251915%_
                                                _%g251934251955%_)))
                                            (_%klass251975%_ _%klass251968%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass251975%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp254554
                                                  (cons (if (or _%arguments-ok?251930%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251920%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251920%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field251970%_ '()))
                            (cons _%object251972%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254554
                                              _%stx251916%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass251975%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254555
                                                      (cons (if (or _%arguments-ok?251930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self251920%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251920%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field251970%_ '()))
                                (cons _%object251972%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254555
                                                  _%stx251916%_))
                                               (let ((_%$e251994%_
                                                      (let ((__tmp254556
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self251920%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass251975%_ __tmp254556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e251994%_
                                                     ((lambda (_%klass251997%_)
                                                        (let ((__tmp254557
                                                               (cons (if (or _%arguments-ok?251930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251920%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self251920%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field251970%_ '()))
                                         (cons _%object251972%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp254557 _%stx251916%_)))
              _%$e251994%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self251920%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp254558
                                                                (let ((_%$obj252003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp254559
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp254559))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252003%_ '())
                                                  (cons _%object251972%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass251975%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj252003%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251920%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field251970%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252003%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?251930%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252003%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251920%_
                               __slot253776
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
                        (##unchecked-structure-ref _%self251920%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251920%_
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
                   (gxc#xform-wrap-source __tmp254558 _%stx251916%_))
                 (let ((__tmp254560
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object251972%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251920%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp254560 _%stx251916%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd251936251950%_)
                                  (_%g251932251942%_ _%g251933251945%_))))
                          (_%g251932251942%_ _%g251933251945%_)))))
              (_%g251931252006%_ _%args251917%_))))))
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
      (lambda (_%self251678%_ _%ctx251679%_ _%stx251680%_ _%args251681%_)
        (let* ((_%self251684%_ _%self251678%_)
               (_%arguments-ok?251694%_
                (let ((__method254486
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self251684%_ 'check-arguments))))
                  (if __method254486
                      (let ()
                        (declare (not safe))
                        (__method254486
                         _%self251684%_
                         _%ctx251679%_
                         _%stx251680%_
                         _%args251681%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self251684%_
                                 'check-arguments))
                        '#!void))))
               (_%g251696251710%_
                (lambda (_%g251697251707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251697251707%_))))
               (_%g251695251789%_
                (lambda (_%g251697251713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251697251713%_))
                      (let ((_%e251700251715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g251697251713%_))))
                        (let ((_%hd251701251718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251700251715%_)))
                              (_%tl251702251720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251700251715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251702251720%_))
                              (let ((_%e251703251723%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251702251720%_))))
                                (let ((_%hd251704251726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251703251723%_)))
                                      (_%tl251705251728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251703251723%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl251705251728%_))
                                      ((lambda (_%g251698251731%_
                                                _%g251699251732%_)
                                         (let* ((_%klass251748%_
                                                 (let ((__tmp254561
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251684%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx251680%_
                                                    __tmp254561)))
                                                (_%field251750%_
                                                 (let ((__tmp254562
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251684%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass251748%_
                                                    __tmp254562)))
                                                (_%object251752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx251679%_
                                                    _%g251699251732%_)))
                                                (_%value251754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx251679%_
                                                    _%g251698251731%_)))
                                                (_%klass251757%_
                                                 _%klass251748%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass251757%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254563
                                                      (cons (if (or _%arguments-ok?251694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self251684%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251684%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field251750%_ '()))
                                (cons _%object251752%_
                                      (cons _%value251754%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254563
                                                  _%stx251680%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass251757%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp254564
                                                          (cons (if (or _%arguments-ok?251694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self251684%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251684%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251750%_ '()))
                                    (cons _%object251752%_
                                          (cons _%value251754%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp254564
                                                      _%stx251680%_))
                                                   (let ((_%$e251777%_
                                                          (let ((__tmp254565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251684%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass251757%_
                     __tmp254565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e251777%_
                                                         ((lambda (_%klass251780%_)
                                                            (let ((__tmp254566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?251694%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251684%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self251684%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field251750%_ '()))
                                             (cons _%object251752%_
                                                   (cons _%value251754%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254566 _%stx251680%_)))
                  _%$e251777%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self251684%_ '4 '#f '#f))
                     (let ((__tmp254567
                            (let ((_%$obj251786%_
                                   (let ((__tmp254568
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp254568))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj251786%_ '())
                                                      (cons _%object251752%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass251757%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj251786%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self251684%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field251750%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj251786%_
                                                              '()))
                                                  (cons _%value251754%_
                                                        '())))))
                          (cons (if _%arguments-ok?251694%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self251684%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value251754%_ '())))))
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
                             _%self251684%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj251786%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251684%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value251754%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp254567 _%stx251680%_))
                     (let ((__tmp254569
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object251752%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self251684%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value251754%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp254569
                        _%stx251680%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd251704251726%_
                                       _%hd251701251718%_)
                                      (_%g251696251710%_ _%g251697251713%_))))
                              (_%g251696251710%_ _%g251697251713%_))))
                      (_%g251696251710%_ _%g251697251713%_)))))
          (_%g251695251789%_ _%args251681%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass253778 __method-table253779)
        (let ((__check-arguments253780
               (let ((__tmp254570
                      (lambda ()
                        (let ((__method253781
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253779
                                  'check-arguments
                                  '#f))))
                          (if __method253781
                              __method253781
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp254570))))
          (lambda (_%self251678%_ _%ctx251679%_ _%stx251680%_ _%args251681%_)
            (let* ((_%self251684%_ _%self251678%_)
                   (_%arguments-ok?251694%_
                    ((force __check-arguments253780)
                     _%self251684%_
                     _%ctx251679%_
                     _%stx251680%_
                     _%args251681%_))
                   (_%g251696251710%_
                    (lambda (_%g251697251707%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g251697251707%_))))
                   (_%g251695251789%_
                    (lambda (_%g251697251713%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g251697251713%_))
                          (let ((_%e251700251715%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g251697251713%_))))
                            (let ((_%hd251701251718%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251700251715%_)))
                                  (_%tl251702251720%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251700251715%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251702251720%_))
                                  (let ((_%e251703251723%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251702251720%_))))
                                    (let ((_%hd251704251726%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251703251723%_)))
                                          (_%tl251705251728%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251703251723%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251705251728%_))
                                          ((lambda (_%g251698251731%_
                                                    _%g251699251732%_)
                                             (let* ((_%klass251748%_
                                                     (let ((__tmp254571
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251684%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx251680%_
                                                        __tmp254571)))
                                                    (_%field251750%_
                                                     (let ((__tmp254572
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251684%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass251748%_
                                                        __tmp254572)))
                                                    (_%object251752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251679%_
                                                        _%g251699251732%_)))
                                                    (_%value251754%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251679%_
                                                        _%g251698251731%_)))
                                                    (_%klass251757%_
                                                     _%klass251748%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass251757%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp254573
                                                          (cons (if (or _%arguments-ok?251694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self251684%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251684%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251750%_ '()))
                                    (cons _%object251752%_
                                          (cons _%value251754%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp254573
                                                      _%stx251680%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass251757%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp254574
                                                              (cons (if (or _%arguments-ok?251694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self251684%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251684%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field251750%_ '()))
                                        (cons _%object251752%_
                                              (cons _%value251754%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp254574 _%stx251680%_))
               (let ((_%$e251777%_
                      (let ((__tmp254575
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251684%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass251757%_
                         __tmp254575))))
                 (if _%$e251777%_
                     ((lambda (_%klass251780%_)
                        (let ((__tmp254576
                               (cons (if (or _%arguments-ok?251694%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self251684%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self251684%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field251750%_
                                                             '()))
                                                 (cons _%object251752%_
                                                       (cons _%value251754%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp254576 _%stx251680%_)))
                      _%$e251777%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251684%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp254577
                                (let ((_%$obj251786%_
                                       (let ((__tmp254578
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp254578))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj251786%_
                                                                '())
                                                          (cons _%object251752%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass251757%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj251786%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self251684%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field251750%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value251754%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?251694%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj251786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self251684%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value251754%_ '())))))
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
                                 _%self251684%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj251786%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251684%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value251754%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp254577 _%stx251680%_))
                         (let ((__tmp254579
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object251752%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251684%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value251754%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp254579
                            _%stx251680%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd251704251726%_
                                           _%hd251701251718%_)
                                          (_%g251696251710%_
                                           _%g251697251713%_))))
                                  (_%g251696251710%_ _%g251697251713%_))))
                          (_%g251696251710%_ _%g251697251713%_)))))
              (_%g251695251789%_ _%args251681%_))))))
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
      (lambda (_%self251494%_ _%ctx251495%_ _%stx251496%_ _%args251497%_)
        (let* ((_%self251500%_ _%self251494%_)
               (_%self251509251519%_ _%self251500%_)
               (_%E251511251522%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self251509251519%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K251512251532%_
                (lambda (_%inline251525%_ _%dispatch251526%_ _%arity251527%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self251500%_
                         _%args251497%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx251496%_
                         _%arity251527%_)))
                  (if _%inline251525%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp254580 (_%inline251525%_ _%stx251496%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp254580
                           _%stx251496%_
                           _%ctx251495%_)))
                      (if (and _%dispatch251526%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch251526%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch251526%_))
                            (let ((__tmp254581
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch251526%_
                                                           '()))
                                               _%args251497%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp254581
                               _%stx251496%_
                               _%ctx251495%_)))
                          (gxc#!procedure::optimize-call
                           _%self251500%_
                           _%ctx251495%_
                           _%stx251496%_
                           _%args251497%_)))))
               (_%e251513251535%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251509251519%_ '1 '#f '#f)))
               (_%e251514251538%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251509251519%_ '2 '#f '#f)))
               (_%e251515251541%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251509251519%_ '3 '#f '#f)))
               (_%arity251544%_ _%e251515251541%_)
               (_%e251516251546%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251509251519%_ '4 '#f '#f)))
               (_%dispatch251549%_ _%e251516251546%_)
               (_%e251517251551%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251509251519%_ '5 '#f '#f)))
               (_%inline251554%_ _%e251517251551%_))
          (_%K251512251532%_
           _%inline251554%_
           _%dispatch251549%_
           _%arity251544%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self251346%_ _%ctx251347%_ _%stx251348%_ _%args251349%_)
        (let* ((_%self251352%_ _%self251346%_)
               (_%$e251366%_
                (let ((__tmp254583
                       (lambda (_%g251361251363%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g251361251363%_
                            _%args251349%_))))
                      (__tmp254582
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self251352%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp254583 __tmp254582))))
          (if _%$e251366%_
              ((lambda (_%clause251369%_)
                 (let ((__method254487
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause251369%_ 'optimize-call))))
                   (if __method254487
                       (let ()
                         (declare (not safe))
                         (__method254487
                          _%clause251369%_
                          _%ctx251347%_
                          _%stx251348%_
                          _%args251349%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause251369%_
                                  'optimize-call))
                         '#!void))))
               _%$e251366%_)
              (let ((__tmp254584
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self251352%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx251348%_
                 __tmp254584))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self251087%_ _%ctx251088%_ _%stx251089%_ _%args251090%_)
        (let* ((_%self251093%_ _%self251087%_)
               (_%self251102251111%_ _%self251093%_)
               (_%E251104251114%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self251102251111%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K251105251205%_
                (lambda (_%dispatch251117%_ _%table251118%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch251117%_))
                      (let* ((_%g251119251129%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch251117%_)))
                             (_%else251121251137%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch251117%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx251088%_
                                   _%stx251089%_))))
                             (_%K251123251186%_
                              (lambda (_%main251140%_ _%keys251141%_)
                                (let ((_g254585_
                                       (gxc#!kw-lambda-split-args
                                        _%stx251089%_
                                        _%args251090%_)))
                                  (begin
                                    (let ((_g254586_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g254585_)
                                                 (##values-length _g254585_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g254586_ 2)))
                                          (error "Context expects 2 values"
                                                 _g254586_)))
                                    (let ((_%pargs251143%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g254585_ 0)))
                                          (_%kwargs251144%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g254585_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main251140%_))
                                        (if _%table251118%_
                                            (let ((_%xargs251152%_
                                                   (map (lambda (_%key251146%_)
                                                          (let ((_%$e251148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key251146%_ _%kwargs251144%_))))
                    (if _%$e251148%_ _%$e251148%_ '(%#ref absent-value))))
                _%keys251141%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw251154%_)
                                                 (if (memq (car _%kw251154%_)
                                                           _%keys251141%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx251089%_
                                                        _%keys251141%_
                                                        _%kw251154%_))))
                                               _%kwargs251144%_)
                                              (let ((__tmp254587
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main251140%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs251143%_
                                  _%xargs251152%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp254587
                                                 _%stx251089%_
                                                 _%ctx251088%_)))
                                            (let* ((_%kwt251156%_
                                                    (let ((__tmp254588
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp254588)))
                                                   (_%kwvars251160%_
                                                    (map (lambda (_%_251158%_)
                                                           (let ((__tmp254589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp254589)))
                 _%kwargs251144%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind251165%_
                                                    (map (lambda (_%kw251162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251163%_)
                   (cons (cons _%kwvar251163%_ '())
                         (cons (cdr _%kw251162%_) '())))
                 _%kwargs251144%_
                 _%kwvars251160%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset251170%_
                                                    (map (lambda (_%kw251167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251168%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt251156%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw251167%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar251168%_
                                                             '()))
                                                 '()))))))
                 _%kwargs251144%_
                 _%kwvars251160%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs251175%_
                                                    (map (lambda (_%kw251172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251173%_)
                   (cons (car _%kw251172%_)
                         (cons '%#ref (cons _%kwvar251173%_ '()))))
                 _%kwargs251144%_
                 _%kwvars251160%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs251183%_
                                                    (map (lambda (_%key251177%_)
                                                           (let ((_%$e251179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key251177%_ _%xkwargs251175%_))))
                     (if _%$e251179%_ _%$e251179%_ '(%#ref absent-value))))
                 _%keys251141%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp254590
                                                    (cons '%#let-values
                                                          (cons _%kwbind251165%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt251156%_ '())
                                                      (cons (let ((__tmp254591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs251144%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254591 _%stx251089%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp254592
                                                             (cons (let ((__tmp254593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main251140%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt251156%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs251143%_
                                                       _%xargs251183%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp254593 _%stx251089%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp254592 _%kwset251170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp254590
                                               _%stx251089%_
                                               _%ctx251088%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g251119251129%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e251124251189%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251119251129%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e251125251192%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251119251129%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e251126251195%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251119251129%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys251198%_ _%e251126251195%_)
                                   (_%e251127251200%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251119251129%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main251203%_ _%e251127251200%_))
                              (_%K251123251186%_
                               _%main251203%_
                               _%keys251198%_))
                            (_%else251121251137%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx251088%_ _%stx251089%_)))))
               (_%e251106251208%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251102251111%_ '1 '#f '#f)))
               (_%e251107251211%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251102251111%_ '2 '#f '#f)))
               (_%e251108251214%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251102251111%_ '3 '#f '#f)))
               (_%table251217%_ _%e251108251214%_)
               (_%e251109251219%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251102251111%_ '4 '#f '#f)))
               (_%dispatch251222%_ _%e251109251219%_))
          (_%K251105251205%_ _%dispatch251222%_ _%table251217%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx250700%_ _%args250701%_)
        (let _%lp250703%_ ((_%rest250705%_ _%args250701%_)
                           (_%pargs250706%_ '())
                           (_%kwargs250707%_ '()))
          (let* ((_%__stx254046254047%_ _%rest250705%_)
                 (_%g250713250765%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx254046254047%_)))))
            (let ((_%__kont254048254049%_
                   (lambda (_%g250715250944%_ _%g250716250945%_)
                     (_%lp250703%_
                      _%g250715250944%_
                      (cons _%g250716250945%_ _%pargs250706%_)
                      _%kwargs250707%_)))
                  (_%__kont254050254051%_
                   (lambda (_%g250730250890%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g250730250890%_
                                _%pargs250706%_))
                             (reverse _%kwargs250707%_))))
                  (_%__kont254052254053%_
                   (lambda (_%g250741250837%_
                            _%g250742250838%_
                            _%g250743250839%_)
                     (let ((_%kw250856%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g250743250839%_))))
                       (if (assq _%kw250856%_ _%kwargs250707%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx250700%_
                              _%kw250856%_))
                           (_%lp250703%_
                            _%g250741250837%_
                            _%pargs250706%_
                            (cons (cons _%kw250856%_ _%g250742250838%_)
                                  _%kwargs250707%_))))))
                  (_%__kont254054254055%_
                   (lambda (_%g250756250785%_ _%g250757250786%_)
                     (_%lp250703%_
                      _%g250756250785%_
                      (cons _%g250757250786%_ _%pargs250706%_)
                      _%kwargs250707%_)))
                  (_%__kont254056254057%_
                   (lambda ()
                     (values (reverse _%pargs250706%_)
                             (reverse _%kwargs250707%_)))))
              (let ((_%__match254153254154%_
                     (lambda (_%e250744250805%_
                              _%hd250745250808%_
                              _%tl250746250810%_
                              _%e250747250813%_
                              _%hd250748250816%_
                              _%tl250749250818%_
                              _%e250750250821%_
                              _%hd250751250824%_
                              _%tl250752250826%_
                              _%e250753250829%_
                              _%hd250754250832%_
                              _%tl250755250834%_)
                       (let ((_%g250741250837%_ _%tl250755250834%_)
                             (_%g250742250838%_ _%hd250754250832%_)
                             (_%g250743250839%_ _%hd250751250824%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g250743250839%_))
                             (_%__kont254052254053%_
                              _%g250741250837%_
                              _%g250742250838%_
                              _%g250743250839%_)
                             (_%__kont254054254055%_
                              _%tl250746250810%_
                              _%hd250745250808%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx254046254047%_))
                    (let ((_%e250717250909%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx254046254047%_))))
                      (let ((_%tl250719250914%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250717250909%_)))
                            (_%hd250718250912%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250717250909%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd250718250912%_))
                            (let ((_%e250720250917%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd250718250912%_))))
                              (let ((_%tl250722250922%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e250720250917%_)))
                                    (_%hd250721250920%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e250720250917%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd250721250920%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd250721250920%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl250722250922%_))
                                            (let ((_%e250723250925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl250722250922%_))))
                                              (let ((_%tl250725250930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e250723250925%_)))
                                                    (_%hd250724250928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e250723250925%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd250724250928%_))
                                                    (let ((_%e250726250933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd250724250928%_))))
                                                      (if (equal? _%e250726250933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250725250930%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250719250914%_))
                          (let ((_%e250727250936%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250719250914%_))))
                            (let ((_%tl250729250941%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250727250936%_)))
                                  (_%hd250728250939%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250727250936%_))))
                              (_%__kont254048254049%_
                               _%tl250729250941%_
                               _%hd250728250939%_)))
                          (_%__kont254054254055%_
                           _%tl250719250914%_
                           _%hd250718250912%_))
                      (_%__kont254054254055%_
                       _%tl250719250914%_
                       _%hd250718250912%_))
                  (if (equal? _%e250726250933%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250725250930%_))
                          (_%__kont254050254051%_ _%tl250719250914%_)
                          (_%__kont254054254055%_
                           _%tl250719250914%_
                           _%hd250718250912%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250725250930%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250719250914%_))
                              (let ((_%e250753250829%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250719250914%_))))
                                (let ((_%tl250755250834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250753250829%_)))
                                      (_%hd250754250832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250753250829%_))))
                                  (_%__match254153254154%_
                                   _%e250717250909%_
                                   _%hd250718250912%_
                                   _%tl250719250914%_
                                   _%e250720250917%_
                                   _%hd250721250920%_
                                   _%tl250722250922%_
                                   _%e250723250925%_
                                   _%hd250724250928%_
                                   _%tl250725250930%_
                                   _%e250753250829%_
                                   _%hd250754250832%_
                                   _%tl250755250834%_)))
                              (_%__kont254054254055%_
                               _%tl250719250914%_
                               _%hd250718250912%_))
                          (_%__kont254054254055%_
                           _%tl250719250914%_
                           _%hd250718250912%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl250725250930%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl250719250914%_))
                                                            (let ((_%e250753250829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl250719250914%_))))
                      (let ((_%tl250755250834%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250753250829%_)))
                            (_%hd250754250832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250753250829%_))))
                        (_%__match254153254154%_
                         _%e250717250909%_
                         _%hd250718250912%_
                         _%tl250719250914%_
                         _%e250720250917%_
                         _%hd250721250920%_
                         _%tl250722250922%_
                         _%e250723250925%_
                         _%hd250724250928%_
                         _%tl250725250930%_
                         _%e250753250829%_
                         _%hd250754250832%_
                         _%tl250755250834%_)))
                    (_%__kont254054254055%_
                     _%tl250719250914%_
                     _%hd250718250912%_))
                (_%__kont254054254055%_
                 _%tl250719250914%_
                 _%hd250718250912%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont254054254055%_
                                             _%tl250719250914%_
                                             _%hd250718250912%_))
                                        (_%__kont254054254055%_
                                         _%tl250719250914%_
                                         _%hd250718250912%_))
                                    (_%__kont254054254055%_
                                     _%tl250719250914%_
                                     _%hd250718250912%_))))
                            (_%__kont254054254055%_
                             _%tl250719250914%_
                             _%hd250718250912%_))))
                    (_%__kont254056254057%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self250684%_ _%ctx250685%_ _%stx250686%_ _%args250687%_)
        (let ((_%self250690%_ _%self250684%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx250685%_ _%stx250686%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self250374%_ _%stx250375%_)
        (let* ((_%__stx254162254163%_ _%stx250375%_)
               (_%g250378250418%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254162254163%_)))))
          (let ((_%__kont254164254165%_
                 (lambda (_%g250380250522%_ _%g250381250523%_)
                   (let ((_%$e250550%_
                          (member 'return:
                                  (let ((__tmp254594
                                         (lambda (_%g250542250545%_
                                                  _%g250543250547%_)
                                           (cons _%g250542250545%_
                                                 _%g250543250547%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp254594
                                     '()
                                     _%g250381250523%_))
                                  gx#stx-eq?)))
                     (if _%$e250550%_
                         ((lambda (_%tail250553%_)
                            (let ((_%type250555%_
                                   (let ((__tmp254595
                                          (let ((__tmp254596
                                                 (cadr _%tail250553%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp254596))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx250375%_
                                      __tmp254595))))
                              (gxc#check-return-type!
                               _%stx250375%_
                               _%g250380250522%_
                               _%type250555%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self250374%_
                                 _%g250380250522%_))))
                          _%$e250550%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self250374%_
                            _%g250380250522%_))))))
                (_%__kont254168254169%_
                 (lambda (_%g250403250447%_ _%g250404250448%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self250374%_ _%g250403250447%_)))))
            (let ((_%__match254199254200%_
                   (lambda (_%e250382250468%_
                            _%hd250383250471%_
                            _%tl250384250473%_
                            _%e250385250476%_
                            _%hd250386250479%_
                            _%tl250387250481%_
                            _%e250388250484%_
                            _%hd250389250487%_
                            _%tl250390250489%_
                            _%__splice254166254167%_
                            _%target250391250492%_
                            _%tl250393250494%_)
                     (letrec ((_%loop250394250497%_
                               (lambda (_%hd250392250500%_
                                        _%signature250398250502%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd250392250500%_))
                                     (let ((_%e250395250504%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd250392250500%_))))
                                       (let ((_%lp-tl250397250509%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e250395250504%_)))
                                             (_%lp-hd250396250507%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e250395250504%_))))
                                         (_%loop250394250497%_
                                          _%lp-tl250397250509%_
                                          (cons _%lp-hd250396250507%_
                                                _%signature250398250502%_))))
                                     (let ((_%signature250399250512%_
                                            (reverse _%signature250398250502%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl250387250481%_))
                                           (let ((_%e250400250514%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl250387250481%_))))
                                             (let ((_%tl250402250519%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e250400250514%_)))
                                                   (_%hd250401250517%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e250400250514%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl250402250519%_))
                                                   (_%__kont254164254165%_
                                                    _%hd250401250517%_
                                                    _%signature250399250512%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g250378250418%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g250378250418%_))))))))
                       (_%loop250394250497%_ _%target250391250492%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254162254163%_))
                  (let ((_%e250382250468%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254162254163%_))))
                    (let ((_%tl250384250473%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250382250468%_)))
                          (_%hd250383250471%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250382250468%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250384250473%_))
                          (let ((_%e250385250476%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250384250473%_))))
                            (let ((_%tl250387250481%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250385250476%_)))
                                  (_%hd250386250479%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250385250476%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250386250479%_))
                                  (let ((_%e250388250484%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250386250479%_))))
                                    (let ((_%tl250390250489%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250388250484%_)))
                                          (_%hd250389250487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250388250484%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250389250487%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd250389250487%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl250390250489%_))
                                                  (let ((_%__splice254166254167%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl250390250489%_
                                                            '0))))
                                                    (let ((_%tl250393250494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254166254167%_
                                                              '1)))
                                                          (_%target250391250492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254166254167%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250393250494%_))
                                                          (_%__match254199254200%_
                                                           _%e250382250468%_
                                                           _%hd250383250471%_
                                                           _%tl250384250473%_
                                                           _%e250385250476%_
                                                           _%hd250386250479%_
                                                           _%tl250387250481%_
                                                           _%e250388250484%_
                                                           _%hd250389250487%_
                                                           _%tl250390250489%_
                                                           _%__splice254166254167%_
                                                           _%target250391250492%_
                                                           _%tl250393250494%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250387250481%_))
                      (let ((_%e250411250439%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250387250481%_))))
                        (let ((_%tl250413250444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250411250439%_)))
                              (_%hd250412250442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250411250439%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250413250444%_))
                              (_%__kont254168254169%_
                               _%hd250412250442%_
                               _%hd250386250479%_)
                              (let ()
                                (declare (not safe))
                                (_%g250378250418%_)))))
                      (let () (declare (not safe)) (_%g250378250418%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250387250481%_))
                                                      (let ((_%e250411250439%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250387250481%_))))
                (let ((_%tl250413250444%_
                       (let () (declare (not safe)) (##cdr _%e250411250439%_)))
                      (_%hd250412250442%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250411250439%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250413250444%_))
                      (_%__kont254168254169%_
                       _%hd250412250442%_
                       _%hd250386250479%_)
                      (let () (declare (not safe)) (_%g250378250418%_)))))
              (let () (declare (not safe)) (_%g250378250418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250387250481%_))
                                                  (let ((_%e250411250439%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250387250481%_))))
                                                    (let ((_%tl250413250444%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250411250439%_)))
                                                          (_%hd250412250442%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250411250439%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250413250444%_))
                                                          (_%__kont254168254169%_
                                                           _%hd250412250442%_
                                                           _%hd250386250479%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250378250418%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250378250418%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250387250481%_))
                                              (let ((_%e250411250439%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250387250481%_))))
                                                (let ((_%tl250413250444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250411250439%_)))
                                                      (_%hd250412250442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250411250439%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250413250444%_))
                                                      (_%__kont254168254169%_
                                                       _%hd250412250442%_
                                                       _%hd250386250479%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250378250418%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250378250418%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250387250481%_))
                                      (let ((_%e250411250439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250387250481%_))))
                                        (let ((_%tl250413250444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250411250439%_)))
                                              (_%hd250412250442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250411250439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250413250444%_))
                                              (_%__kont254168254169%_
                                               _%hd250412250442%_
                                               _%hd250386250479%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g250378250418%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250378250418%_))))))
                          (let () (declare (not safe)) (_%g250378250418%_)))))
                  (let () (declare (not safe)) (_%g250378250418%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx250349%_ _%expr250350%_ _%type250351%_)
        (let ((_%$e250353%_ (not _%type250351%_)))
          (if _%$e250353%_
              _%$e250353%_
              (let ((_%$e250356%_
                     (eq? (##structure-ref _%type250351%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e250356%_
                    _%$e250356%_
                    (let ((_%$e250359%_
                           (eq? (##structure-ref
                                 _%type250351%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e250359%_
                          _%$e250359%_
                          (let ((_%expr-type250363%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr250350%_))))
                            (if (not _%expr-type250363%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx250349%_
                                   _%type250351%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type250363%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx250349%_
                                       _%type250351%_
                                       _%expr-type250363%_))
                                    (let ((_%$e250367%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type250363%_
                                              'gxc#!abort::t))))
                                      (if _%$e250367%_
                                          _%$e250367%_
                                          (let ((_%$e250370%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type250363%_
                                                    _%type250351%_))))
                                            (if _%$e250370%_
                                                _%$e250370%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx250349%_
                                                   _%type250351%_
                                                   _%expr-type250363%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self249775%_ _%stx249776%_)
        (let* ((_%__stx254244254245%_ _%stx249776%_)
               (_%g249781249891%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254244254245%_)))))
          (let ((_%__kont254246254247%_
                 (lambda (_%g249783250323%_
                          _%g249784250324%_
                          _%g249785250325%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g249785250325%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self249775%_ _%g249784250324%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self249775%_
                          _%g249783250323%_)))))
                (_%__kont254248254249%_
                 (lambda (_%g249804250149%_
                          _%g249805250150%_
                          _%g249806250151%_
                          _%g249807250152%_)
                   (let ((_%$e250184%_
                          (let ((__tmp254597
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g249807250152%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp254597))))
                     (if _%$e250184%_
                         ((lambda (_%pred-type250187%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250187%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250187%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test250192%_
                                        (let ((__tmp254598
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g249807250152%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g249806250151%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp254598
                                           _%stx249776%_
                                           _%self249775%_)))
                                       (_%K250196%_
                                        (let ((__tmp254599
                                               (lambda ()
                                                 (let ((__tmp254602
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self249775%_
                                                             _%g249805250150%_))))
                                                       (__tmp254600
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g249806250151%_))
                            (let ((__tmp254601
                                   (##structure-ref
                                    _%pred-type250187%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx249776%_
                               __tmp254601)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp254602
                                                    gxc#current-compile-path-type
                                                    __tmp254600)))))
                                          (declare (not safe))
                                          (__make-promise __tmp254599)))
                                       (_%E250199%_
                                        (let ((__tmp254603
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self249775%_
                                                    _%g249804250149%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp254603)))
                                       (_%__stx254222254223%_ _%test250192%_)
                                       (_%g250203250217%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx254222254223%_)))))
                                  (let ((_%__kont254224254225%_
                                         (lambda (_%g250205250245%_
                                                  _%g250206250246%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g250205250245%_))
                                               (force _%K250196%_)
                                               (force _%E250199%_))))
                                        (_%__kont254226254227%_
                                         (lambda ()
                                           (let ((__tmp254604
                                                  (cons '%#if
                                                        (cons _%test250192%_
                                                              (cons (force _%K250196%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E250199%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254604
                                              _%stx249776%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx254222254223%_))
                                        (let ((_%e250207250229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx254222254223%_))))
                                          (let ((_%tl250209250234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e250207250229%_)))
                                                (_%hd250208250232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e250207250229%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl250209250234%_))
                                                (let ((_%e250210250237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl250209250234%_))))
                                                  (let ((_%tl250212250242%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e250210250237%_)))
                                                        (_%hd250211250240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e250210250237%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl250212250242%_))
                                                        (_%__kont254224254225%_
                                                         _%hd250211250240%_
                                                         _%hd250208250232%_)
                                                        (_%__kont254226254227%_))))
                                                (_%__kont254226254227%_))))
                                        (_%__kont254226254227%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self249775%_
                                   _%stx249776%_))))
                          _%$e250184%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self249775%_
                            _%stx249776%_))))))
                (_%__kont254250254251%_
                 (lambda (_%g249841250025%_
                          _%g249842250026%_
                          _%g249843250027%_
                          _%g249844250028%_)
                   (gxc#optimize-if%
                    _%self249775%_
                    (let ((__tmp254605
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g249843250027%_
                                       (cons _%g249841250025%_
                                             (cons _%g249842250026%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254605 _%stx249776%_)))))
                (_%__kont254252254253%_
                 (lambda (_%g249872249928%_
                          _%g249873249929%_
                          _%g249874249930%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self249775%_ _%stx249776%_)))))
            (let ((_%__match254451254452%_
                   (lambda (_%e249845249953%_
                            _%hd249846249956%_
                            _%tl249847249958%_
                            _%e249848249961%_
                            _%hd249849249964%_
                            _%tl249850249966%_
                            _%e249851249969%_
                            _%hd249852249972%_
                            _%tl249853249974%_
                            _%e249854249977%_
                            _%hd249855249980%_
                            _%tl249856249982%_
                            _%e249857249985%_
                            _%hd249858249988%_
                            _%tl249859249990%_
                            _%e249860249993%_
                            _%hd249861249996%_
                            _%tl249862249998%_
                            _%e249863250001%_
                            _%hd249864250004%_
                            _%tl249865250006%_
                            _%e249866250009%_
                            _%hd249867250012%_
                            _%tl249868250014%_
                            _%e249869250017%_
                            _%hd249870250020%_
                            _%tl249871250022%_)
                     (let ((_%g249841250025%_ _%hd249870250020%_)
                           (_%g249842250026%_ _%hd249867250012%_)
                           (_%g249843250027%_ _%hd249864250004%_)
                           (_%g249844250028%_ _%hd249861249996%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g249844250028%_ 'not))
                           (_%__kont254250254251%_
                            _%g249841250025%_
                            _%g249842250026%_
                            _%g249843250027%_
                            _%g249844250028%_)
                           (_%__kont254252254253%_
                            _%hd249870250020%_
                            _%hd249867250012%_
                            _%hd249849249964%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254244254245%_))
                  (let ((_%e249786250275%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254244254245%_))))
                    (let ((_%tl249788250280%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249786250275%_)))
                          (_%hd249787250278%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249786250275%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249788250280%_))
                          (let ((_%e249789250283%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249788250280%_))))
                            (let ((_%tl249791250288%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249789250283%_)))
                                  (_%hd249790250286%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249789250283%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd249790250286%_))
                                  (let ((_%e249792250291%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd249790250286%_))))
                                    (let ((_%tl249794250296%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249792250291%_)))
                                          (_%hd249793250294%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249792250291%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd249793250294%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd249793250294%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249794250296%_))
                                                  (let ((_%e249795250299%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249794250296%_))))
                                                    (let ((_%tl249797250304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249795250299%_)))
                                                          (_%hd249796250302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249795250299%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249797250304%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl249791250288%_))
                      (let ((_%e249798250307%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249791250288%_))))
                        (let ((_%tl249800250312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249798250307%_)))
                              (_%hd249799250310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249798250307%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249800250312%_))
                              (let ((_%e249801250315%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249800250312%_))))
                                (let ((_%tl249803250320%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249801250315%_)))
                                      (_%hd249802250318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249801250315%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249803250320%_))
                                      (_%__kont254246254247%_
                                       _%hd249802250318%_
                                       _%hd249799250310%_
                                       _%hd249796250302%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g249781249891%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g249781249891%_)))))
                      (let () (declare (not safe)) (_%g249781249891%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249791250288%_))
                      (let ((_%e249881249912%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249791250288%_))))
                        (let ((_%tl249883249917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249881249912%_)))
                              (_%hd249882249915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249881249912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249883249917%_))
                              (let ((_%e249884249920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249883249917%_))))
                                (let ((_%tl249886249925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249884249920%_)))
                                      (_%hd249885249923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249884249920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249886249925%_))
                                      (_%__kont254252254253%_
                                       _%hd249885249923%_
                                       _%hd249882249915%_
                                       _%hd249790250286%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g249781249891%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g249781249891%_)))))
                      (let () (declare (not safe)) (_%g249781249891%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249791250288%_))
                                                      (let ((_%e249881249912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249791250288%_))))
                (let ((_%tl249883249917%_
                       (let () (declare (not safe)) (##cdr _%e249881249912%_)))
                      (_%hd249882249915%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249881249912%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249883249917%_))
                      (let ((_%e249884249920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249883249917%_))))
                        (let ((_%tl249886249925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249884249920%_)))
                              (_%hd249885249923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249884249920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249886249925%_))
                              (_%__kont254252254253%_
                               _%hd249885249923%_
                               _%hd249882249915%_
                               _%hd249790250286%_)
                              (let ()
                                (declare (not safe))
                                (_%g249781249891%_)))))
                      (let () (declare (not safe)) (_%g249781249891%_)))))
              (let () (declare (not safe)) (_%g249781249891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd249793250294%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249794250296%_))
                                                      (let ((_%e249817250085%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249794250296%_))))
                (let ((_%tl249819250090%_
                       (let () (declare (not safe)) (##cdr _%e249817250085%_)))
                      (_%hd249818250088%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249817250085%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd249818250088%_))
                      (let ((_%e249820250093%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd249818250088%_))))
                        (let ((_%tl249822250098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249820250093%_)))
                              (_%hd249821250096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249820250093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd249821250096%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd249821250096%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249822250098%_))
                                      (let ((_%e249823250101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249822250098%_))))
                                        (let ((_%tl249825250106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249823250101%_)))
                                              (_%hd249824250104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249823250101%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249825250106%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249819250090%_))
                                                  (let ((_%e249826250109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249819250090%_))))
                                                    (let ((_%tl249828250114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249826250109%_)))
                                                          (_%hd249827250112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249826250109%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd249827250112%_))
                                                          (let ((_%e249829250117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd249827250112%_))))
                    (let ((_%tl249831250122%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249829250117%_)))
                          (_%hd249830250120%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249829250117%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd249830250120%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd249830250120%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249831250122%_))
                                  (let ((_%e249832250125%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249831250122%_))))
                                    (let ((_%tl249834250130%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249832250125%_)))
                                          (_%hd249833250128%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249832250125%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249834250130%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249828250114%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249791250288%_))
                                                  (let ((_%e249835250133%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249791250288%_))))
                                                    (let ((_%tl249837250138%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249835250133%_)))
                                                          (_%hd249836250136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249835250133%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249837250138%_))
                                                          (let ((_%e249838250141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249837250138%_))))
                    (let ((_%tl249840250146%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249838250141%_)))
                          (_%hd249839250144%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249838250141%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249840250146%_))
                          (_%__kont254248254249%_
                           _%hd249839250144%_
                           _%hd249836250136%_
                           _%hd249833250128%_
                           _%hd249824250104%_)
                          (let () (declare (not safe)) (_%g249781249891%_)))))
                  (let () (declare (not safe)) (_%g249781249891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249791250288%_))
                                                  (let ((_%e249881249912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249791250288%_))))
                                                    (let ((_%tl249883249917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249881249912%_)))
                                                          (_%hd249882249915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249881249912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249883249917%_))
                                                          (let ((_%e249884249920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249883249917%_))))
                    (let ((_%tl249886249925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249884249920%_)))
                          (_%hd249885249923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249884249920%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249886249925%_))
                          (_%__kont254252254253%_
                           _%hd249885249923%_
                           _%hd249882249915%_
                           _%hd249790250286%_)
                          (let () (declare (not safe)) (_%g249781249891%_)))))
                  (let () (declare (not safe)) (_%g249781249891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249828250114%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249791250288%_))
                                                  (let ((_%e249866250009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249791250288%_))))
                                                    (let ((_%tl249868250014%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249866250009%_)))
                                                          (_%hd249867250012%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249866250009%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249868250014%_))
                                                          (let ((_%e249869250017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249868250014%_))))
                    (let ((_%tl249871250022%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249869250017%_)))
                          (_%hd249870250020%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249869250017%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249871250022%_))
                          (_%__match254451254452%_
                           _%e249786250275%_
                           _%hd249787250278%_
                           _%tl249788250280%_
                           _%e249789250283%_
                           _%hd249790250286%_
                           _%tl249791250288%_
                           _%e249792250291%_
                           _%hd249793250294%_
                           _%tl249794250296%_
                           _%e249817250085%_
                           _%hd249818250088%_
                           _%tl249819250090%_
                           _%e249820250093%_
                           _%hd249821250096%_
                           _%tl249822250098%_
                           _%e249823250101%_
                           _%hd249824250104%_
                           _%tl249825250106%_
                           _%e249826250109%_
                           _%hd249827250112%_
                           _%tl249828250114%_
                           _%e249866250009%_
                           _%hd249867250012%_
                           _%tl249868250014%_
                           _%e249869250017%_
                           _%hd249870250020%_
                           _%tl249871250022%_)
                          (let () (declare (not safe)) (_%g249781249891%_)))))
                  (let () (declare (not safe)) (_%g249781249891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249791250288%_))
                                                  (let ((_%e249881249912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249791250288%_))))
                                                    (let ((_%tl249883249917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249881249912%_)))
                                                          (_%hd249882249915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249881249912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249883249917%_))
                                                          (let ((_%e249884249920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249883249917%_))))
                    (let ((_%tl249886249925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249884249920%_)))
                          (_%hd249885249923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249884249920%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249886249925%_))
                          (_%__kont254252254253%_
                           _%hd249885249923%_
                           _%hd249882249915%_
                           _%hd249790250286%_)
                          (let () (declare (not safe)) (_%g249781249891%_)))))
                  (let () (declare (not safe)) (_%g249781249891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249828250114%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249791250288%_))
                                          (let ((_%e249866250009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249791250288%_))))
                                            (let ((_%tl249868250014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249866250009%_)))
                                                  (_%hd249867250012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249866250009%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249868250014%_))
                                                  (let ((_%e249869250017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249868250014%_))))
                                                    (let ((_%tl249871250022%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249869250017%_)))
                                                          (_%hd249870250020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249869250017%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249871250022%_))
                                                          (_%__match254451254452%_
                                                           _%e249786250275%_
                                                           _%hd249787250278%_
                                                           _%tl249788250280%_
                                                           _%e249789250283%_
                                                           _%hd249790250286%_
                                                           _%tl249791250288%_
                                                           _%e249792250291%_
                                                           _%hd249793250294%_
                                                           _%tl249794250296%_
                                                           _%e249817250085%_
                                                           _%hd249818250088%_
                                                           _%tl249819250090%_
                                                           _%e249820250093%_
                                                           _%hd249821250096%_
                                                           _%tl249822250098%_
                                                           _%e249823250101%_
                                                           _%hd249824250104%_
                                                           _%tl249825250106%_
                                                           _%e249826250109%_
                                                           _%hd249827250112%_
                                                           _%tl249828250114%_
                                                           _%e249866250009%_
                                                           _%hd249867250012%_
                                                           _%tl249868250014%_
                                                           _%e249869250017%_
                                                           _%hd249870250020%_
                                                           _%tl249871250022%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249781249891%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249781249891%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249791250288%_))
                                          (let ((_%e249881249912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249791250288%_))))
                                            (let ((_%tl249883249917%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249881249912%_)))
                                                  (_%hd249882249915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249881249912%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249883249917%_))
                                                  (let ((_%e249884249920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249883249917%_))))
                                                    (let ((_%tl249886249925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249884249920%_)))
                                                          (_%hd249885249923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249884249920%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249886249925%_))
                                                          (_%__kont254252254253%_
                                                           _%hd249885249923%_
                                                           _%hd249882249915%_
                                                           _%hd249790250286%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249781249891%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249781249891%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249828250114%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249791250288%_))
                                      (let ((_%e249866250009%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249791250288%_))))
                                        (let ((_%tl249868250014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249866250009%_)))
                                              (_%hd249867250012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249866250009%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249868250014%_))
                                              (let ((_%e249869250017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249868250014%_))))
                                                (let ((_%tl249871250022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249869250017%_)))
                                                      (_%hd249870250020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249869250017%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249871250022%_))
                                                      (_%__match254451254452%_
                                                       _%e249786250275%_
                                                       _%hd249787250278%_
                                                       _%tl249788250280%_
                                                       _%e249789250283%_
                                                       _%hd249790250286%_
                                                       _%tl249791250288%_
                                                       _%e249792250291%_
                                                       _%hd249793250294%_
                                                       _%tl249794250296%_
                                                       _%e249817250085%_
                                                       _%hd249818250088%_
                                                       _%tl249819250090%_
                                                       _%e249820250093%_
                                                       _%hd249821250096%_
                                                       _%tl249822250098%_
                                                       _%e249823250101%_
                                                       _%hd249824250104%_
                                                       _%tl249825250106%_
                                                       _%e249826250109%_
                                                       _%hd249827250112%_
                                                       _%tl249828250114%_
                                                       _%e249866250009%_
                                                       _%hd249867250012%_
                                                       _%tl249868250014%_
                                                       _%e249869250017%_
                                                       _%hd249870250020%_
                                                       _%tl249871250022%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249781249891%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249781249891%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249781249891%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249791250288%_))
                                      (let ((_%e249881249912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249791250288%_))))
                                        (let ((_%tl249883249917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249881249912%_)))
                                              (_%hd249882249915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249881249912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249883249917%_))
                                              (let ((_%e249884249920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249883249917%_))))
                                                (let ((_%tl249886249925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249884249920%_)))
                                                      (_%hd249885249923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249884249920%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249886249925%_))
                                                      (_%__kont254252254253%_
                                                       _%hd249885249923%_
                                                       _%hd249882249915%_
                                                       _%hd249790250286%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249781249891%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249781249891%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249781249891%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249828250114%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249791250288%_))
                                  (let ((_%e249866250009%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249791250288%_))))
                                    (let ((_%tl249868250014%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249866250009%_)))
                                          (_%hd249867250012%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249866250009%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249868250014%_))
                                          (let ((_%e249869250017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249868250014%_))))
                                            (let ((_%tl249871250022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249869250017%_)))
                                                  (_%hd249870250020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249869250017%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249871250022%_))
                                                  (_%__match254451254452%_
                                                   _%e249786250275%_
                                                   _%hd249787250278%_
                                                   _%tl249788250280%_
                                                   _%e249789250283%_
                                                   _%hd249790250286%_
                                                   _%tl249791250288%_
                                                   _%e249792250291%_
                                                   _%hd249793250294%_
                                                   _%tl249794250296%_
                                                   _%e249817250085%_
                                                   _%hd249818250088%_
                                                   _%tl249819250090%_
                                                   _%e249820250093%_
                                                   _%hd249821250096%_
                                                   _%tl249822250098%_
                                                   _%e249823250101%_
                                                   _%hd249824250104%_
                                                   _%tl249825250106%_
                                                   _%e249826250109%_
                                                   _%hd249827250112%_
                                                   _%tl249828250114%_
                                                   _%e249866250009%_
                                                   _%hd249867250012%_
                                                   _%tl249868250014%_
                                                   _%e249869250017%_
                                                   _%hd249870250020%_
                                                   _%tl249871250022%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249781249891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249781249891%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249791250288%_))
                                  (let ((_%e249881249912%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249791250288%_))))
                                    (let ((_%tl249883249917%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249881249912%_)))
                                          (_%hd249882249915%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249881249912%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249883249917%_))
                                          (let ((_%e249884249920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249883249917%_))))
                                            (let ((_%tl249886249925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249884249920%_)))
                                                  (_%hd249885249923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249884249920%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249886249925%_))
                                                  (_%__kont254252254253%_
                                                   _%hd249885249923%_
                                                   _%hd249882249915%_
                                                   _%hd249790250286%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249781249891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249781249891%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249828250114%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249791250288%_))
                          (let ((_%e249866250009%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249791250288%_))))
                            (let ((_%tl249868250014%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249866250009%_)))
                                  (_%hd249867250012%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249866250009%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249868250014%_))
                                  (let ((_%e249869250017%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249868250014%_))))
                                    (let ((_%tl249871250022%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249869250017%_)))
                                          (_%hd249870250020%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249869250017%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249871250022%_))
                                          (_%__match254451254452%_
                                           _%e249786250275%_
                                           _%hd249787250278%_
                                           _%tl249788250280%_
                                           _%e249789250283%_
                                           _%hd249790250286%_
                                           _%tl249791250288%_
                                           _%e249792250291%_
                                           _%hd249793250294%_
                                           _%tl249794250296%_
                                           _%e249817250085%_
                                           _%hd249818250088%_
                                           _%tl249819250090%_
                                           _%e249820250093%_
                                           _%hd249821250096%_
                                           _%tl249822250098%_
                                           _%e249823250101%_
                                           _%hd249824250104%_
                                           _%tl249825250106%_
                                           _%e249826250109%_
                                           _%hd249827250112%_
                                           _%tl249828250114%_
                                           _%e249866250009%_
                                           _%hd249867250012%_
                                           _%tl249868250014%_
                                           _%e249869250017%_
                                           _%hd249870250020%_
                                           _%tl249871250022%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249781249891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249781249891%_)))))
                          (let () (declare (not safe)) (_%g249781249891%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249791250288%_))
                          (let ((_%e249881249912%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249791250288%_))))
                            (let ((_%tl249883249917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249881249912%_)))
                                  (_%hd249882249915%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249881249912%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249883249917%_))
                                  (let ((_%e249884249920%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249883249917%_))))
                                    (let ((_%tl249886249925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249884249920%_)))
                                          (_%hd249885249923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249884249920%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249886249925%_))
                                          (_%__kont254252254253%_
                                           _%hd249885249923%_
                                           _%hd249882249915%_
                                           _%hd249790250286%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249781249891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249781249891%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g249781249891%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249791250288%_))
                                                      (let ((_%e249881249912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249791250288%_))))
                (let ((_%tl249883249917%_
                       (let () (declare (not safe)) (##cdr _%e249881249912%_)))
                      (_%hd249882249915%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249881249912%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249883249917%_))
                      (let ((_%e249884249920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249883249917%_))))
                        (let ((_%tl249886249925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249884249920%_)))
                              (_%hd249885249923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249884249920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249886249925%_))
                              (_%__kont254252254253%_
                               _%hd249885249923%_
                               _%hd249882249915%_
                               _%hd249790250286%_)
                              (let ()
                                (declare (not safe))
                                (_%g249781249891%_)))))
                      (let () (declare (not safe)) (_%g249781249891%_)))))
              (let () (declare (not safe)) (_%g249781249891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249791250288%_))
                                                  (let ((_%e249881249912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249791250288%_))))
                                                    (let ((_%tl249883249917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249881249912%_)))
                                                          (_%hd249882249915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249881249912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249883249917%_))
                                                          (let ((_%e249884249920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249883249917%_))))
                    (let ((_%tl249886249925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249884249920%_)))
                          (_%hd249885249923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249884249920%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249886249925%_))
                          (_%__kont254252254253%_
                           _%hd249885249923%_
                           _%hd249882249915%_
                           _%hd249790250286%_)
                          (let () (declare (not safe)) (_%g249781249891%_)))))
                  (let () (declare (not safe)) (_%g249781249891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249791250288%_))
                                          (let ((_%e249881249912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249791250288%_))))
                                            (let ((_%tl249883249917%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249881249912%_)))
                                                  (_%hd249882249915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249881249912%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249883249917%_))
                                                  (let ((_%e249884249920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249883249917%_))))
                                                    (let ((_%tl249886249925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249884249920%_)))
                                                          (_%hd249885249923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249884249920%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249886249925%_))
                                                          (_%__kont254252254253%_
                                                           _%hd249885249923%_
                                                           _%hd249882249915%_
                                                           _%hd249790250286%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249781249891%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249781249891%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249791250288%_))
                                      (let ((_%e249881249912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249791250288%_))))
                                        (let ((_%tl249883249917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249881249912%_)))
                                              (_%hd249882249915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249881249912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249883249917%_))
                                              (let ((_%e249884249920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249883249917%_))))
                                                (let ((_%tl249886249925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249884249920%_)))
                                                      (_%hd249885249923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249884249920%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249886249925%_))
                                                      (_%__kont254252254253%_
                                                       _%hd249885249923%_
                                                       _%hd249882249915%_
                                                       _%hd249790250286%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249781249891%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249781249891%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249781249891%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249791250288%_))
                                  (let ((_%e249881249912%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249791250288%_))))
                                    (let ((_%tl249883249917%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249881249912%_)))
                                          (_%hd249882249915%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249881249912%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249883249917%_))
                                          (let ((_%e249884249920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249883249917%_))))
                                            (let ((_%tl249886249925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249884249920%_)))
                                                  (_%hd249885249923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249884249920%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249886249925%_))
                                                  (_%__kont254252254253%_
                                                   _%hd249885249923%_
                                                   _%hd249882249915%_
                                                   _%hd249790250286%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249781249891%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249781249891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249781249891%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249791250288%_))
                          (let ((_%e249881249912%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249791250288%_))))
                            (let ((_%tl249883249917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249881249912%_)))
                                  (_%hd249882249915%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249881249912%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249883249917%_))
                                  (let ((_%e249884249920%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249883249917%_))))
                                    (let ((_%tl249886249925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249884249920%_)))
                                          (_%hd249885249923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249884249920%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249886249925%_))
                                          (_%__kont254252254253%_
                                           _%hd249885249923%_
                                           _%hd249882249915%_
                                           _%hd249790250286%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249781249891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249781249891%_)))))
                          (let () (declare (not safe)) (_%g249781249891%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl249791250288%_))
                  (let ((_%e249881249912%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249791250288%_))))
                    (let ((_%tl249883249917%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249881249912%_)))
                          (_%hd249882249915%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249881249912%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249883249917%_))
                          (let ((_%e249884249920%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249883249917%_))))
                            (let ((_%tl249886249925%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249884249920%_)))
                                  (_%hd249885249923%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249884249920%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249886249925%_))
                                  (_%__kont254252254253%_
                                   _%hd249885249923%_
                                   _%hd249882249915%_
                                   _%hd249790250286%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g249781249891%_)))))
                          (let () (declare (not safe)) (_%g249781249891%_)))))
                  (let () (declare (not safe)) (_%g249781249891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249791250288%_))
                                                      (let ((_%e249881249912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249791250288%_))))
                (let ((_%tl249883249917%_
                       (let () (declare (not safe)) (##cdr _%e249881249912%_)))
                      (_%hd249882249915%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249881249912%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249883249917%_))
                      (let ((_%e249884249920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249883249917%_))))
                        (let ((_%tl249886249925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249884249920%_)))
                              (_%hd249885249923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249884249920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249886249925%_))
                              (_%__kont254252254253%_
                               _%hd249885249923%_
                               _%hd249882249915%_
                               _%hd249790250286%_)
                              (let ()
                                (declare (not safe))
                                (_%g249781249891%_)))))
                      (let () (declare (not safe)) (_%g249781249891%_)))))
              (let () (declare (not safe)) (_%g249781249891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249791250288%_))
                                              (let ((_%e249881249912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249791250288%_))))
                                                (let ((_%tl249883249917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249881249912%_)))
                                                      (_%hd249882249915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249881249912%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249883249917%_))
                                                      (let ((_%e249884249920%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249883249917%_))))
                (let ((_%tl249886249925%_
                       (let () (declare (not safe)) (##cdr _%e249884249920%_)))
                      (_%hd249885249923%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249884249920%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249886249925%_))
                      (_%__kont254252254253%_
                       _%hd249885249923%_
                       _%hd249882249915%_
                       _%hd249790250286%_)
                      (let () (declare (not safe)) (_%g249781249891%_)))))
              (let () (declare (not safe)) (_%g249781249891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g249781249891%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249791250288%_))
                                      (let ((_%e249881249912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249791250288%_))))
                                        (let ((_%tl249883249917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249881249912%_)))
                                              (_%hd249882249915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249881249912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249883249917%_))
                                              (let ((_%e249884249920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249883249917%_))))
                                                (let ((_%tl249886249925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249884249920%_)))
                                                      (_%hd249885249923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249884249920%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249886249925%_))
                                                      (_%__kont254252254253%_
                                                       _%hd249885249923%_
                                                       _%hd249882249915%_
                                                       _%hd249790250286%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249781249891%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249781249891%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249781249891%_))))))
                          (let () (declare (not safe)) (_%g249781249891%_)))))
                  (let () (declare (not safe)) (_%g249781249891%_))))))))))
