(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1771093456)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp254493 (list gxc#::basic-xform::t))
            (__tmp254492 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp254493
         '()
         __tmp254492
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args253770%_
        (apply make-instance gxc#::optimize-call::t _%$args253770%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp254494
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
        (__make-atomic-promise __tmp254494)))
    (define gxc#apply-optimize-call
      (lambda (_%stx253762%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self253765%_
                (let ((__obj254484
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj254484))
               (__tmp254495
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self253765%_ _%stx253762%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254495
           gxc#current-compile-method
           _%self253765%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp254497 (list gxc#::void::t))
            (__tmp254496 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp254497
         '()
         __tmp254496
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args253759%_
        (apply make-instance gxc#::check-return-type::t _%$args253759%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp254498
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
        (__make-atomic-promise __tmp254498)))
    (define gxc#apply-check-return-type
      (lambda (_%stx253751%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self253754%_
                (let ((__obj254486
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj254486))
               (__tmp254499
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self253754%_ _%stx253751%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254499
           gxc#current-compile-method
           _%self253754%_))))
    (define gxc#optimize-call%
      (lambda (_%self253358%_ _%stx253359%_)
        (let* ((_%__stx253839253840%_ _%stx253359%_)
               (_%g253362253408%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253839253840%_)))))
          (let ((_%__kont253841253842%_
                 (lambda (_%g253364253547%_ _%g253365253548%_)
                   (let* ((_%rator-id253568%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g253365253548%_)))
                          (_%rator-type253570%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id253568%_))))
                     (if (or (not _%rator-type253570%_)
                             (eq? (##structure-ref
                                   _%rator-type253570%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self253358%_ _%stx253359%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type253570%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp254500
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type253570%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id253568%_
                                  '" => "
                                  _%rator-type253570%_
                                  '" "
                                  __tmp254500))
                               (let* ((_%optimized253585%_
                                       (let ((__method254487
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type253570%_
                                                 'optimize-call))))
                                         (if __method254487
                                             (let ((__tmp254501
                                                    (let ((__tmp254502
                                                           (lambda (_%g253577253580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g253578253582%_)
                     (cons _%g253577253580%_ _%g253578253582%_))))
              (declare (not safe))
              (foldr__0 __tmp254502 '() _%g253364253547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method254487
                                                _%rator-type253570%_
                                                _%self253358%_
                                                _%stx253359%_
                                                __tmp254501))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type253570%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx253787253788%_
                                       _%optimized253585%_)
                                      (_%g253588253617%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx253787253788%_)))))
                                 (let ((_%__kont253789253790%_
                                        (lambda (_%g253590253683%_
                                                 _%g253591253684%_)
                                          (let* ((_%optimized-rator-id253711%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g253591253684%_)))
                                                 (_%rator-type253716%_
                                                  (let ((_%$e253713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id253711%_))))
                                                    (if _%$e253713%_
                                                        _%$e253713%_
                                                        _%rator-type253570%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type253716%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id253711%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type253716%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type253716%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized253585%_
                                                (let ((__tmp254503
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g253591253684%_ '()))
                           (let ((__tmp254504
                                  (lambda (_%g253724253727%_ _%g253725253729%_)
                                    (cons _%g253724253727%_
                                          _%g253725253729%_))))
                             (declare (not safe))
                             (foldr__0 __tmp254504 '() _%g253590253683%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp254503
                                                   _%stx253359%_))))))
                                       (_%__kont253793253794%_
                                        (lambda () _%optimized253585%_)))
                                   (let ((_%__match253836253837%_
                                          (lambda (_%e253592253629%_
                                                   _%hd253593253632%_
                                                   _%tl253594253634%_
                                                   _%e253595253637%_
                                                   _%hd253596253640%_
                                                   _%tl253597253642%_
                                                   _%e253598253645%_
                                                   _%hd253599253648%_
                                                   _%tl253600253650%_
                                                   _%e253601253653%_
                                                   _%hd253602253656%_
                                                   _%tl253603253658%_
                                                   _%__splice253791253792%_
                                                   _%target253604253661%_
                                                   _%tl253606253663%_)
                                            (letrec ((_%loop253607253666%_
                                                      (lambda (_%hd253605253669%_
                                                               _%arg253611253671%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd253605253669%_))
                                                            (let ((_%e253608253673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd253605253669%_))))
                      (let ((_%lp-tl253610253678%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253608253673%_)))
                            (_%lp-hd253609253676%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253608253673%_))))
                        (_%loop253607253666%_
                         _%lp-tl253610253678%_
                         (cons _%lp-hd253609253676%_ _%arg253611253671%_))))
                    (let ((_%arg253612253681%_ (reverse _%arg253611253671%_)))
                      (_%__kont253789253790%_
                       _%arg253612253681%_
                       _%hd253602253656%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop253607253666%_
                                               _%target253604253661%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx253787253788%_))
                                         (let ((_%e253592253629%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx253787253788%_))))
                                           (let ((_%tl253594253634%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e253592253629%_)))
                                                 (_%hd253593253632%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e253592253629%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd253593253632%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd253593253632%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl253594253634%_))
                                                         (let ((_%e253595253637%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl253594253634%_))))
                   (let ((_%tl253597253642%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e253595253637%_)))
                         (_%hd253596253640%_
                          (let ()
                            (declare (not safe))
                            (##car _%e253595253637%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd253596253640%_))
                         (let ((_%e253598253645%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd253596253640%_))))
                           (let ((_%tl253600253650%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e253598253645%_)))
                                 (_%hd253599253648%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e253598253645%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd253599253648%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd253599253648%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl253600253650%_))
                                         (let ((_%e253601253653%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl253600253650%_))))
                                           (let ((_%tl253603253658%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e253601253653%_)))
                                                 (_%hd253602253656%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e253601253653%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl253603253658%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl253597253642%_))
                                                     (let ((_%__splice253791253792%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl253597253642%_
                                                               '0))))
                                                       (let ((_%tl253606253663%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice253791253792%_ '1)))
                     (_%target253604253661%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice253791253792%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl253606253663%_))
                     (_%__match253836253837%_
                      _%e253592253629%_
                      _%hd253593253632%_
                      _%tl253594253634%_
                      _%e253595253637%_
                      _%hd253596253640%_
                      _%tl253597253642%_
                      _%e253598253645%_
                      _%hd253599253648%_
                      _%tl253600253650%_
                      _%e253601253653%_
                      _%hd253602253656%_
                      _%tl253603253658%_
                      _%__splice253791253792%_
                      _%target253604253661%_
                      _%tl253606253663%_)
                     (_%__kont253793253794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont253793253794%_))
                                                 (_%__kont253793253794%_))))
                                         (_%__kont253793253794%_))
                                     (_%__kont253793253794%_))
                                 (_%__kont253793253794%_))))
                         (_%__kont253793253794%_))))
                 (_%__kont253793253794%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont253793253794%_))
                                                 (_%__kont253793253794%_))))
                                         (_%__kont253793253794%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type253570%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type253570%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp254505
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g253365253548%_
                                                                '()))
                                                    (map (lambda (_%g253735253737%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self253358%_
                                                              _%g253735253737%_)))
                                                         (let ((__tmp254506
                                                                (lambda (_%g253739253742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g253740253744%_)
                          (cons _%g253739253742%_ _%g253740253744%_))))
                   (declare (not safe))
                   (foldr__0 __tmp254506 '() _%g253364253547%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp254505
                                    _%stx253359%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx253359%_
                                    _%rator-type253570%_))))))))
                (_%__kont253845253846%_
                 (lambda (_%g253387253451%_ _%g253388253452%_)
                   (let ((_%rator-type253469%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g253388253452%_))))
                     (if (and _%rator-type253469%_
                              (eq? (##structure-ref
                                    _%rator-type253469%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type253469%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type253469%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type253469%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp254507
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self253358%_
                                               _%g253388253452%_))
                                            (map (lambda (_%g253471253473%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self253358%_
                                                      _%g253471253473%_)))
                                                 (let ((__tmp254508
                                                        (lambda (_%g253475253478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g253476253480%_)
                  (cons _%g253475253478%_ _%g253476253480%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp254508
                                                    '()
                                                    _%g253387253451%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp254507 _%stx253359%_))
                         (if (or (not _%rator-type253469%_)
                                 (let ((__tmp254509
                                        (##structure-ref
                                         _%rator-type253469%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp254509 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self253358%_ _%stx253359%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx253359%_
                                _%rator-type253469%_))))))))
            (let* ((_%__match253906253907%_
                    (lambda (_%e253389253413%_
                             _%hd253390253416%_
                             _%tl253391253418%_
                             _%e253392253421%_
                             _%hd253393253424%_
                             _%tl253394253426%_
                             _%__splice253847253848%_
                             _%target253395253429%_
                             _%tl253397253431%_)
                      (letrec ((_%loop253398253434%_
                                (lambda (_%hd253396253437%_
                                         _%rand253402253439%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253396253437%_))
                                      (let ((_%e253399253441%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253396253437%_))))
                                        (let ((_%lp-tl253401253446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253399253441%_)))
                                              (_%lp-hd253400253444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253399253441%_))))
                                          (_%loop253398253434%_
                                           _%lp-tl253401253446%_
                                           (cons _%lp-hd253400253444%_
                                                 _%rand253402253439%_))))
                                      (let ((_%rand253403253449%_
                                             (reverse _%rand253402253439%_)))
                                        (_%__kont253845253846%_
                                         _%rand253403253449%_
                                         _%hd253393253424%_))))))
                        (_%loop253398253434%_ _%target253395253429%_ '()))))
                   (_%__match253886253887%_
                    (lambda (_%e253366253493%_
                             _%hd253367253496%_
                             _%tl253368253498%_
                             _%e253369253501%_
                             _%hd253370253504%_
                             _%tl253371253506%_
                             _%e253372253509%_
                             _%hd253373253512%_
                             _%tl253374253514%_
                             _%e253375253517%_
                             _%hd253376253520%_
                             _%tl253377253522%_
                             _%__splice253843253844%_
                             _%target253378253525%_
                             _%tl253380253527%_)
                      (letrec ((_%loop253381253530%_
                                (lambda (_%hd253379253533%_
                                         _%rand253385253535%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253379253533%_))
                                      (let ((_%e253382253537%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253379253533%_))))
                                        (let ((_%lp-tl253384253542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253382253537%_)))
                                              (_%lp-hd253383253540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253382253537%_))))
                                          (_%loop253381253530%_
                                           _%lp-tl253384253542%_
                                           (cons _%lp-hd253383253540%_
                                                 _%rand253385253535%_))))
                                      (let ((_%rand253386253545%_
                                             (reverse _%rand253385253535%_)))
                                        (_%__kont253841253842%_
                                         _%rand253386253545%_
                                         _%hd253376253520%_))))))
                        (_%loop253381253530%_ _%target253378253525%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253839253840%_))
                  (let ((_%e253366253493%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253839253840%_))))
                    (let ((_%tl253368253498%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253366253493%_)))
                          (_%hd253367253496%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253366253493%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253368253498%_))
                          (let ((_%e253369253501%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253368253498%_))))
                            (let ((_%tl253371253506%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253369253501%_)))
                                  (_%hd253370253504%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253369253501%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd253370253504%_))
                                  (let ((_%e253372253509%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd253370253504%_))))
                                    (let ((_%tl253374253514%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253372253509%_)))
                                          (_%hd253373253512%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253372253509%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd253373253512%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd253373253512%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253374253514%_))
                                                  (let ((_%e253375253517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253374253514%_))))
                                                    (let ((_%tl253377253522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253375253517%_)))
                                                          (_%hd253376253520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253375253517%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253377253522%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl253371253506%_))
                      (let ((_%__splice253843253844%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253371253506%_
                                '0))))
                        (let ((_%tl253380253527%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253843253844%_ '1)))
                              (_%target253378253525%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253843253844%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253380253527%_))
                              (_%__match253886253887%_
                               _%e253366253493%_
                               _%hd253367253496%_
                               _%tl253368253498%_
                               _%e253369253501%_
                               _%hd253370253504%_
                               _%tl253371253506%_
                               _%e253372253509%_
                               _%hd253373253512%_
                               _%tl253374253514%_
                               _%e253375253517%_
                               _%hd253376253520%_
                               _%tl253377253522%_
                               _%__splice253843253844%_
                               _%target253378253525%_
                               _%tl253380253527%_)
                              (let ()
                                (declare (not safe))
                                (_%g253362253408%_)))))
                      (let () (declare (not safe)) (_%g253362253408%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl253371253506%_))
                      (let ((_%__splice253847253848%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253371253506%_
                                '0))))
                        (let ((_%tl253397253431%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253847253848%_ '1)))
                              (_%target253395253429%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253847253848%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253397253431%_))
                              (_%__match253906253907%_
                               _%e253366253493%_
                               _%hd253367253496%_
                               _%tl253368253498%_
                               _%e253369253501%_
                               _%hd253370253504%_
                               _%tl253371253506%_
                               _%__splice253847253848%_
                               _%target253395253429%_
                               _%tl253397253431%_)
                              (let ()
                                (declare (not safe))
                                (_%g253362253408%_)))))
                      (let () (declare (not safe)) (_%g253362253408%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl253371253506%_))
                                                      (let ((_%__splice253847253848%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl253371253506%_
                        '0))))
                (let ((_%tl253397253431%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice253847253848%_ '1)))
                      (_%target253395253429%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice253847253848%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl253397253431%_))
                      (_%__match253906253907%_
                       _%e253366253493%_
                       _%hd253367253496%_
                       _%tl253368253498%_
                       _%e253369253501%_
                       _%hd253370253504%_
                       _%tl253371253506%_
                       _%__splice253847253848%_
                       _%target253395253429%_
                       _%tl253397253431%_)
                      (let () (declare (not safe)) (_%g253362253408%_)))))
              (let () (declare (not safe)) (_%g253362253408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl253371253506%_))
                                                  (let ((_%__splice253847253848%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl253371253506%_
                                                            '0))))
                                                    (let ((_%tl253397253431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253847253848%_
                                                              '1)))
                                                          (_%target253395253429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253847253848%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253397253431%_))
                                                          (_%__match253906253907%_
                                                           _%e253366253493%_
                                                           _%hd253367253496%_
                                                           _%tl253368253498%_
                                                           _%e253369253501%_
                                                           _%hd253370253504%_
                                                           _%tl253371253506%_
                                                           _%__splice253847253848%_
                                                           _%target253395253429%_
                                                           _%tl253397253431%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g253362253408%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g253362253408%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl253371253506%_))
                                              (let ((_%__splice253847253848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl253371253506%_
                                                        '0))))
                                                (let ((_%tl253397253431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice253847253848%_
                                                          '1)))
                                                      (_%target253395253429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice253847253848%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253397253431%_))
                                                      (_%__match253906253907%_
                                                       _%e253366253493%_
                                                       _%hd253367253496%_
                                                       _%tl253368253498%_
                                                       _%e253369253501%_
                                                       _%hd253370253504%_
                                                       _%tl253371253506%_
                                                       _%__splice253847253848%_
                                                       _%target253395253429%_
                                                       _%tl253397253431%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g253362253408%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g253362253408%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253371253506%_))
                                      (let ((_%__splice253847253848%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl253371253506%_
                                                '0))))
                                        (let ((_%tl253397253431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253847253848%_
                                                  '1)))
                                              (_%target253395253429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253847253848%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253397253431%_))
                                              (_%__match253906253907%_
                                               _%e253366253493%_
                                               _%hd253367253496%_
                                               _%tl253368253498%_
                                               _%e253369253501%_
                                               _%hd253370253504%_
                                               _%tl253371253506%_
                                               _%__splice253847253848%_
                                               _%target253395253429%_
                                               _%tl253397253431%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g253362253408%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g253362253408%_))))))
                          (let () (declare (not safe)) (_%g253362253408%_)))))
                  (let () (declare (not safe)) (_%g253362253408%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self253320%_ _%ctx253321%_ _%stx253322%_ _%args253323%_)
        (let ((_%self253326%_ _%self253320%_))
          (if (let ((__method254488
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self253326%_ 'check-arguments))))
                (if __method254488
                    (let ()
                      (declare (not safe))
                      (__method254488
                       _%self253326%_
                       _%ctx253321%_
                       _%stx253322%_
                       _%args253323%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self253326%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature253336%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253326%_ '2 '#f '#f)))
                     (_%signature253338%_ _%signature253336%_)
                     (_%$e253348%_
                      (if _%signature253338%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature253338%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e253348%_
                    ((lambda (_%unchecked253351%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked253351%_))
                           (let ((__tmp254510
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked253351%_
                                                          '()))
                                              (map (lambda (_%g253352253354%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx253321%_
                                                        _%g253352253354%_)))
                                                   _%args253323%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp254510
                              _%stx253322%_
                              _%ctx253321%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx253321%_ _%stx253322%_))))
                     _%$e253348%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx253321%_ _%stx253322%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx253321%_ _%stx253322%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass253772 __method-table253773)
        (let ((__check-arguments253774
               (let ((__tmp254511
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
                 (__make-promise __tmp254511))))
          (lambda (_%self253320%_ _%ctx253321%_ _%stx253322%_ _%args253323%_)
            (let ((_%self253326%_ _%self253320%_))
              (if ((force __check-arguments253774)
                   _%self253326%_
                   _%ctx253321%_
                   _%stx253322%_
                   _%args253323%_)
                  (let* ((_%signature253336%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self253326%_
                             '2
                             '#f
                             '#f)))
                         (_%signature253338%_ _%signature253336%_)
                         (_%$e253348%_
                          (if _%signature253338%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature253338%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e253348%_
                        ((lambda (_%unchecked253351%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked253351%_))
                               (let ((__tmp254512
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked253351%_
                                                              '()))
                                                  (map (lambda (_%g253352253354%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx253321%_
                                                            _%g253352253354%_)))
                                                       _%args253323%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp254512
                                  _%stx253322%_
                                  _%ctx253321%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx253321%_
                                  _%stx253322%_))))
                         _%$e253348%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx253321%_ _%stx253322%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx253321%_ _%stx253322%_))))))))
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
      (lambda (_%self253073%_ _%ctx253074%_ _%stx253075%_ _%args253076%_)
        (let* ((_%self253079%_ _%self253073%_)
               (_%signature253088253090%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253079%_ '2 '#f '#f))))
          (if _%signature253088253090%_
              (let* ((_%signature253092%_ _%signature253088253090%_)
                     (_%argument-types253093253095%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature253092%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types253093253095%_
                    (let* ((_%argument-types253097%_
                            _%argument-types253093253095%_)
                           (_%argument-types253102%_
                            (let ((__tmp254513
                                   (lambda (_%t253100%_)
                                     (if _%t253100%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253075%_
                                            _%t253100%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp254513
                               _%argument-types253097%_))))
                      (let _%loop253104%_ ((_%rest-args253106%_ _%args253076%_)
                                           (_%rest-types253107%_
                                            _%argument-types253102%_)
                                           (_%result253108%_ '#t))
                        (let* ((_%rest-args253109253117%_ _%rest-args253106%_)
                               (_%else253111253125%_
                                (lambda () _%result253108%_))
                               (_%K253113253186%_
                                (lambda (_%rest-args253128%_ _%arg253129%_)
                                  (let* ((_%rest-types253130253141%_
                                          _%rest-types253107%_)
                                         (_%E253134253145%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types253130253141%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K253137253174%_
                                           (lambda (_%rest-types253171%_
                                                    _%type253172%_)
                                             (_%loop253104%_
                                              _%rest-args253128%_
                                              _%rest-types253171%_
                                              (if (gxc#check-expression-type!
                                                   _%stx253075%_
                                                   _%arg253129%_
                                                   _%type253172%_)
                                                  _%result253108%_
                                                  '#f))))
                                          (_%K253136253165%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx253075%_
                                                _%argument-types253102%_))))
                                          (_%K253135253155%_
                                           (lambda (_%tail-type253149%_)
                                             (if (let ((__tmp254514
                                                        (lambda (_%g253150253152%_)
                                                          (gxc#check-expression-type!
                                                           _%stx253075%_
                                                           _%g253150253152%_
                                                           _%tail-type253149%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp254514
                                                    _%rest-args253128%_))
                                                 _%result253108%_
                                                 '#f))))
                                      (let ((_%try-match253132253168%_
                                             (lambda ()
                                               (if (null? _%rest-types253130253141%_)
                                                   (_%K253136253165%_)
                                                   (let ((_%tail-type253158%_
                                                          _%rest-types253130253141%_))
                                                     (_%K253135253155%_
                                                      _%tail-type253158%_))))))
                                        (if (pair? _%rest-types253130253141%_)
                                            (let ((_%tl253139253179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types253130253141%_)))
                                                  (_%hd253138253177%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types253130253141%_))))
                                              (let ((_%type253182%_
                                                     _%hd253138253177%_)
                                                    (_%rest-types253184%_
                                                     _%tl253139253179%_))
                                                (_%K253137253174%_
                                                 _%rest-types253184%_
                                                 _%type253182%_)))
                                            (_%try-match253132253168%_))))))))
                          (if (pair? _%rest-args253109253117%_)
                              (let ((_%hd253114253189%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args253109253117%_)))
                                    (_%tl253115253191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args253109253117%_))))
                                (let* ((_%arg253194%_ _%hd253114253189%_)
                                       (_%rest-args253196%_
                                        _%tl253115253191%_))
                                  (_%K253113253186%_
                                   _%rest-args253196%_
                                   _%arg253194%_)))
                              (_%else253111253125%_)))))
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
      (lambda (_%self252884%_ _%ctx252885%_ _%stx252886%_ _%args252887%_)
        (let* ((_%self252890%_ _%self252884%_)
               (_%g252900252910%_
                (lambda (_%g252901252907%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252901252907%_))))
               (_%g252899252948%_
                (lambda (_%g252901252913%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252901252913%_))
                      (let ((_%e252903252915%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252901252913%_))))
                        (let ((_%hd252904252918%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252903252915%_)))
                              (_%tl252905252920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252903252915%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252905252920%_))
                              ((lambda (_%g252902252923%_)
                                 (let* ((_%klass252935%_
                                         (let ((__tmp254515
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252890%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252886%_
                                            __tmp254515)))
                                        (_%object252937%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252885%_
                                            _%g252902252923%_)))
                                        (_%instance?252942%_
                                         (let ((_%$e252939%_
                                                (gxc#expression-type?
                                                 _%object252937%_
                                                 _%klass252935%_)))
                                           (if _%$e252939%_
                                               _%$e252939%_
                                               (gxc#expression-type?
                                                _%g252902252923%_
                                                _%klass252935%_)))))
                                   (if _%instance?252942%_
                                       (let ((__tmp254516
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object252937%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g252902252923%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object252937%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254516
                                          _%stx252886%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx252885%_
                                          _%stx252886%_)))))
                               _%hd252904252918%_)
                              (_%g252900252910%_ _%g252901252913%_))))
                      (_%g252900252910%_ _%g252901252913%_)))))
          (_%g252899252948%_ _%args252887%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self252680%_ _%ctx252681%_ _%stx252682%_ _%args252683%_)
        (let* ((_%self252686%_ _%self252680%_)
               (_%g252696252706%_
                (lambda (_%g252697252703%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252697252703%_))))
               (_%g252695252759%_
                (lambda (_%g252697252709%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252697252709%_))
                      (let ((_%e252699252711%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252697252709%_))))
                        (let ((_%hd252700252714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252699252711%_)))
                              (_%tl252701252716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252699252711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252701252716%_))
                              ((lambda (_%g252698252719%_)
                                 (let* ((_%klass252731%_
                                         (let ((__tmp254517
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252686%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252682%_
                                            __tmp254517)))
                                        (_%object252733%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252681%_
                                            _%g252698252719%_)))
                                        (_%instance?252738%_
                                         (let ((_%$e252735%_
                                                (gxc#expression-type?
                                                 _%object252733%_
                                                 _%klass252731%_)))
                                           (if _%$e252735%_
                                               _%$e252735%_
                                               (gxc#expression-type?
                                                _%g252698252719%_
                                                _%klass252731%_))))
                                        (_%klass252741%_ _%klass252731%_))
                                   (if _%instance?252738%_
                                       (let ((__tmp254518
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object252733%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g252698252719%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object252733%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254518
                                          _%stx252682%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252741%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp254519
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass252741%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object252733%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254519
                                              _%stx252682%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252741%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254520
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass252741%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object252733%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254520
                                                  _%stx252682%_))
                                               (let ((__tmp254521
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self252686%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object252733%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254521
                                                  _%stx252682%_)))))))
                               _%hd252700252714%_)
                              (_%g252696252706%_ _%g252697252709%_))))
                      (_%g252696252706%_ _%g252697252709%_)))))
          (_%g252695252759%_ _%args252683%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx252348%_)
        (let* ((_%__stx253916253917%_ _%stx252348%_)
               (_%g252353252394%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253916253917%_)))))
          (let ((_%__kont253918253919%_ (lambda () '#t))
                (_%__kont253920253921%_ (lambda () '#t))
                (_%__kont253922253923%_
                 (lambda (_%g252367252460%_ _%g252368252461%_)
                   (let ((_%rator-type252482252484%_
                          (let ((__tmp254522
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g252368252461%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp254522))))
                     (if _%rator-type252482252484%_
                         (let* ((_%rator-type252486%_
                                 _%rator-type252482252484%_)
                                (_%rator-signature252487252489%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type252486%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type252486%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature252487252489%_
                               (let* ((_%rator-signature252491%_
                                       _%rator-signature252487252489%_)
                                      (_%rator-effect252492252494%_
                                       (if _%rator-signature252491%_
                                           (##direct-structure-ref
                                            _%rator-signature252491%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect252492252494%_
                                     (let ((_%rator-effect252496%_
                                            _%rator-effect252492252494%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect252496%_)
                                               (equal? '(alloc)
                                                       _%rator-effect252496%_))
                                           (let ((__tmp254523
                                                  (let ((__tmp254524
                                                         (lambda (_%g252501252504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g252502252506%_)
                   (cons _%g252501252504%_ _%g252502252506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp254524
                                                     '()
                                                     _%g252367252460%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp254523))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont253926253927%_ (lambda () '#f)))
            (let ((_%__match254005254006%_
                   (lambda (_%e252369252406%_
                            _%hd252370252409%_
                            _%tl252371252411%_
                            _%e252372252414%_
                            _%hd252373252417%_
                            _%tl252374252419%_
                            _%e252375252422%_
                            _%hd252376252425%_
                            _%tl252377252427%_
                            _%e252378252430%_
                            _%hd252379252433%_
                            _%tl252380252435%_
                            _%__splice253924253925%_
                            _%target252381252438%_
                            _%tl252383252440%_)
                     (letrec ((_%loop252384252443%_
                               (lambda (_%hd252382252446%_
                                        _%rand252388252448%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd252382252446%_))
                                     (let ((_%e252385252450%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd252382252446%_))))
                                       (let ((_%lp-tl252387252455%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e252385252450%_)))
                                             (_%lp-hd252386252453%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e252385252450%_))))
                                         (_%loop252384252443%_
                                          _%lp-tl252387252455%_
                                          (cons _%lp-hd252386252453%_
                                                _%rand252388252448%_))))
                                     (let ((_%rand252389252458%_
                                            (reverse _%rand252388252448%_)))
                                       (_%__kont253922253923%_
                                        _%rand252389252458%_
                                        _%hd252379252433%_))))))
                       (_%loop252384252443%_ _%target252381252438%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253916253917%_))
                  (let ((_%e252355252537%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253916253917%_))))
                    (let ((_%tl252357252542%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252355252537%_)))
                          (_%hd252356252540%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252355252537%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd252356252540%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd252356252540%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252357252542%_))
                                  (let ((_%e252358252545%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252357252542%_))))
                                    (let ((_%tl252360252550%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252358252545%_)))
                                          (_%hd252359252548%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252358252545%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252360252550%_))
                                          (_%__kont253918253919%_)
                                          (_%__kont253926253927%_))))
                                  (_%__kont253926253927%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd252356252540%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl252357252542%_))
                                      (let ((_%e252364252522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl252357252542%_))))
                                        (let ((_%tl252366252527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252364252522%_)))
                                              (_%hd252365252525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252364252522%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252366252527%_))
                                              (_%__kont253920253921%_)
                                              (_%__kont253926253927%_))))
                                      (_%__kont253926253927%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd252356252540%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl252357252542%_))
                                          (let ((_%e252372252414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl252357252542%_))))
                                            (let ((_%tl252374252419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e252372252414%_)))
                                                  (_%hd252373252417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e252372252414%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd252373252417%_))
                                                  (let ((_%e252375252422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd252373252417%_))))
                                                    (let ((_%tl252377252427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252375252422%_)))
                                                          (_%hd252376252425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252375252422%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd252376252425%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd252376252425%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252377252427%_))
                          (let ((_%e252378252430%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252377252427%_))))
                            (let ((_%tl252380252435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252378252430%_)))
                                  (_%hd252379252433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252378252430%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252380252435%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl252374252419%_))
                                      (let ((_%__splice253924253925%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl252374252419%_
                                                '0))))
                                        (let ((_%tl252383252440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253924253925%_
                                                  '1)))
                                              (_%target252381252438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253924253925%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252383252440%_))
                                              (_%__match254005254006%_
                                               _%e252355252537%_
                                               _%hd252356252540%_
                                               _%tl252357252542%_
                                               _%e252372252414%_
                                               _%hd252373252417%_
                                               _%tl252374252419%_
                                               _%e252375252422%_
                                               _%hd252376252425%_
                                               _%tl252377252427%_
                                               _%e252378252430%_
                                               _%hd252379252433%_
                                               _%tl252380252435%_
                                               _%__splice253924253925%_
                                               _%target252381252438%_
                                               _%tl252383252440%_)
                                              (_%__kont253926253927%_))))
                                      (_%__kont253926253927%_))
                                  (_%__kont253926253927%_))))
                          (_%__kont253926253927%_))
                      (_%__kont253926253927%_))
                  (_%__kont253926253927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont253926253927%_))))
                                          (_%__kont253926253927%_))
                                      (_%__kont253926253927%_))))
                          (_%__kont253926253927%_))))
                  (_%__kont253926253927%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx252343%_ _%klass252344%_)
        (let ((_%expr-type252346%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx252343%_))))
          (if _%expr-type252346%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type252346%_ _%klass252344%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx252321%_ _%expr252322%_ _%type252323%_)
        (if (not _%type252323%_)
            '#f
            (let ((_%$e252326%_
                   (eq? (##structure-ref _%type252323%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e252326%_
                  _%$e252326%_
                  (let ((_%expr-type252330%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr252322%_))))
                    (if (not _%expr-type252330%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type252330%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e252334%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type252330%_
                                      'gxc#!abort::t))))
                              (if _%$e252334%_
                                  _%$e252334%_
                                  (let ((_%$e252337%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type252330%_
                                            _%type252323%_))))
                                    (if _%$e252337%_
                                        _%$e252337%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type252323%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type252323%_
                                                   _%expr-type252330%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx252321%_
                                                   _%expr252322%_
                                                   _%expr-type252330%_
                                                   _%type252323%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self252135%_ _%ctx252136%_ _%stx252137%_ _%args252138%_)
        (let* ((_%self252141%_ _%self252135%_)
               (_%klass252151%_
                (let ((__tmp254525
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252141%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx252137%_ __tmp254525)))
               (_%fields252153%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252151%_
                           '5
                           '#f
                           '#f))))
               (_%args252159%_
                (map (lambda (_%g252154252156%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx252136%_ _%g252154252156%_)))
                     _%args252138%_))
               (_%inline-make-object252161%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self252141%_
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
                           _%self252141%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields252153%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass252164%_ _%klass252151%_)
               (_%$e252178%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass252164%_ '6 '#f '#f))))
          (if _%$e252178%_
              ((lambda (_%ctor252181%_)
                 (let ((_%$obj252183%_
                        (let ((__tmp254526
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp254526)))
                       (_%ctor-impl252184%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass252164%_
                           _%ctor252181%_))))
                   (let ((__tmp254527
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252183%_ '())
                                                  (cons _%inline-make-object252161%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl252184%_
                                                            (let ((__tmp254528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl252184%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj252183%_ '()))
                                             _%args252159%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp254528
                       _%stx252137%_
                       _%ctx252136%_))
                    (let ((_%$ctor252186%_
                           (let ((__tmp254529
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp254529))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor252186%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252141%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj252183%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor252181%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor252186%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor252186%_ '()))
                              (cons (cons '%#ref (cons _%$obj252183%_ '()))
                                    _%args252159%_)))
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
                             _%self252141%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor252181%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj252183%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp254527 _%stx252137%_))))
               _%$e252178%_)
              (let ((_%$e252188%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass252164%_
                        '10
                        '#f
                        '#f))))
                (if _%$e252188%_
                    ((lambda (_%metaclass252191%_)
                       (let* ((_%$obj252193%_
                               (let ((__tmp254530
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp254530)))
                              (_%metakons252195%_
                               (let ((__tmp254531
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx252137%_
                                         _%metaclass252191%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp254531
                                  'instance-init!)))
                              (__tmp254532
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj252193%_
                                                             '())
                                                       (cons _%inline-make-object252161%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons252195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp254533
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons252195%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self252141%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args252159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp254533
                            _%stx252137%_
                            _%ctx252136%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252141%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj252193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args252159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj252193%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp254532 _%stx252137%_)))
                     _%$e252188%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252164%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp254534
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args252159%_))))
                              (declare (not safe))
                              (##fx= __tmp254534 _%fields252153%_))
                            (let ((__tmp254535
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self252141%_
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
                                              _%self252141%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args252159%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp254535
                               _%stx252137%_))
                            (let ((__tmp254537
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self252141%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp254536
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass252164%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx252137%_
                               __tmp254537
                               __tmp254536)))
                        (let ((_%$obj252200%_
                               (let ((__tmp254538
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp254538))))
                          (let _%lp252202%_ ((_%rest252204%_ _%args252159%_)
                                             (_%initializers252205%_ '()))
                            (let* ((_%__stx254008254009%_ _%rest252204%_)
                                   (_%g252209252230%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx254008254009%_)))))
                              (let ((_%__kont254010254011%_
                                     (lambda (_%g252211252284%_
                                              _%g252212252285%_
                                              _%g252213252286%_)
                                       (let* ((_%slot252313%_
                                               (let ((__tmp254539
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g252213252286%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp254539)))
                                              (_%off252315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass252164%_
                                                  _%slot252313%_))))
                                         (if _%off252315%_
                                             (_%lp252202%_
                                              _%g252211252284%_
                                              (cons (cons _%off252315%_
                                                          _%g252212252285%_)
                                                    _%initializers252205%_))
                                             (let ((__tmp254540
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252141%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx252137%_
                                                __tmp254540
                                                _%slot252313%_))))))
                                    (_%__kont254012254013%_
                                     (lambda ()
                                       (let ((__tmp254541
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252161%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp254544
                                     (cons (cons '%#ref
                                                 (cons _%$obj252200%_ '()))
                                           '()))
                                    (__tmp254542
                                     (let ((__tmp254543
                                            (lambda (_%i252244%_ _%r252245%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252141%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i252244%_) '()))
                              (cons (cons '%#ref (cons _%$obj252200%_ '()))
                                    (cons (cdr _%i252244%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r252245%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp254543
                                        '()
                                        _%initializers252205%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp254544 __tmp254542)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254541
                                          _%stx252137%_))))
                                    (_%__kont254014254015%_
                                     (lambda ()
                                       (let ((__tmp254545
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252161%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args252159%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj252200%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254545
                                          _%stx252137%_)))))
                                (let* ((_%g252207252247%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx254008254009%_))
                                              (_%__kont254012254013%_)
                                              (_%__kont254014254015%_))))
                                       (_%__match254045254046%_
                                        (lambda (_%e252214252252%_
                                                 _%hd252215252255%_
                                                 _%tl252216252257%_
                                                 _%e252217252260%_
                                                 _%hd252218252263%_
                                                 _%tl252219252265%_
                                                 _%e252220252268%_
                                                 _%hd252221252271%_
                                                 _%tl252222252273%_
                                                 _%e252223252276%_
                                                 _%hd252224252279%_
                                                 _%tl252225252281%_)
                                          (let ((_%g252211252284%_
                                                 _%tl252225252281%_)
                                                (_%g252212252285%_
                                                 _%hd252224252279%_)
                                                (_%g252213252286%_
                                                 _%hd252221252271%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g252213252286%_))
                                                (_%__kont254010254011%_
                                                 _%g252211252284%_
                                                 _%g252212252285%_
                                                 _%g252213252286%_)
                                                (_%__kont254014254015%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx254008254009%_))
                                      (let ((_%e252214252252%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx254008254009%_))))
                                        (let ((_%tl252216252257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252214252252%_)))
                                              (_%hd252215252255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252214252252%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd252215252255%_))
                                              (let ((_%e252217252260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd252215252255%_))))
                                                (let ((_%tl252219252265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252217252260%_)))
                                                      (_%hd252218252263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252217252260%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd252218252263%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd252218252263%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl252219252265%_))
                      (let ((_%e252220252268%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl252219252265%_))))
                        (let ((_%tl252222252273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252220252268%_)))
                              (_%hd252221252271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252220252268%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252222252273%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252216252257%_))
                                  (let ((_%e252223252276%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252216252257%_))))
                                    (let ((_%tl252225252281%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252223252276%_)))
                                          (_%hd252224252279%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252223252276%_))))
                                      (_%__match254045254046%_
                                       _%e252214252252%_
                                       _%hd252215252255%_
                                       _%tl252216252257%_
                                       _%e252217252260%_
                                       _%hd252218252263%_
                                       _%tl252219252265%_
                                       _%e252220252268%_
                                       _%hd252221252271%_
                                       _%tl252222252273%_
                                       _%e252223252276%_
                                       _%hd252224252279%_
                                       _%tl252225252281%_)))
                                  (_%__kont254014254015%_))
                              (_%__kont254014254015%_))))
                      (_%__kont254014254015%_))
                  (_%__kont254014254015%_))
              (_%__kont254014254015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254014254015%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252207252247%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self251918%_ _%ctx251919%_ _%stx251920%_ _%args251921%_)
        (let* ((_%self251924%_ _%self251918%_)
               (_%arguments-ok?251934%_
                (let ((__method254489
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self251924%_ 'check-arguments))))
                  (if __method254489
                      (let ()
                        (declare (not safe))
                        (__method254489
                         _%self251924%_
                         _%ctx251919%_
                         _%stx251920%_
                         _%args251921%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self251924%_
                                 'check-arguments))
                        '#!void))))
               (_%g251936251946%_
                (lambda (_%g251937251943%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251937251943%_))))
               (_%g251935252010%_
                (lambda (_%g251937251949%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251937251949%_))
                      (let ((_%e251939251951%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g251937251949%_))))
                        (let ((_%hd251940251954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251939251951%_)))
                              (_%tl251941251956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251939251951%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251941251956%_))
                              ((lambda (_%g251938251959%_)
                                 (let* ((_%klass251972%_
                                         (let ((__tmp254546
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self251924%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx251920%_
                                            __tmp254546)))
                                        (_%field251974%_
                                         (let ((__tmp254547
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self251924%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass251972%_
                                            __tmp254547)))
                                        (_%object251976%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx251919%_
                                            _%g251938251959%_)))
                                        (_%klass251979%_ _%klass251972%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass251979%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp254548
                                              (cons (if (or _%arguments-ok?251934%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251924%_
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
                                 _%self251924%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field251974%_ '()))
                        (cons _%object251976%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254548
                                          _%stx251920%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass251979%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp254549
                                                  (cons (if (or _%arguments-ok?251934%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251924%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251924%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field251974%_ '()))
                            (cons _%object251976%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254549
                                              _%stx251920%_))
                                           (let ((_%$e251998%_
                                                  (let ((__tmp254550
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self251924%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass251979%_
                                                     __tmp254550))))
                                             (if _%$e251998%_
                                                 ((lambda (_%klass252001%_)
                                                    (let ((__tmp254551
                                                           (cons (if (or _%arguments-ok?251934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251924%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self251924%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field251974%_ '()))
                                     (cons _%object251976%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp254551 _%stx251920%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e251998%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self251924%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp254552
                                                            (let ((_%$obj252007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp254553
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp254553))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj252007%_ '())
                                              (cons _%object251976%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass251979%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj252007%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251924%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251974%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252007%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?251934%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252007%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self251924%_
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
                                                             _%self251924%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj252007%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self251924%_
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
               (gxc#xform-wrap-source __tmp254552 _%stx251920%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp254554
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object251976%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251924%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp254554 _%stx251920%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd251940251954%_)
                              (_%g251936251946%_ _%g251937251949%_))))
                      (_%g251936251946%_ _%g251937251949%_)))))
          (_%g251935252010%_ _%args251921%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass253776 __method-table253777)
        (let ((__check-arguments253778
               (let ((__tmp254555
                      (lambda ()
                        (let ((__method253779
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253777
                                  'check-arguments
                                  '#f))))
                          (if __method253779
                              __method253779
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp254555)))
              (__slot253780
               (let ((__slot253781
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass253776 'slot))))
                 (if __slot253781
                     __slot253781
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self251918%_ _%ctx251919%_ _%stx251920%_ _%args251921%_)
            (let* ((_%self251924%_ _%self251918%_)
                   (_%arguments-ok?251934%_
                    ((force __check-arguments253778)
                     _%self251924%_
                     _%ctx251919%_
                     _%stx251920%_
                     _%args251921%_))
                   (_%g251936251946%_
                    (lambda (_%g251937251943%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g251937251943%_))))
                   (_%g251935252010%_
                    (lambda (_%g251937251949%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g251937251949%_))
                          (let ((_%e251939251951%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g251937251949%_))))
                            (let ((_%hd251940251954%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251939251951%_)))
                                  (_%tl251941251956%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251939251951%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl251941251956%_))
                                  ((lambda (_%g251938251959%_)
                                     (let* ((_%klass251972%_
                                             (let ((__tmp254556
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251924%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx251920%_
                                                __tmp254556)))
                                            (_%field251974%_
                                             (let ((__tmp254557
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251924%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass251972%_
                                                __tmp254557)))
                                            (_%object251976%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx251919%_
                                                _%g251938251959%_)))
                                            (_%klass251979%_ _%klass251972%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass251979%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp254558
                                                  (cons (if (or _%arguments-ok?251934%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251924%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251924%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field251974%_ '()))
                            (cons _%object251976%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254558
                                              _%stx251920%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass251979%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254559
                                                      (cons (if (or _%arguments-ok?251934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self251924%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251924%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field251974%_ '()))
                                (cons _%object251976%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254559
                                                  _%stx251920%_))
                                               (let ((_%$e251998%_
                                                      (let ((__tmp254560
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self251924%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass251979%_ __tmp254560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e251998%_
                                                     ((lambda (_%klass252001%_)
                                                        (let ((__tmp254561
                                                               (cons (if (or _%arguments-ok?251934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251924%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self251924%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field251974%_ '()))
                                         (cons _%object251976%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp254561 _%stx251920%_)))
              _%$e251998%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self251924%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp254562
                                                                (let ((_%$obj252007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp254563
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp254563))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252007%_ '())
                                                  (cons _%object251976%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass251979%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj252007%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251924%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field251974%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252007%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?251934%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252007%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251924%_
                               __slot253780
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
                        (##unchecked-structure-ref _%self251924%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251924%_
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
                   (gxc#xform-wrap-source __tmp254562 _%stx251920%_))
                 (let ((__tmp254564
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object251976%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251924%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp254564 _%stx251920%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd251940251954%_)
                                  (_%g251936251946%_ _%g251937251949%_))))
                          (_%g251936251946%_ _%g251937251949%_)))))
              (_%g251935252010%_ _%args251921%_))))))
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
      (lambda (_%self251682%_ _%ctx251683%_ _%stx251684%_ _%args251685%_)
        (let* ((_%self251688%_ _%self251682%_)
               (_%arguments-ok?251698%_
                (let ((__method254490
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self251688%_ 'check-arguments))))
                  (if __method254490
                      (let ()
                        (declare (not safe))
                        (__method254490
                         _%self251688%_
                         _%ctx251683%_
                         _%stx251684%_
                         _%args251685%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self251688%_
                                 'check-arguments))
                        '#!void))))
               (_%g251700251714%_
                (lambda (_%g251701251711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251701251711%_))))
               (_%g251699251793%_
                (lambda (_%g251701251717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251701251717%_))
                      (let ((_%e251704251719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g251701251717%_))))
                        (let ((_%hd251705251722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251704251719%_)))
                              (_%tl251706251724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251704251719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251706251724%_))
                              (let ((_%e251707251727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251706251724%_))))
                                (let ((_%hd251708251730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251707251727%_)))
                                      (_%tl251709251732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251707251727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl251709251732%_))
                                      ((lambda (_%g251702251735%_
                                                _%g251703251736%_)
                                         (let* ((_%klass251752%_
                                                 (let ((__tmp254565
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251688%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx251684%_
                                                    __tmp254565)))
                                                (_%field251754%_
                                                 (let ((__tmp254566
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251688%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass251752%_
                                                    __tmp254566)))
                                                (_%object251756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx251683%_
                                                    _%g251703251736%_)))
                                                (_%value251758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx251683%_
                                                    _%g251702251735%_)))
                                                (_%klass251761%_
                                                 _%klass251752%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass251761%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254567
                                                      (cons (if (or _%arguments-ok?251698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self251688%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251688%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field251754%_ '()))
                                (cons _%object251756%_
                                      (cons _%value251758%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254567
                                                  _%stx251684%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass251761%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp254568
                                                          (cons (if (or _%arguments-ok?251698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self251688%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251688%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251754%_ '()))
                                    (cons _%object251756%_
                                          (cons _%value251758%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp254568
                                                      _%stx251684%_))
                                                   (let ((_%$e251781%_
                                                          (let ((__tmp254569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251688%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass251761%_
                     __tmp254569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e251781%_
                                                         ((lambda (_%klass251784%_)
                                                            (let ((__tmp254570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?251698%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251688%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self251688%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field251754%_ '()))
                                             (cons _%object251756%_
                                                   (cons _%value251758%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254570 _%stx251684%_)))
                  _%$e251781%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self251688%_ '4 '#f '#f))
                     (let ((__tmp254571
                            (let ((_%$obj251790%_
                                   (let ((__tmp254572
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp254572))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj251790%_ '())
                                                      (cons _%object251756%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass251761%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj251790%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self251688%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field251754%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj251790%_
                                                              '()))
                                                  (cons _%value251758%_
                                                        '())))))
                          (cons (if _%arguments-ok?251698%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self251688%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value251758%_ '())))))
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
                             _%self251688%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj251790%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251688%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value251758%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp254571 _%stx251684%_))
                     (let ((__tmp254573
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object251756%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self251688%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value251758%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp254573
                        _%stx251684%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd251708251730%_
                                       _%hd251705251722%_)
                                      (_%g251700251714%_ _%g251701251717%_))))
                              (_%g251700251714%_ _%g251701251717%_))))
                      (_%g251700251714%_ _%g251701251717%_)))))
          (_%g251699251793%_ _%args251685%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass253782 __method-table253783)
        (let ((__check-arguments253784
               (let ((__tmp254574
                      (lambda ()
                        (let ((__method253785
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253783
                                  'check-arguments
                                  '#f))))
                          (if __method253785
                              __method253785
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp254574))))
          (lambda (_%self251682%_ _%ctx251683%_ _%stx251684%_ _%args251685%_)
            (let* ((_%self251688%_ _%self251682%_)
                   (_%arguments-ok?251698%_
                    ((force __check-arguments253784)
                     _%self251688%_
                     _%ctx251683%_
                     _%stx251684%_
                     _%args251685%_))
                   (_%g251700251714%_
                    (lambda (_%g251701251711%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g251701251711%_))))
                   (_%g251699251793%_
                    (lambda (_%g251701251717%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g251701251717%_))
                          (let ((_%e251704251719%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g251701251717%_))))
                            (let ((_%hd251705251722%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251704251719%_)))
                                  (_%tl251706251724%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251704251719%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251706251724%_))
                                  (let ((_%e251707251727%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251706251724%_))))
                                    (let ((_%hd251708251730%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251707251727%_)))
                                          (_%tl251709251732%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251707251727%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251709251732%_))
                                          ((lambda (_%g251702251735%_
                                                    _%g251703251736%_)
                                             (let* ((_%klass251752%_
                                                     (let ((__tmp254575
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251688%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx251684%_
                                                        __tmp254575)))
                                                    (_%field251754%_
                                                     (let ((__tmp254576
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251688%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass251752%_
                                                        __tmp254576)))
                                                    (_%object251756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251683%_
                                                        _%g251703251736%_)))
                                                    (_%value251758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251683%_
                                                        _%g251702251735%_)))
                                                    (_%klass251761%_
                                                     _%klass251752%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass251761%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp254577
                                                          (cons (if (or _%arguments-ok?251698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self251688%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251688%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251754%_ '()))
                                    (cons _%object251756%_
                                          (cons _%value251758%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp254577
                                                      _%stx251684%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass251761%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp254578
                                                              (cons (if (or _%arguments-ok?251698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self251688%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251688%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field251754%_ '()))
                                        (cons _%object251756%_
                                              (cons _%value251758%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp254578 _%stx251684%_))
               (let ((_%$e251781%_
                      (let ((__tmp254579
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251688%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass251761%_
                         __tmp254579))))
                 (if _%$e251781%_
                     ((lambda (_%klass251784%_)
                        (let ((__tmp254580
                               (cons (if (or _%arguments-ok?251698%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self251688%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self251688%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field251754%_
                                                             '()))
                                                 (cons _%object251756%_
                                                       (cons _%value251758%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp254580 _%stx251684%_)))
                      _%$e251781%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251688%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp254581
                                (let ((_%$obj251790%_
                                       (let ((__tmp254582
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp254582))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj251790%_
                                                                '())
                                                          (cons _%object251756%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass251761%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj251790%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self251688%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field251754%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value251758%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?251698%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj251790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self251688%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value251758%_ '())))))
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
                                 _%self251688%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj251790%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251688%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value251758%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp254581 _%stx251684%_))
                         (let ((__tmp254583
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object251756%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251688%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value251758%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp254583
                            _%stx251684%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd251708251730%_
                                           _%hd251705251722%_)
                                          (_%g251700251714%_
                                           _%g251701251717%_))))
                                  (_%g251700251714%_ _%g251701251717%_))))
                          (_%g251700251714%_ _%g251701251717%_)))))
              (_%g251699251793%_ _%args251685%_))))))
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
      (lambda (_%self251498%_ _%ctx251499%_ _%stx251500%_ _%args251501%_)
        (let* ((_%self251504%_ _%self251498%_)
               (_%self251513251523%_ _%self251504%_)
               (_%E251515251526%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self251513251523%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K251516251536%_
                (lambda (_%inline251529%_ _%dispatch251530%_ _%arity251531%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self251504%_
                         _%args251501%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx251500%_
                         _%arity251531%_)))
                  (if _%inline251529%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp254584 (_%inline251529%_ _%stx251500%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp254584
                           _%stx251500%_
                           _%ctx251499%_)))
                      (if (and _%dispatch251530%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch251530%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch251530%_))
                            (let ((__tmp254585
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch251530%_
                                                           '()))
                                               _%args251501%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp254585
                               _%stx251500%_
                               _%ctx251499%_)))
                          (gxc#!procedure::optimize-call
                           _%self251504%_
                           _%ctx251499%_
                           _%stx251500%_
                           _%args251501%_)))))
               (_%e251517251539%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251513251523%_ '1 '#f '#f)))
               (_%e251518251542%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251513251523%_ '2 '#f '#f)))
               (_%e251519251545%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251513251523%_ '3 '#f '#f)))
               (_%arity251548%_ _%e251519251545%_)
               (_%e251520251550%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251513251523%_ '4 '#f '#f)))
               (_%dispatch251553%_ _%e251520251550%_)
               (_%e251521251555%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251513251523%_ '5 '#f '#f)))
               (_%inline251558%_ _%e251521251555%_))
          (_%K251516251536%_
           _%inline251558%_
           _%dispatch251553%_
           _%arity251548%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self251350%_ _%ctx251351%_ _%stx251352%_ _%args251353%_)
        (let* ((_%self251356%_ _%self251350%_)
               (_%$e251370%_
                (let ((__tmp254587
                       (lambda (_%g251365251367%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g251365251367%_
                            _%args251353%_))))
                      (__tmp254586
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self251356%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp254587 __tmp254586))))
          (if _%$e251370%_
              ((lambda (_%clause251373%_)
                 (let ((__method254491
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause251373%_ 'optimize-call))))
                   (if __method254491
                       (let ()
                         (declare (not safe))
                         (__method254491
                          _%clause251373%_
                          _%ctx251351%_
                          _%stx251352%_
                          _%args251353%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause251373%_
                                  'optimize-call))
                         '#!void))))
               _%$e251370%_)
              (let ((__tmp254588
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self251356%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx251352%_
                 __tmp254588))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self251091%_ _%ctx251092%_ _%stx251093%_ _%args251094%_)
        (let* ((_%self251097%_ _%self251091%_)
               (_%self251106251115%_ _%self251097%_)
               (_%E251108251118%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self251106251115%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K251109251209%_
                (lambda (_%dispatch251121%_ _%table251122%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch251121%_))
                      (let* ((_%g251123251133%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch251121%_)))
                             (_%else251125251141%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch251121%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx251092%_
                                   _%stx251093%_))))
                             (_%K251127251190%_
                              (lambda (_%main251144%_ _%keys251145%_)
                                (let ((_g254589_
                                       (gxc#!kw-lambda-split-args
                                        _%stx251093%_
                                        _%args251094%_)))
                                  (begin
                                    (let ((_g254590_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g254589_)
                                                 (##values-length _g254589_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g254590_ 2)))
                                          (error "Context expects 2 values"
                                                 _g254590_)))
                                    (let ((_%pargs251147%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g254589_ 0)))
                                          (_%kwargs251148%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g254589_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main251144%_))
                                        (if _%table251122%_
                                            (let ((_%xargs251156%_
                                                   (map (lambda (_%key251150%_)
                                                          (let ((_%$e251152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key251150%_ _%kwargs251148%_))))
                    (if _%$e251152%_ _%$e251152%_ '(%#ref absent-value))))
                _%keys251145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw251158%_)
                                                 (if (memq (car _%kw251158%_)
                                                           _%keys251145%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx251093%_
                                                        _%keys251145%_
                                                        _%kw251158%_))))
                                               _%kwargs251148%_)
                                              (let ((__tmp254591
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main251144%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs251147%_
                                  _%xargs251156%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp254591
                                                 _%stx251093%_
                                                 _%ctx251092%_)))
                                            (let* ((_%kwt251160%_
                                                    (let ((__tmp254592
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp254592)))
                                                   (_%kwvars251164%_
                                                    (map (lambda (_%_251162%_)
                                                           (let ((__tmp254593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp254593)))
                 _%kwargs251148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind251169%_
                                                    (map (lambda (_%kw251166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251167%_)
                   (cons (cons _%kwvar251167%_ '())
                         (cons (cdr _%kw251166%_) '())))
                 _%kwargs251148%_
                 _%kwvars251164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset251174%_
                                                    (map (lambda (_%kw251171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251172%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt251160%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw251171%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar251172%_
                                                             '()))
                                                 '()))))))
                 _%kwargs251148%_
                 _%kwvars251164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs251179%_
                                                    (map (lambda (_%kw251176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251177%_)
                   (cons (car _%kw251176%_)
                         (cons '%#ref (cons _%kwvar251177%_ '()))))
                 _%kwargs251148%_
                 _%kwvars251164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs251187%_
                                                    (map (lambda (_%key251181%_)
                                                           (let ((_%$e251183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key251181%_ _%xkwargs251179%_))))
                     (if _%$e251183%_ _%$e251183%_ '(%#ref absent-value))))
                 _%keys251145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp254594
                                                    (cons '%#let-values
                                                          (cons _%kwbind251169%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt251160%_ '())
                                                      (cons (let ((__tmp254595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs251148%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254595 _%stx251093%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp254596
                                                             (cons (let ((__tmp254597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main251144%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt251160%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs251147%_
                                                       _%xargs251187%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp254597 _%stx251093%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp254596 _%kwset251174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp254594
                                               _%stx251093%_
                                               _%ctx251092%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g251123251133%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e251128251193%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251123251133%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e251129251196%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251123251133%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e251130251199%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251123251133%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys251202%_ _%e251130251199%_)
                                   (_%e251131251204%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251123251133%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main251207%_ _%e251131251204%_))
                              (_%K251127251190%_
                               _%main251207%_
                               _%keys251202%_))
                            (_%else251125251141%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx251092%_ _%stx251093%_)))))
               (_%e251110251212%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251106251115%_ '1 '#f '#f)))
               (_%e251111251215%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251106251115%_ '2 '#f '#f)))
               (_%e251112251218%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251106251115%_ '3 '#f '#f)))
               (_%table251221%_ _%e251112251218%_)
               (_%e251113251223%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251106251115%_ '4 '#f '#f)))
               (_%dispatch251226%_ _%e251113251223%_))
          (_%K251109251209%_ _%dispatch251226%_ _%table251221%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx250704%_ _%args250705%_)
        (let _%lp250707%_ ((_%rest250709%_ _%args250705%_)
                           (_%pargs250710%_ '())
                           (_%kwargs250711%_ '()))
          (let* ((_%__stx254050254051%_ _%rest250709%_)
                 (_%g250717250769%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx254050254051%_)))))
            (let ((_%__kont254052254053%_
                   (lambda (_%g250719250948%_ _%g250720250949%_)
                     (_%lp250707%_
                      _%g250719250948%_
                      (cons _%g250720250949%_ _%pargs250710%_)
                      _%kwargs250711%_)))
                  (_%__kont254054254055%_
                   (lambda (_%g250734250894%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g250734250894%_
                                _%pargs250710%_))
                             (reverse _%kwargs250711%_))))
                  (_%__kont254056254057%_
                   (lambda (_%g250745250841%_
                            _%g250746250842%_
                            _%g250747250843%_)
                     (let ((_%kw250860%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g250747250843%_))))
                       (if (assq _%kw250860%_ _%kwargs250711%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx250704%_
                              _%kw250860%_))
                           (_%lp250707%_
                            _%g250745250841%_
                            _%pargs250710%_
                            (cons (cons _%kw250860%_ _%g250746250842%_)
                                  _%kwargs250711%_))))))
                  (_%__kont254058254059%_
                   (lambda (_%g250760250789%_ _%g250761250790%_)
                     (_%lp250707%_
                      _%g250760250789%_
                      (cons _%g250761250790%_ _%pargs250710%_)
                      _%kwargs250711%_)))
                  (_%__kont254060254061%_
                   (lambda ()
                     (values (reverse _%pargs250710%_)
                             (reverse _%kwargs250711%_)))))
              (let ((_%__match254157254158%_
                     (lambda (_%e250748250809%_
                              _%hd250749250812%_
                              _%tl250750250814%_
                              _%e250751250817%_
                              _%hd250752250820%_
                              _%tl250753250822%_
                              _%e250754250825%_
                              _%hd250755250828%_
                              _%tl250756250830%_
                              _%e250757250833%_
                              _%hd250758250836%_
                              _%tl250759250838%_)
                       (let ((_%g250745250841%_ _%tl250759250838%_)
                             (_%g250746250842%_ _%hd250758250836%_)
                             (_%g250747250843%_ _%hd250755250828%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g250747250843%_))
                             (_%__kont254056254057%_
                              _%g250745250841%_
                              _%g250746250842%_
                              _%g250747250843%_)
                             (_%__kont254058254059%_
                              _%tl250750250814%_
                              _%hd250749250812%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx254050254051%_))
                    (let ((_%e250721250913%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx254050254051%_))))
                      (let ((_%tl250723250918%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250721250913%_)))
                            (_%hd250722250916%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250721250913%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd250722250916%_))
                            (let ((_%e250724250921%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd250722250916%_))))
                              (let ((_%tl250726250926%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e250724250921%_)))
                                    (_%hd250725250924%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e250724250921%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd250725250924%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd250725250924%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl250726250926%_))
                                            (let ((_%e250727250929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl250726250926%_))))
                                              (let ((_%tl250729250934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e250727250929%_)))
                                                    (_%hd250728250932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e250727250929%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd250728250932%_))
                                                    (let ((_%e250730250937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd250728250932%_))))
                                                      (if (equal? _%e250730250937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250729250934%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250723250918%_))
                          (let ((_%e250731250940%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250723250918%_))))
                            (let ((_%tl250733250945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250731250940%_)))
                                  (_%hd250732250943%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250731250940%_))))
                              (_%__kont254052254053%_
                               _%tl250733250945%_
                               _%hd250732250943%_)))
                          (_%__kont254058254059%_
                           _%tl250723250918%_
                           _%hd250722250916%_))
                      (_%__kont254058254059%_
                       _%tl250723250918%_
                       _%hd250722250916%_))
                  (if (equal? _%e250730250937%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250729250934%_))
                          (_%__kont254054254055%_ _%tl250723250918%_)
                          (_%__kont254058254059%_
                           _%tl250723250918%_
                           _%hd250722250916%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250729250934%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250723250918%_))
                              (let ((_%e250757250833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250723250918%_))))
                                (let ((_%tl250759250838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250757250833%_)))
                                      (_%hd250758250836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250757250833%_))))
                                  (_%__match254157254158%_
                                   _%e250721250913%_
                                   _%hd250722250916%_
                                   _%tl250723250918%_
                                   _%e250724250921%_
                                   _%hd250725250924%_
                                   _%tl250726250926%_
                                   _%e250727250929%_
                                   _%hd250728250932%_
                                   _%tl250729250934%_
                                   _%e250757250833%_
                                   _%hd250758250836%_
                                   _%tl250759250838%_)))
                              (_%__kont254058254059%_
                               _%tl250723250918%_
                               _%hd250722250916%_))
                          (_%__kont254058254059%_
                           _%tl250723250918%_
                           _%hd250722250916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl250729250934%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl250723250918%_))
                                                            (let ((_%e250757250833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl250723250918%_))))
                      (let ((_%tl250759250838%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250757250833%_)))
                            (_%hd250758250836%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250757250833%_))))
                        (_%__match254157254158%_
                         _%e250721250913%_
                         _%hd250722250916%_
                         _%tl250723250918%_
                         _%e250724250921%_
                         _%hd250725250924%_
                         _%tl250726250926%_
                         _%e250727250929%_
                         _%hd250728250932%_
                         _%tl250729250934%_
                         _%e250757250833%_
                         _%hd250758250836%_
                         _%tl250759250838%_)))
                    (_%__kont254058254059%_
                     _%tl250723250918%_
                     _%hd250722250916%_))
                (_%__kont254058254059%_
                 _%tl250723250918%_
                 _%hd250722250916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont254058254059%_
                                             _%tl250723250918%_
                                             _%hd250722250916%_))
                                        (_%__kont254058254059%_
                                         _%tl250723250918%_
                                         _%hd250722250916%_))
                                    (_%__kont254058254059%_
                                     _%tl250723250918%_
                                     _%hd250722250916%_))))
                            (_%__kont254058254059%_
                             _%tl250723250918%_
                             _%hd250722250916%_))))
                    (_%__kont254060254061%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self250688%_ _%ctx250689%_ _%stx250690%_ _%args250691%_)
        (let ((_%self250694%_ _%self250688%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx250689%_ _%stx250690%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self250378%_ _%stx250379%_)
        (let* ((_%__stx254166254167%_ _%stx250379%_)
               (_%g250382250422%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254166254167%_)))))
          (let ((_%__kont254168254169%_
                 (lambda (_%g250384250526%_ _%g250385250527%_)
                   (let ((_%$e250554%_
                          (member 'return:
                                  (let ((__tmp254598
                                         (lambda (_%g250546250549%_
                                                  _%g250547250551%_)
                                           (cons _%g250546250549%_
                                                 _%g250547250551%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp254598
                                     '()
                                     _%g250385250527%_))
                                  gx#stx-eq?)))
                     (if _%$e250554%_
                         ((lambda (_%tail250557%_)
                            (let ((_%type250559%_
                                   (let ((__tmp254599
                                          (let ((__tmp254600
                                                 (cadr _%tail250557%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp254600))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx250379%_
                                      __tmp254599))))
                              (gxc#check-return-type!
                               _%stx250379%_
                               _%g250384250526%_
                               _%type250559%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self250378%_
                                 _%g250384250526%_))))
                          _%$e250554%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self250378%_
                            _%g250384250526%_))))))
                (_%__kont254172254173%_
                 (lambda (_%g250407250451%_ _%g250408250452%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self250378%_ _%g250407250451%_)))))
            (let ((_%__match254203254204%_
                   (lambda (_%e250386250472%_
                            _%hd250387250475%_
                            _%tl250388250477%_
                            _%e250389250480%_
                            _%hd250390250483%_
                            _%tl250391250485%_
                            _%e250392250488%_
                            _%hd250393250491%_
                            _%tl250394250493%_
                            _%__splice254170254171%_
                            _%target250395250496%_
                            _%tl250397250498%_)
                     (letrec ((_%loop250398250501%_
                               (lambda (_%hd250396250504%_
                                        _%signature250402250506%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd250396250504%_))
                                     (let ((_%e250399250508%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd250396250504%_))))
                                       (let ((_%lp-tl250401250513%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e250399250508%_)))
                                             (_%lp-hd250400250511%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e250399250508%_))))
                                         (_%loop250398250501%_
                                          _%lp-tl250401250513%_
                                          (cons _%lp-hd250400250511%_
                                                _%signature250402250506%_))))
                                     (let ((_%signature250403250516%_
                                            (reverse _%signature250402250506%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl250391250485%_))
                                           (let ((_%e250404250518%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl250391250485%_))))
                                             (let ((_%tl250406250523%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e250404250518%_)))
                                                   (_%hd250405250521%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e250404250518%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl250406250523%_))
                                                   (_%__kont254168254169%_
                                                    _%hd250405250521%_
                                                    _%signature250403250516%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g250382250422%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g250382250422%_))))))))
                       (_%loop250398250501%_ _%target250395250496%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254166254167%_))
                  (let ((_%e250386250472%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254166254167%_))))
                    (let ((_%tl250388250477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250386250472%_)))
                          (_%hd250387250475%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250386250472%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250388250477%_))
                          (let ((_%e250389250480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250388250477%_))))
                            (let ((_%tl250391250485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250389250480%_)))
                                  (_%hd250390250483%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250389250480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250390250483%_))
                                  (let ((_%e250392250488%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250390250483%_))))
                                    (let ((_%tl250394250493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250392250488%_)))
                                          (_%hd250393250491%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250392250488%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250393250491%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd250393250491%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl250394250493%_))
                                                  (let ((_%__splice254170254171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl250394250493%_
                                                            '0))))
                                                    (let ((_%tl250397250498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254170254171%_
                                                              '1)))
                                                          (_%target250395250496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254170254171%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250397250498%_))
                                                          (_%__match254203254204%_
                                                           _%e250386250472%_
                                                           _%hd250387250475%_
                                                           _%tl250388250477%_
                                                           _%e250389250480%_
                                                           _%hd250390250483%_
                                                           _%tl250391250485%_
                                                           _%e250392250488%_
                                                           _%hd250393250491%_
                                                           _%tl250394250493%_
                                                           _%__splice254170254171%_
                                                           _%target250395250496%_
                                                           _%tl250397250498%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250391250485%_))
                      (let ((_%e250415250443%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250391250485%_))))
                        (let ((_%tl250417250448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250415250443%_)))
                              (_%hd250416250446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250415250443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250417250448%_))
                              (_%__kont254172254173%_
                               _%hd250416250446%_
                               _%hd250390250483%_)
                              (let ()
                                (declare (not safe))
                                (_%g250382250422%_)))))
                      (let () (declare (not safe)) (_%g250382250422%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250391250485%_))
                                                      (let ((_%e250415250443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250391250485%_))))
                (let ((_%tl250417250448%_
                       (let () (declare (not safe)) (##cdr _%e250415250443%_)))
                      (_%hd250416250446%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250415250443%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250417250448%_))
                      (_%__kont254172254173%_
                       _%hd250416250446%_
                       _%hd250390250483%_)
                      (let () (declare (not safe)) (_%g250382250422%_)))))
              (let () (declare (not safe)) (_%g250382250422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250391250485%_))
                                                  (let ((_%e250415250443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250391250485%_))))
                                                    (let ((_%tl250417250448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250415250443%_)))
                                                          (_%hd250416250446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250415250443%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250417250448%_))
                                                          (_%__kont254172254173%_
                                                           _%hd250416250446%_
                                                           _%hd250390250483%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250382250422%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250382250422%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250391250485%_))
                                              (let ((_%e250415250443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250391250485%_))))
                                                (let ((_%tl250417250448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250415250443%_)))
                                                      (_%hd250416250446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250415250443%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250417250448%_))
                                                      (_%__kont254172254173%_
                                                       _%hd250416250446%_
                                                       _%hd250390250483%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250382250422%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250382250422%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250391250485%_))
                                      (let ((_%e250415250443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250391250485%_))))
                                        (let ((_%tl250417250448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250415250443%_)))
                                              (_%hd250416250446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250415250443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250417250448%_))
                                              (_%__kont254172254173%_
                                               _%hd250416250446%_
                                               _%hd250390250483%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g250382250422%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250382250422%_))))))
                          (let () (declare (not safe)) (_%g250382250422%_)))))
                  (let () (declare (not safe)) (_%g250382250422%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx250353%_ _%expr250354%_ _%type250355%_)
        (let ((_%$e250357%_ (not _%type250355%_)))
          (if _%$e250357%_
              _%$e250357%_
              (let ((_%$e250360%_
                     (eq? (##structure-ref _%type250355%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e250360%_
                    _%$e250360%_
                    (let ((_%$e250363%_
                           (eq? (##structure-ref
                                 _%type250355%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e250363%_
                          _%$e250363%_
                          (let ((_%expr-type250367%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr250354%_))))
                            (if (not _%expr-type250367%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx250353%_
                                   _%type250355%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type250367%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx250353%_
                                       _%type250355%_
                                       _%expr-type250367%_))
                                    (let ((_%$e250371%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type250367%_
                                              'gxc#!abort::t))))
                                      (if _%$e250371%_
                                          _%$e250371%_
                                          (let ((_%$e250374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type250367%_
                                                    _%type250355%_))))
                                            (if _%$e250374%_
                                                _%$e250374%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx250353%_
                                                   _%type250355%_
                                                   _%expr-type250367%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self249779%_ _%stx249780%_)
        (let* ((_%__stx254248254249%_ _%stx249780%_)
               (_%g249785249895%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254248254249%_)))))
          (let ((_%__kont254250254251%_
                 (lambda (_%g249787250327%_
                          _%g249788250328%_
                          _%g249789250329%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g249789250329%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self249779%_ _%g249788250328%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self249779%_
                          _%g249787250327%_)))))
                (_%__kont254252254253%_
                 (lambda (_%g249808250153%_
                          _%g249809250154%_
                          _%g249810250155%_
                          _%g249811250156%_)
                   (let ((_%$e250188%_
                          (let ((__tmp254601
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g249811250156%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp254601))))
                     (if _%$e250188%_
                         ((lambda (_%pred-type250191%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250191%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250191%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test250196%_
                                        (let ((__tmp254602
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g249811250156%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g249810250155%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp254602
                                           _%stx249780%_
                                           _%self249779%_)))
                                       (_%K250200%_
                                        (let ((__tmp254603
                                               (lambda ()
                                                 (let ((__tmp254606
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self249779%_
                                                             _%g249809250154%_))))
                                                       (__tmp254604
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g249810250155%_))
                            (let ((__tmp254605
                                   (##structure-ref
                                    _%pred-type250191%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx249780%_
                               __tmp254605)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp254606
                                                    gxc#current-compile-path-type
                                                    __tmp254604)))))
                                          (declare (not safe))
                                          (__make-promise __tmp254603)))
                                       (_%E250203%_
                                        (let ((__tmp254607
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self249779%_
                                                    _%g249808250153%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp254607)))
                                       (_%__stx254226254227%_ _%test250196%_)
                                       (_%g250207250221%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx254226254227%_)))))
                                  (let ((_%__kont254228254229%_
                                         (lambda (_%g250209250249%_
                                                  _%g250210250250%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g250209250249%_))
                                               (force _%K250200%_)
                                               (force _%E250203%_))))
                                        (_%__kont254230254231%_
                                         (lambda ()
                                           (let ((__tmp254608
                                                  (cons '%#if
                                                        (cons _%test250196%_
                                                              (cons (force _%K250200%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E250203%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254608
                                              _%stx249780%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx254226254227%_))
                                        (let ((_%e250211250233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx254226254227%_))))
                                          (let ((_%tl250213250238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e250211250233%_)))
                                                (_%hd250212250236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e250211250233%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl250213250238%_))
                                                (let ((_%e250214250241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl250213250238%_))))
                                                  (let ((_%tl250216250246%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e250214250241%_)))
                                                        (_%hd250215250244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e250214250241%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl250216250246%_))
                                                        (_%__kont254228254229%_
                                                         _%hd250215250244%_
                                                         _%hd250212250236%_)
                                                        (_%__kont254230254231%_))))
                                                (_%__kont254230254231%_))))
                                        (_%__kont254230254231%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self249779%_
                                   _%stx249780%_))))
                          _%$e250188%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self249779%_
                            _%stx249780%_))))))
                (_%__kont254254254255%_
                 (lambda (_%g249845250029%_
                          _%g249846250030%_
                          _%g249847250031%_
                          _%g249848250032%_)
                   (gxc#optimize-if%
                    _%self249779%_
                    (let ((__tmp254609
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g249847250031%_
                                       (cons _%g249845250029%_
                                             (cons _%g249846250030%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254609 _%stx249780%_)))))
                (_%__kont254256254257%_
                 (lambda (_%g249876249932%_
                          _%g249877249933%_
                          _%g249878249934%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self249779%_ _%stx249780%_)))))
            (let ((_%__match254455254456%_
                   (lambda (_%e249849249957%_
                            _%hd249850249960%_
                            _%tl249851249962%_
                            _%e249852249965%_
                            _%hd249853249968%_
                            _%tl249854249970%_
                            _%e249855249973%_
                            _%hd249856249976%_
                            _%tl249857249978%_
                            _%e249858249981%_
                            _%hd249859249984%_
                            _%tl249860249986%_
                            _%e249861249989%_
                            _%hd249862249992%_
                            _%tl249863249994%_
                            _%e249864249997%_
                            _%hd249865250000%_
                            _%tl249866250002%_
                            _%e249867250005%_
                            _%hd249868250008%_
                            _%tl249869250010%_
                            _%e249870250013%_
                            _%hd249871250016%_
                            _%tl249872250018%_
                            _%e249873250021%_
                            _%hd249874250024%_
                            _%tl249875250026%_)
                     (let ((_%g249845250029%_ _%hd249874250024%_)
                           (_%g249846250030%_ _%hd249871250016%_)
                           (_%g249847250031%_ _%hd249868250008%_)
                           (_%g249848250032%_ _%hd249865250000%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g249848250032%_ 'not))
                           (_%__kont254254254255%_
                            _%g249845250029%_
                            _%g249846250030%_
                            _%g249847250031%_
                            _%g249848250032%_)
                           (_%__kont254256254257%_
                            _%hd249874250024%_
                            _%hd249871250016%_
                            _%hd249853249968%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254248254249%_))
                  (let ((_%e249790250279%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254248254249%_))))
                    (let ((_%tl249792250284%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249790250279%_)))
                          (_%hd249791250282%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249790250279%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249792250284%_))
                          (let ((_%e249793250287%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249792250284%_))))
                            (let ((_%tl249795250292%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249793250287%_)))
                                  (_%hd249794250290%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249793250287%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd249794250290%_))
                                  (let ((_%e249796250295%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd249794250290%_))))
                                    (let ((_%tl249798250300%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249796250295%_)))
                                          (_%hd249797250298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249796250295%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd249797250298%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd249797250298%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249798250300%_))
                                                  (let ((_%e249799250303%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249798250300%_))))
                                                    (let ((_%tl249801250308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249799250303%_)))
                                                          (_%hd249800250306%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249799250303%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249801250308%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl249795250292%_))
                      (let ((_%e249802250311%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249795250292%_))))
                        (let ((_%tl249804250316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249802250311%_)))
                              (_%hd249803250314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249802250311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249804250316%_))
                              (let ((_%e249805250319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249804250316%_))))
                                (let ((_%tl249807250324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249805250319%_)))
                                      (_%hd249806250322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249805250319%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249807250324%_))
                                      (_%__kont254250254251%_
                                       _%hd249806250322%_
                                       _%hd249803250314%_
                                       _%hd249800250306%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g249785249895%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g249785249895%_)))))
                      (let () (declare (not safe)) (_%g249785249895%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249795250292%_))
                      (let ((_%e249885249916%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249795250292%_))))
                        (let ((_%tl249887249921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249885249916%_)))
                              (_%hd249886249919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249885249916%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249887249921%_))
                              (let ((_%e249888249924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249887249921%_))))
                                (let ((_%tl249890249929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249888249924%_)))
                                      (_%hd249889249927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249888249924%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249890249929%_))
                                      (_%__kont254256254257%_
                                       _%hd249889249927%_
                                       _%hd249886249919%_
                                       _%hd249794250290%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g249785249895%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g249785249895%_)))))
                      (let () (declare (not safe)) (_%g249785249895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249795250292%_))
                                                      (let ((_%e249885249916%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249795250292%_))))
                (let ((_%tl249887249921%_
                       (let () (declare (not safe)) (##cdr _%e249885249916%_)))
                      (_%hd249886249919%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249885249916%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249887249921%_))
                      (let ((_%e249888249924%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249887249921%_))))
                        (let ((_%tl249890249929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249888249924%_)))
                              (_%hd249889249927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249888249924%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249890249929%_))
                              (_%__kont254256254257%_
                               _%hd249889249927%_
                               _%hd249886249919%_
                               _%hd249794250290%_)
                              (let ()
                                (declare (not safe))
                                (_%g249785249895%_)))))
                      (let () (declare (not safe)) (_%g249785249895%_)))))
              (let () (declare (not safe)) (_%g249785249895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd249797250298%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249798250300%_))
                                                      (let ((_%e249821250089%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249798250300%_))))
                (let ((_%tl249823250094%_
                       (let () (declare (not safe)) (##cdr _%e249821250089%_)))
                      (_%hd249822250092%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249821250089%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd249822250092%_))
                      (let ((_%e249824250097%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd249822250092%_))))
                        (let ((_%tl249826250102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249824250097%_)))
                              (_%hd249825250100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249824250097%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd249825250100%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd249825250100%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249826250102%_))
                                      (let ((_%e249827250105%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249826250102%_))))
                                        (let ((_%tl249829250110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249827250105%_)))
                                              (_%hd249828250108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249827250105%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249829250110%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249823250094%_))
                                                  (let ((_%e249830250113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249823250094%_))))
                                                    (let ((_%tl249832250118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249830250113%_)))
                                                          (_%hd249831250116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249830250113%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd249831250116%_))
                                                          (let ((_%e249833250121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd249831250116%_))))
                    (let ((_%tl249835250126%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249833250121%_)))
                          (_%hd249834250124%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249833250121%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd249834250124%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd249834250124%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249835250126%_))
                                  (let ((_%e249836250129%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249835250126%_))))
                                    (let ((_%tl249838250134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249836250129%_)))
                                          (_%hd249837250132%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249836250129%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249838250134%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249832250118%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249795250292%_))
                                                  (let ((_%e249839250137%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249795250292%_))))
                                                    (let ((_%tl249841250142%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249839250137%_)))
                                                          (_%hd249840250140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249839250137%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249841250142%_))
                                                          (let ((_%e249842250145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249841250142%_))))
                    (let ((_%tl249844250150%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249842250145%_)))
                          (_%hd249843250148%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249842250145%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249844250150%_))
                          (_%__kont254252254253%_
                           _%hd249843250148%_
                           _%hd249840250140%_
                           _%hd249837250132%_
                           _%hd249828250108%_)
                          (let () (declare (not safe)) (_%g249785249895%_)))))
                  (let () (declare (not safe)) (_%g249785249895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249795250292%_))
                                                  (let ((_%e249885249916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249795250292%_))))
                                                    (let ((_%tl249887249921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249885249916%_)))
                                                          (_%hd249886249919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249885249916%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249887249921%_))
                                                          (let ((_%e249888249924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249887249921%_))))
                    (let ((_%tl249890249929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249888249924%_)))
                          (_%hd249889249927%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249888249924%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249890249929%_))
                          (_%__kont254256254257%_
                           _%hd249889249927%_
                           _%hd249886249919%_
                           _%hd249794250290%_)
                          (let () (declare (not safe)) (_%g249785249895%_)))))
                  (let () (declare (not safe)) (_%g249785249895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249832250118%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249795250292%_))
                                                  (let ((_%e249870250013%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249795250292%_))))
                                                    (let ((_%tl249872250018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249870250013%_)))
                                                          (_%hd249871250016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249870250013%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249872250018%_))
                                                          (let ((_%e249873250021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249872250018%_))))
                    (let ((_%tl249875250026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249873250021%_)))
                          (_%hd249874250024%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249873250021%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249875250026%_))
                          (_%__match254455254456%_
                           _%e249790250279%_
                           _%hd249791250282%_
                           _%tl249792250284%_
                           _%e249793250287%_
                           _%hd249794250290%_
                           _%tl249795250292%_
                           _%e249796250295%_
                           _%hd249797250298%_
                           _%tl249798250300%_
                           _%e249821250089%_
                           _%hd249822250092%_
                           _%tl249823250094%_
                           _%e249824250097%_
                           _%hd249825250100%_
                           _%tl249826250102%_
                           _%e249827250105%_
                           _%hd249828250108%_
                           _%tl249829250110%_
                           _%e249830250113%_
                           _%hd249831250116%_
                           _%tl249832250118%_
                           _%e249870250013%_
                           _%hd249871250016%_
                           _%tl249872250018%_
                           _%e249873250021%_
                           _%hd249874250024%_
                           _%tl249875250026%_)
                          (let () (declare (not safe)) (_%g249785249895%_)))))
                  (let () (declare (not safe)) (_%g249785249895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249795250292%_))
                                                  (let ((_%e249885249916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249795250292%_))))
                                                    (let ((_%tl249887249921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249885249916%_)))
                                                          (_%hd249886249919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249885249916%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249887249921%_))
                                                          (let ((_%e249888249924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249887249921%_))))
                    (let ((_%tl249890249929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249888249924%_)))
                          (_%hd249889249927%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249888249924%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249890249929%_))
                          (_%__kont254256254257%_
                           _%hd249889249927%_
                           _%hd249886249919%_
                           _%hd249794250290%_)
                          (let () (declare (not safe)) (_%g249785249895%_)))))
                  (let () (declare (not safe)) (_%g249785249895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249832250118%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249795250292%_))
                                          (let ((_%e249870250013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249795250292%_))))
                                            (let ((_%tl249872250018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249870250013%_)))
                                                  (_%hd249871250016%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249870250013%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249872250018%_))
                                                  (let ((_%e249873250021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249872250018%_))))
                                                    (let ((_%tl249875250026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249873250021%_)))
                                                          (_%hd249874250024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249873250021%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249875250026%_))
                                                          (_%__match254455254456%_
                                                           _%e249790250279%_
                                                           _%hd249791250282%_
                                                           _%tl249792250284%_
                                                           _%e249793250287%_
                                                           _%hd249794250290%_
                                                           _%tl249795250292%_
                                                           _%e249796250295%_
                                                           _%hd249797250298%_
                                                           _%tl249798250300%_
                                                           _%e249821250089%_
                                                           _%hd249822250092%_
                                                           _%tl249823250094%_
                                                           _%e249824250097%_
                                                           _%hd249825250100%_
                                                           _%tl249826250102%_
                                                           _%e249827250105%_
                                                           _%hd249828250108%_
                                                           _%tl249829250110%_
                                                           _%e249830250113%_
                                                           _%hd249831250116%_
                                                           _%tl249832250118%_
                                                           _%e249870250013%_
                                                           _%hd249871250016%_
                                                           _%tl249872250018%_
                                                           _%e249873250021%_
                                                           _%hd249874250024%_
                                                           _%tl249875250026%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249785249895%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249785249895%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249795250292%_))
                                          (let ((_%e249885249916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249795250292%_))))
                                            (let ((_%tl249887249921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249885249916%_)))
                                                  (_%hd249886249919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249885249916%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249887249921%_))
                                                  (let ((_%e249888249924%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249887249921%_))))
                                                    (let ((_%tl249890249929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249888249924%_)))
                                                          (_%hd249889249927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249888249924%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249890249929%_))
                                                          (_%__kont254256254257%_
                                                           _%hd249889249927%_
                                                           _%hd249886249919%_
                                                           _%hd249794250290%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249785249895%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249785249895%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249832250118%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249795250292%_))
                                      (let ((_%e249870250013%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249795250292%_))))
                                        (let ((_%tl249872250018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249870250013%_)))
                                              (_%hd249871250016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249870250013%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249872250018%_))
                                              (let ((_%e249873250021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249872250018%_))))
                                                (let ((_%tl249875250026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249873250021%_)))
                                                      (_%hd249874250024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249873250021%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249875250026%_))
                                                      (_%__match254455254456%_
                                                       _%e249790250279%_
                                                       _%hd249791250282%_
                                                       _%tl249792250284%_
                                                       _%e249793250287%_
                                                       _%hd249794250290%_
                                                       _%tl249795250292%_
                                                       _%e249796250295%_
                                                       _%hd249797250298%_
                                                       _%tl249798250300%_
                                                       _%e249821250089%_
                                                       _%hd249822250092%_
                                                       _%tl249823250094%_
                                                       _%e249824250097%_
                                                       _%hd249825250100%_
                                                       _%tl249826250102%_
                                                       _%e249827250105%_
                                                       _%hd249828250108%_
                                                       _%tl249829250110%_
                                                       _%e249830250113%_
                                                       _%hd249831250116%_
                                                       _%tl249832250118%_
                                                       _%e249870250013%_
                                                       _%hd249871250016%_
                                                       _%tl249872250018%_
                                                       _%e249873250021%_
                                                       _%hd249874250024%_
                                                       _%tl249875250026%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249785249895%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249785249895%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249785249895%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249795250292%_))
                                      (let ((_%e249885249916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249795250292%_))))
                                        (let ((_%tl249887249921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249885249916%_)))
                                              (_%hd249886249919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249885249916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249887249921%_))
                                              (let ((_%e249888249924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249887249921%_))))
                                                (let ((_%tl249890249929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249888249924%_)))
                                                      (_%hd249889249927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249888249924%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249890249929%_))
                                                      (_%__kont254256254257%_
                                                       _%hd249889249927%_
                                                       _%hd249886249919%_
                                                       _%hd249794250290%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249785249895%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249785249895%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249785249895%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249832250118%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249795250292%_))
                                  (let ((_%e249870250013%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249795250292%_))))
                                    (let ((_%tl249872250018%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249870250013%_)))
                                          (_%hd249871250016%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249870250013%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249872250018%_))
                                          (let ((_%e249873250021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249872250018%_))))
                                            (let ((_%tl249875250026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249873250021%_)))
                                                  (_%hd249874250024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249873250021%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249875250026%_))
                                                  (_%__match254455254456%_
                                                   _%e249790250279%_
                                                   _%hd249791250282%_
                                                   _%tl249792250284%_
                                                   _%e249793250287%_
                                                   _%hd249794250290%_
                                                   _%tl249795250292%_
                                                   _%e249796250295%_
                                                   _%hd249797250298%_
                                                   _%tl249798250300%_
                                                   _%e249821250089%_
                                                   _%hd249822250092%_
                                                   _%tl249823250094%_
                                                   _%e249824250097%_
                                                   _%hd249825250100%_
                                                   _%tl249826250102%_
                                                   _%e249827250105%_
                                                   _%hd249828250108%_
                                                   _%tl249829250110%_
                                                   _%e249830250113%_
                                                   _%hd249831250116%_
                                                   _%tl249832250118%_
                                                   _%e249870250013%_
                                                   _%hd249871250016%_
                                                   _%tl249872250018%_
                                                   _%e249873250021%_
                                                   _%hd249874250024%_
                                                   _%tl249875250026%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249785249895%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249785249895%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249795250292%_))
                                  (let ((_%e249885249916%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249795250292%_))))
                                    (let ((_%tl249887249921%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249885249916%_)))
                                          (_%hd249886249919%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249885249916%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249887249921%_))
                                          (let ((_%e249888249924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249887249921%_))))
                                            (let ((_%tl249890249929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249888249924%_)))
                                                  (_%hd249889249927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249888249924%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249890249929%_))
                                                  (_%__kont254256254257%_
                                                   _%hd249889249927%_
                                                   _%hd249886249919%_
                                                   _%hd249794250290%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249785249895%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249785249895%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249832250118%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249795250292%_))
                          (let ((_%e249870250013%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249795250292%_))))
                            (let ((_%tl249872250018%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249870250013%_)))
                                  (_%hd249871250016%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249870250013%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249872250018%_))
                                  (let ((_%e249873250021%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249872250018%_))))
                                    (let ((_%tl249875250026%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249873250021%_)))
                                          (_%hd249874250024%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249873250021%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249875250026%_))
                                          (_%__match254455254456%_
                                           _%e249790250279%_
                                           _%hd249791250282%_
                                           _%tl249792250284%_
                                           _%e249793250287%_
                                           _%hd249794250290%_
                                           _%tl249795250292%_
                                           _%e249796250295%_
                                           _%hd249797250298%_
                                           _%tl249798250300%_
                                           _%e249821250089%_
                                           _%hd249822250092%_
                                           _%tl249823250094%_
                                           _%e249824250097%_
                                           _%hd249825250100%_
                                           _%tl249826250102%_
                                           _%e249827250105%_
                                           _%hd249828250108%_
                                           _%tl249829250110%_
                                           _%e249830250113%_
                                           _%hd249831250116%_
                                           _%tl249832250118%_
                                           _%e249870250013%_
                                           _%hd249871250016%_
                                           _%tl249872250018%_
                                           _%e249873250021%_
                                           _%hd249874250024%_
                                           _%tl249875250026%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249785249895%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249785249895%_)))))
                          (let () (declare (not safe)) (_%g249785249895%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249795250292%_))
                          (let ((_%e249885249916%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249795250292%_))))
                            (let ((_%tl249887249921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249885249916%_)))
                                  (_%hd249886249919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249885249916%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249887249921%_))
                                  (let ((_%e249888249924%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249887249921%_))))
                                    (let ((_%tl249890249929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249888249924%_)))
                                          (_%hd249889249927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249888249924%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249890249929%_))
                                          (_%__kont254256254257%_
                                           _%hd249889249927%_
                                           _%hd249886249919%_
                                           _%hd249794250290%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249785249895%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249785249895%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g249785249895%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249795250292%_))
                                                      (let ((_%e249885249916%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249795250292%_))))
                (let ((_%tl249887249921%_
                       (let () (declare (not safe)) (##cdr _%e249885249916%_)))
                      (_%hd249886249919%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249885249916%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249887249921%_))
                      (let ((_%e249888249924%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249887249921%_))))
                        (let ((_%tl249890249929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249888249924%_)))
                              (_%hd249889249927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249888249924%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249890249929%_))
                              (_%__kont254256254257%_
                               _%hd249889249927%_
                               _%hd249886249919%_
                               _%hd249794250290%_)
                              (let ()
                                (declare (not safe))
                                (_%g249785249895%_)))))
                      (let () (declare (not safe)) (_%g249785249895%_)))))
              (let () (declare (not safe)) (_%g249785249895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249795250292%_))
                                                  (let ((_%e249885249916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249795250292%_))))
                                                    (let ((_%tl249887249921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249885249916%_)))
                                                          (_%hd249886249919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249885249916%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249887249921%_))
                                                          (let ((_%e249888249924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249887249921%_))))
                    (let ((_%tl249890249929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249888249924%_)))
                          (_%hd249889249927%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249888249924%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249890249929%_))
                          (_%__kont254256254257%_
                           _%hd249889249927%_
                           _%hd249886249919%_
                           _%hd249794250290%_)
                          (let () (declare (not safe)) (_%g249785249895%_)))))
                  (let () (declare (not safe)) (_%g249785249895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249795250292%_))
                                          (let ((_%e249885249916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249795250292%_))))
                                            (let ((_%tl249887249921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249885249916%_)))
                                                  (_%hd249886249919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249885249916%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249887249921%_))
                                                  (let ((_%e249888249924%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249887249921%_))))
                                                    (let ((_%tl249890249929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249888249924%_)))
                                                          (_%hd249889249927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249888249924%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249890249929%_))
                                                          (_%__kont254256254257%_
                                                           _%hd249889249927%_
                                                           _%hd249886249919%_
                                                           _%hd249794250290%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249785249895%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249785249895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249795250292%_))
                                      (let ((_%e249885249916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249795250292%_))))
                                        (let ((_%tl249887249921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249885249916%_)))
                                              (_%hd249886249919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249885249916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249887249921%_))
                                              (let ((_%e249888249924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249887249921%_))))
                                                (let ((_%tl249890249929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249888249924%_)))
                                                      (_%hd249889249927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249888249924%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249890249929%_))
                                                      (_%__kont254256254257%_
                                                       _%hd249889249927%_
                                                       _%hd249886249919%_
                                                       _%hd249794250290%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249785249895%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249785249895%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249785249895%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249795250292%_))
                                  (let ((_%e249885249916%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249795250292%_))))
                                    (let ((_%tl249887249921%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249885249916%_)))
                                          (_%hd249886249919%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249885249916%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249887249921%_))
                                          (let ((_%e249888249924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249887249921%_))))
                                            (let ((_%tl249890249929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249888249924%_)))
                                                  (_%hd249889249927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249888249924%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249890249929%_))
                                                  (_%__kont254256254257%_
                                                   _%hd249889249927%_
                                                   _%hd249886249919%_
                                                   _%hd249794250290%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249785249895%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249785249895%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249785249895%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249795250292%_))
                          (let ((_%e249885249916%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249795250292%_))))
                            (let ((_%tl249887249921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249885249916%_)))
                                  (_%hd249886249919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249885249916%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249887249921%_))
                                  (let ((_%e249888249924%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249887249921%_))))
                                    (let ((_%tl249890249929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249888249924%_)))
                                          (_%hd249889249927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249888249924%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249890249929%_))
                                          (_%__kont254256254257%_
                                           _%hd249889249927%_
                                           _%hd249886249919%_
                                           _%hd249794250290%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249785249895%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249785249895%_)))))
                          (let () (declare (not safe)) (_%g249785249895%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl249795250292%_))
                  (let ((_%e249885249916%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249795250292%_))))
                    (let ((_%tl249887249921%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249885249916%_)))
                          (_%hd249886249919%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249885249916%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249887249921%_))
                          (let ((_%e249888249924%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249887249921%_))))
                            (let ((_%tl249890249929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249888249924%_)))
                                  (_%hd249889249927%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249888249924%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249890249929%_))
                                  (_%__kont254256254257%_
                                   _%hd249889249927%_
                                   _%hd249886249919%_
                                   _%hd249794250290%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g249785249895%_)))))
                          (let () (declare (not safe)) (_%g249785249895%_)))))
                  (let () (declare (not safe)) (_%g249785249895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249795250292%_))
                                                      (let ((_%e249885249916%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249795250292%_))))
                (let ((_%tl249887249921%_
                       (let () (declare (not safe)) (##cdr _%e249885249916%_)))
                      (_%hd249886249919%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249885249916%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249887249921%_))
                      (let ((_%e249888249924%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249887249921%_))))
                        (let ((_%tl249890249929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249888249924%_)))
                              (_%hd249889249927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249888249924%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249890249929%_))
                              (_%__kont254256254257%_
                               _%hd249889249927%_
                               _%hd249886249919%_
                               _%hd249794250290%_)
                              (let ()
                                (declare (not safe))
                                (_%g249785249895%_)))))
                      (let () (declare (not safe)) (_%g249785249895%_)))))
              (let () (declare (not safe)) (_%g249785249895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249795250292%_))
                                              (let ((_%e249885249916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249795250292%_))))
                                                (let ((_%tl249887249921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249885249916%_)))
                                                      (_%hd249886249919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249885249916%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249887249921%_))
                                                      (let ((_%e249888249924%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249887249921%_))))
                (let ((_%tl249890249929%_
                       (let () (declare (not safe)) (##cdr _%e249888249924%_)))
                      (_%hd249889249927%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249888249924%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249890249929%_))
                      (_%__kont254256254257%_
                       _%hd249889249927%_
                       _%hd249886249919%_
                       _%hd249794250290%_)
                      (let () (declare (not safe)) (_%g249785249895%_)))))
              (let () (declare (not safe)) (_%g249785249895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g249785249895%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249795250292%_))
                                      (let ((_%e249885249916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249795250292%_))))
                                        (let ((_%tl249887249921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249885249916%_)))
                                              (_%hd249886249919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249885249916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249887249921%_))
                                              (let ((_%e249888249924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249887249921%_))))
                                                (let ((_%tl249890249929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249888249924%_)))
                                                      (_%hd249889249927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249888249924%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249890249929%_))
                                                      (_%__kont254256254257%_
                                                       _%hd249889249927%_
                                                       _%hd249886249919%_
                                                       _%hd249794250290%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249785249895%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249785249895%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249785249895%_))))))
                          (let () (declare (not safe)) (_%g249785249895%_)))))
                  (let () (declare (not safe)) (_%g249785249895%_))))))))))
