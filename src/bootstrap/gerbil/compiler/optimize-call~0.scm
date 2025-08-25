(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1756156307)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp205604 (list gxc#::basic-xform::t))
            (__tmp205603 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp205604
         '()
         __tmp205603
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args204881%_
        (apply make-instance gxc#::optimize-call::t _%$args204881%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp205605
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
        (__make-promise __tmp205605)))
    (define gxc#apply-optimize-call
      (lambda (_%stx204873%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self204876%_
                (let ((__obj205595
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj205595))
               (__tmp205606
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204876%_ _%stx204873%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205606
           gxc#current-compile-method
           _%self204876%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp205608 (list gxc#::void::t))
            (__tmp205607 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp205608
         '()
         __tmp205607
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args204870%_
        (apply make-instance gxc#::check-return-type::t _%$args204870%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp205609
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
        (__make-promise __tmp205609)))
    (define gxc#apply-check-return-type
      (lambda (_%stx204862%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self204865%_
                (let ((__obj205597
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj205597))
               (__tmp205610
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204865%_ _%stx204862%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205610
           gxc#current-compile-method
           _%self204865%_))))
    (define gxc#optimize-call%
      (lambda (_%self204463%_ _%stx204464%_)
        (let* ((_%__stx204950204951%_ _%stx204464%_)
               (_%g204467204513%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204950204951%_)))))
          (let ((_%__kont204952204953%_
                 (lambda (_%L204656%_ _%L204657%_)
                   (let* ((_%rator-id204677%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L204657%_)))
                          (_%rator-type204679%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id204677%_))))
                     (if (or (not _%rator-type204679%_)
                             (eq? (##structure-ref
                                   _%rator-type204679%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self204463%_ _%stx204464%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type204679%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp205611
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type204679%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id204677%_
                                  '" => "
                                  _%rator-type204679%_
                                  '" "
                                  __tmp205611))
                               (let* ((_%optimized204694%_
                                       (let ((__method205598
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type204679%_
                                                 'optimize-call))))
                                         (if __method205598
                                             (let ((__tmp205612
                                                    (let ((__tmp205613
                                                           (lambda (_%g204686204689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204687204691%_)
                     (cons _%g204686204689%_ _%g204687204691%_))))
              (declare (not safe))
              (__foldr1 __tmp205613 '() _%L204656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method205598
                                                _%rator-type204679%_
                                                _%self204463%_
                                                _%stx204464%_
                                                __tmp205612))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type204679%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx204898204899%_
                                       _%optimized204694%_)
                                      (_%g204697204726%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx204898204899%_)))))
                                 (let ((_%__kont204900204901%_
                                        (lambda (_%L204794%_ _%L204795%_)
                                          (let* ((_%optimized-rator-id204822%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L204795%_)))
                                                 (_%rator-type204827%_
                                                  (let ((_%$e204824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id204822%_))))
                                                    (if _%$e204824%_
                                                        _%$e204824%_
                                                        _%rator-type204679%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type204827%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id204822%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type204827%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type204827%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized204694%_
                                                (let ((__tmp205614
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L204795%_ '()))
                           (let ((__tmp205615
                                  (lambda (_%g204835204838%_ _%g204836204840%_)
                                    (cons _%g204835204838%_
                                          _%g204836204840%_))))
                             (declare (not safe))
                             (__foldr1 __tmp205615 '() _%L204794%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp205614
                                                   _%stx204464%_))))))
                                       (_%__kont204904204905%_
                                        (lambda () _%optimized204694%_)))
                                   (let ((_%__match204947204948%_
                                          (lambda (_%e204701204738%_
                                                   _%hd204702204741%_
                                                   _%tl204703204743%_
                                                   _%e204704204746%_
                                                   _%hd204705204749%_
                                                   _%tl204706204751%_
                                                   _%e204707204754%_
                                                   _%hd204708204757%_
                                                   _%tl204709204759%_
                                                   _%e204710204762%_
                                                   _%hd204711204765%_
                                                   _%tl204712204767%_
                                                   _%__splice204902204903%_
                                                   _%target204713204770%_
                                                   _%tl204715204772%_)
                                            (letrec ((_%loop204716204775%_
                                                      (lambda (_%hd204714204778%_
                                                               _%arg204720204780%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd204714204778%_))
                                                            (let ((_%e204717204783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd204714204778%_))))
                      (let ((_%lp-tl204719204788%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204717204783%_)))
                            (_%lp-hd204718204786%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204717204783%_))))
                        (_%loop204716204775%_
                         _%lp-tl204719204788%_
                         (cons _%lp-hd204718204786%_ _%arg204720204780%_))))
                    (let ((_%arg204721204791%_ (reverse _%arg204720204780%_)))
                      (_%__kont204900204901%_
                       _%arg204721204791%_
                       _%hd204711204765%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop204716204775%_
                                               _%target204713204770%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx204898204899%_))
                                         (let ((_%e204701204738%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx204898204899%_))))
                                           (let ((_%tl204703204743%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e204701204738%_)))
                                                 (_%hd204702204741%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e204701204738%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd204702204741%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd204702204741%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl204703204743%_))
                                                         (let ((_%e204704204746%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl204703204743%_))))
                   (let ((_%tl204706204751%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e204704204746%_)))
                         (_%hd204705204749%_
                          (let ()
                            (declare (not safe))
                            (##car _%e204704204746%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd204705204749%_))
                         (let ((_%e204707204754%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd204705204749%_))))
                           (let ((_%tl204709204759%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e204707204754%_)))
                                 (_%hd204708204757%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e204707204754%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd204708204757%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd204708204757%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl204709204759%_))
                                         (let ((_%e204710204762%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl204709204759%_))))
                                           (let ((_%tl204712204767%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e204710204762%_)))
                                                 (_%hd204711204765%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e204710204762%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl204712204767%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl204706204751%_))
                                                     (let ((_%__splice204902204903%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl204706204751%_
                                                               '0))))
                                                       (let ((_%tl204715204772%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice204902204903%_ '1)))
                     (_%target204713204770%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice204902204903%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl204715204772%_))
                     (_%__match204947204948%_
                      _%e204701204738%_
                      _%hd204702204741%_
                      _%tl204703204743%_
                      _%e204704204746%_
                      _%hd204705204749%_
                      _%tl204706204751%_
                      _%e204707204754%_
                      _%hd204708204757%_
                      _%tl204709204759%_
                      _%e204710204762%_
                      _%hd204711204765%_
                      _%tl204712204767%_
                      _%__splice204902204903%_
                      _%target204713204770%_
                      _%tl204715204772%_)
                     (_%__kont204904204905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont204904204905%_))
                                                 (_%__kont204904204905%_))))
                                         (_%__kont204904204905%_))
                                     (_%__kont204904204905%_))
                                 (_%__kont204904204905%_))))
                         (_%__kont204904204905%_))))
                 (_%__kont204904204905%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont204904204905%_))
                                                 (_%__kont204904204905%_))))
                                         (_%__kont204904204905%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type204679%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type204679%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp205616
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L204657%_
                                                                '()))
                                                    (map (lambda (_%g204846204848%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self204463%_
                                                              _%g204846204848%_)))
                                                         (let ((__tmp205617
                                                                (lambda (_%g204850204853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g204851204855%_)
                          (cons _%g204850204853%_ _%g204851204855%_))))
                   (declare (not safe))
                   (__foldr1 __tmp205617 '() _%L204656%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp205616
                                    _%stx204464%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx204464%_
                                    _%rator-type204679%_))))))))
                (_%__kont204956204957%_
                 (lambda (_%L204558%_ _%L204559%_)
                   (let ((_%rator-type204576%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L204559%_))))
                     (if (and _%rator-type204576%_
                              (eq? (##structure-ref
                                    _%rator-type204576%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type204576%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type204576%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type204576%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp205618
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self204463%_
                                               _%L204559%_))
                                            (map (lambda (_%g204578204580%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self204463%_
                                                      _%g204578204580%_)))
                                                 (let ((__tmp205619
                                                        (lambda (_%g204582204585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g204583204587%_)
                  (cons _%g204582204585%_ _%g204583204587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp205619
                                                    '()
                                                    _%L204558%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp205618 _%stx204464%_))
                         (if (or (not _%rator-type204576%_)
                                 (let ((__tmp205620
                                        (##structure-ref
                                         _%rator-type204576%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp205620 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self204463%_ _%stx204464%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx204464%_
                                _%rator-type204576%_))))))))
            (let* ((_%__match205017205018%_
                    (lambda (_%e204494204518%_
                             _%hd204495204521%_
                             _%tl204496204523%_
                             _%e204497204526%_
                             _%hd204498204529%_
                             _%tl204499204531%_
                             _%__splice204958204959%_
                             _%target204500204534%_
                             _%tl204502204536%_)
                      (letrec ((_%loop204503204539%_
                                (lambda (_%hd204501204542%_
                                         _%rand204507204544%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204501204542%_))
                                      (let ((_%e204504204547%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204501204542%_))))
                                        (let ((_%lp-tl204506204552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204504204547%_)))
                                              (_%lp-hd204505204550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204504204547%_))))
                                          (_%loop204503204539%_
                                           _%lp-tl204506204552%_
                                           (cons _%lp-hd204505204550%_
                                                 _%rand204507204544%_))))
                                      (let ((_%rand204508204555%_
                                             (reverse _%rand204507204544%_)))
                                        (_%__kont204956204957%_
                                         _%rand204508204555%_
                                         _%hd204498204529%_))))))
                        (_%loop204503204539%_ _%target204500204534%_ '()))))
                   (_%__match204997204998%_
                    (lambda (_%e204471204600%_
                             _%hd204472204603%_
                             _%tl204473204605%_
                             _%e204474204608%_
                             _%hd204475204611%_
                             _%tl204476204613%_
                             _%e204477204616%_
                             _%hd204478204619%_
                             _%tl204479204621%_
                             _%e204480204624%_
                             _%hd204481204627%_
                             _%tl204482204629%_
                             _%__splice204954204955%_
                             _%target204483204632%_
                             _%tl204485204634%_)
                      (letrec ((_%loop204486204637%_
                                (lambda (_%hd204484204640%_
                                         _%rand204490204642%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204484204640%_))
                                      (let ((_%e204487204645%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204484204640%_))))
                                        (let ((_%lp-tl204489204650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204487204645%_)))
                                              (_%lp-hd204488204648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204487204645%_))))
                                          (_%loop204486204637%_
                                           _%lp-tl204489204650%_
                                           (cons _%lp-hd204488204648%_
                                                 _%rand204490204642%_))))
                                      (let ((_%rand204491204653%_
                                             (reverse _%rand204490204642%_)))
                                        (_%__kont204952204953%_
                                         _%rand204491204653%_
                                         _%hd204481204627%_))))))
                        (_%loop204486204637%_ _%target204483204632%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204950204951%_))
                  (let ((_%e204471204600%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204950204951%_))))
                    (let ((_%tl204473204605%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204471204600%_)))
                          (_%hd204472204603%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204471204600%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204473204605%_))
                          (let ((_%e204474204608%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204473204605%_))))
                            (let ((_%tl204476204613%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204474204608%_)))
                                  (_%hd204475204611%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204474204608%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204475204611%_))
                                  (let ((_%e204477204616%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204475204611%_))))
                                    (let ((_%tl204479204621%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204477204616%_)))
                                          (_%hd204478204619%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204477204616%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204478204619%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd204478204619%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204479204621%_))
                                                  (let ((_%e204480204624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204479204621%_))))
                                                    (let ((_%tl204482204629%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204480204624%_)))
                                                          (_%hd204481204627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204480204624%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204482204629%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl204476204613%_))
                      (let ((_%__splice204954204955%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl204476204613%_
                                '0))))
                        (let ((_%tl204485204634%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204954204955%_ '1)))
                              (_%target204483204632%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204954204955%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204485204634%_))
                              (_%__match204997204998%_
                               _%e204471204600%_
                               _%hd204472204603%_
                               _%tl204473204605%_
                               _%e204474204608%_
                               _%hd204475204611%_
                               _%tl204476204613%_
                               _%e204477204616%_
                               _%hd204478204619%_
                               _%tl204479204621%_
                               _%e204480204624%_
                               _%hd204481204627%_
                               _%tl204482204629%_
                               _%__splice204954204955%_
                               _%target204483204632%_
                               _%tl204485204634%_)
                              (let ()
                                (declare (not safe))
                                (_%g204467204513%_)))))
                      (let () (declare (not safe)) (_%g204467204513%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl204476204613%_))
                      (let ((_%__splice204958204959%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl204476204613%_
                                '0))))
                        (let ((_%tl204502204536%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204958204959%_ '1)))
                              (_%target204500204534%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204958204959%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204502204536%_))
                              (_%__match205017205018%_
                               _%e204471204600%_
                               _%hd204472204603%_
                               _%tl204473204605%_
                               _%e204474204608%_
                               _%hd204475204611%_
                               _%tl204476204613%_
                               _%__splice204958204959%_
                               _%target204500204534%_
                               _%tl204502204536%_)
                              (let ()
                                (declare (not safe))
                                (_%g204467204513%_)))))
                      (let () (declare (not safe)) (_%g204467204513%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204476204613%_))
                                                      (let ((_%__splice204958204959%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl204476204613%_
                        '0))))
                (let ((_%tl204502204536%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204958204959%_ '1)))
                      (_%target204500204534%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204958204959%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204502204536%_))
                      (_%__match205017205018%_
                       _%e204471204600%_
                       _%hd204472204603%_
                       _%tl204473204605%_
                       _%e204474204608%_
                       _%hd204475204611%_
                       _%tl204476204613%_
                       _%__splice204958204959%_
                       _%target204500204534%_
                       _%tl204502204536%_)
                      (let () (declare (not safe)) (_%g204467204513%_)))))
              (let () (declare (not safe)) (_%g204467204513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl204476204613%_))
                                                  (let ((_%__splice204958204959%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl204476204613%_
                                                            '0))))
                                                    (let ((_%tl204502204536%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice204958204959%_
                                                              '1)))
                                                          (_%target204500204534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice204958204959%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204502204536%_))
                                                          (_%__match205017205018%_
                                                           _%e204471204600%_
                                                           _%hd204472204603%_
                                                           _%tl204473204605%_
                                                           _%e204474204608%_
                                                           _%hd204475204611%_
                                                           _%tl204476204613%_
                                                           _%__splice204958204959%_
                                                           _%target204500204534%_
                                                           _%tl204502204536%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204467204513%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204467204513%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204476204613%_))
                                              (let ((_%__splice204958204959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl204476204613%_
                                                        '0))))
                                                (let ((_%tl204502204536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204958204959%_
                                                          '1)))
                                                      (_%target204500204534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204958204959%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204502204536%_))
                                                      (_%__match205017205018%_
                                                       _%e204471204600%_
                                                       _%hd204472204603%_
                                                       _%tl204473204605%_
                                                       _%e204474204608%_
                                                       _%hd204475204611%_
                                                       _%tl204476204613%_
                                                       _%__splice204958204959%_
                                                       _%target204500204534%_
                                                       _%tl204502204536%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204467204513%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204467204513%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204476204613%_))
                                      (let ((_%__splice204958204959%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl204476204613%_
                                                '0))))
                                        (let ((_%tl204502204536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204958204959%_
                                                  '1)))
                                              (_%target204500204534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204958204959%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204502204536%_))
                                              (_%__match205017205018%_
                                               _%e204471204600%_
                                               _%hd204472204603%_
                                               _%tl204473204605%_
                                               _%e204474204608%_
                                               _%hd204475204611%_
                                               _%tl204476204613%_
                                               _%__splice204958204959%_
                                               _%target204500204534%_
                                               _%tl204502204536%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g204467204513%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204467204513%_))))))
                          (let () (declare (not safe)) (_%g204467204513%_)))))
                  (let () (declare (not safe)) (_%g204467204513%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self204425%_ _%ctx204426%_ _%stx204427%_ _%args204428%_)
        (let ((_%self204431%_ _%self204425%_))
          (if (let ((__method205599
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self204431%_ 'check-arguments))))
                (if __method205599
                    (let ()
                      (declare (not safe))
                      (__method205599
                       _%self204431%_
                       _%ctx204426%_
                       _%stx204427%_
                       _%args204428%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self204431%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature204441%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self204431%_ '2 '#f '#f)))
                     (_%signature204443%_ _%signature204441%_)
                     (_%$e204453%_
                      (if _%signature204443%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature204443%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e204453%_
                    ((lambda (_%unchecked204456%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked204456%_))
                           (let ((__tmp205621
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked204456%_
                                                          '()))
                                              (map (lambda (_%g204457204459%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx204426%_
                                                        _%g204457204459%_)))
                                                   _%args204428%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp205621
                              _%stx204427%_
                              _%ctx204426%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx204426%_ _%stx204427%_))))
                     _%$e204453%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx204426%_ _%stx204427%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx204426%_ _%stx204427%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass204883 __method-table204884)
        (let ((__check-arguments204885
               (let ((__tmp205622
                      (lambda ()
                        (let ((__method204886
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table204884
                                  'check-arguments
                                  '#f))))
                          (if __method204886
                              __method204886
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp205622))))
          (lambda (_%self204425%_ _%ctx204426%_ _%stx204427%_ _%args204428%_)
            (let ((_%self204431%_ _%self204425%_))
              (if ((force __check-arguments204885)
                   _%self204431%_
                   _%ctx204426%_
                   _%stx204427%_
                   _%args204428%_)
                  (let* ((_%signature204441%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self204431%_
                             '2
                             '#f
                             '#f)))
                         (_%signature204443%_ _%signature204441%_)
                         (_%$e204453%_
                          (if _%signature204443%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature204443%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e204453%_
                        ((lambda (_%unchecked204456%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked204456%_))
                               (let ((__tmp205623
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked204456%_
                                                              '()))
                                                  (map (lambda (_%g204457204459%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx204426%_
                                                            _%g204457204459%_)))
                                                       _%args204428%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp205623
                                  _%stx204427%_
                                  _%ctx204426%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx204426%_
                                  _%stx204427%_))))
                         _%$e204453%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx204426%_ _%stx204427%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx204426%_ _%stx204427%_))))))))
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
      (lambda (_%self204176%_ _%ctx204177%_ _%stx204178%_ _%args204179%_)
        (let* ((_%self204182%_ _%self204176%_)
               (_%signature204191204193%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self204182%_ '2 '#f '#f))))
          (if _%signature204191204193%_
              (let* ((_%signature204196%_ _%signature204191204193%_)
                     (_%argument-types204197204199%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature204196%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types204197204199%_
                    (let* ((_%argument-types204202%_
                            _%argument-types204197204199%_)
                           (_%argument-types204207%_
                            (let ((__tmp205624
                                   (lambda (_%t204205%_)
                                     (if _%t204205%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx204178%_
                                            _%t204205%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp205624
                               _%argument-types204202%_))))
                      (let _%loop204209%_ ((_%rest-args204211%_ _%args204179%_)
                                           (_%rest-types204212%_
                                            _%argument-types204207%_)
                                           (_%result204213%_ '#t))
                        (let* ((_%rest-args204214204222%_ _%rest-args204211%_)
                               (_%else204216204230%_
                                (lambda () _%result204213%_))
                               (_%K204218204291%_
                                (lambda (_%rest-args204233%_ _%arg204234%_)
                                  (let* ((_%rest-types204235204246%_
                                          _%rest-types204212%_)
                                         (_%E204239204250%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types204235204246%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K204242204279%_
                                           (lambda (_%rest-types204276%_
                                                    _%type204277%_)
                                             (_%loop204209%_
                                              _%rest-args204233%_
                                              _%rest-types204276%_
                                              (if (gxc#check-expression-type!
                                                   _%stx204178%_
                                                   _%arg204234%_
                                                   _%type204277%_)
                                                  _%result204213%_
                                                  '#f))))
                                          (_%K204241204270%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx204178%_
                                                _%argument-types204207%_))))
                                          (_%K204240204260%_
                                           (lambda (_%tail-type204254%_)
                                             (if (let ((__tmp205625
                                                        (lambda (_%g204255204257%_)
                                                          (gxc#check-expression-type!
                                                           _%stx204178%_
                                                           _%g204255204257%_
                                                           _%tail-type204254%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp205625
                                                    _%rest-args204233%_))
                                                 _%result204213%_
                                                 '#f))))
                                      (let ((_%try-match204237204273%_
                                             (lambda ()
                                               (if (null? _%rest-types204235204246%_)
                                                   (_%K204241204270%_)
                                                   (let ((_%tail-type204263%_
                                                          _%rest-types204235204246%_))
                                                     (_%K204240204260%_
                                                      _%tail-type204263%_))))))
                                        (if (pair? _%rest-types204235204246%_)
                                            (let ((_%tl204244204284%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types204235204246%_)))
                                                  (_%hd204243204282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types204235204246%_))))
                                              (let ((_%type204287%_
                                                     _%hd204243204282%_)
                                                    (_%rest-types204289%_
                                                     _%tl204244204284%_))
                                                (_%K204242204279%_
                                                 _%rest-types204289%_
                                                 _%type204287%_)))
                                            (_%try-match204237204273%_))))))))
                          (if (pair? _%rest-args204214204222%_)
                              (let ((_%hd204219204294%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args204214204222%_)))
                                    (_%tl204220204296%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args204214204222%_))))
                                (let* ((_%arg204299%_ _%hd204219204294%_)
                                       (_%rest-args204301%_
                                        _%tl204220204296%_))
                                  (_%K204218204291%_
                                   _%rest-args204301%_
                                   _%arg204299%_)))
                              (_%else204216204230%_)))))
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
      (lambda (_%self203987%_ _%ctx203988%_ _%stx203989%_ _%args203990%_)
        (let* ((_%self203993%_ _%self203987%_)
               (_%g204003204013%_
                (lambda (_%g204004204010%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204004204010%_))))
               (_%g204002204051%_
                (lambda (_%g204004204016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204004204016%_))
                      (let ((_%e204006204018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204004204016%_))))
                        (let ((_%hd204007204021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204006204018%_)))
                              (_%tl204008204023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204006204018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204008204023%_))
                              ((lambda (_%L204026%_)
                                 (let* ((_%klass204038%_
                                         (let ((__tmp205626
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203993%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx203989%_
                                            __tmp205626)))
                                        (_%object204040%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx203988%_
                                            _%L204026%_)))
                                        (_%instance?204045%_
                                         (let ((_%$e204042%_
                                                (gxc#expression-type?
                                                 _%object204040%_
                                                 _%klass204038%_)))
                                           (if _%$e204042%_
                                               _%$e204042%_
                                               (gxc#expression-type?
                                                _%L204026%_
                                                _%klass204038%_)))))
                                   (if _%instance?204045%_
                                       (let ((__tmp205627
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object204040%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L204026%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object204040%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205627
                                          _%stx203989%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx203988%_
                                          _%stx203989%_)))))
                               _%hd204007204021%_)
                              (_%g204003204013%_ _%g204004204016%_))))
                      (_%g204003204013%_ _%g204004204016%_)))))
          (_%g204002204051%_ _%args203990%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self203783%_ _%ctx203784%_ _%stx203785%_ _%args203786%_)
        (let* ((_%self203789%_ _%self203783%_)
               (_%g203799203809%_
                (lambda (_%g203800203806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203800203806%_))))
               (_%g203798203862%_
                (lambda (_%g203800203812%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203800203812%_))
                      (let ((_%e203802203814%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203800203812%_))))
                        (let ((_%hd203803203817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203802203814%_)))
                              (_%tl203804203819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203802203814%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203804203819%_))
                              ((lambda (_%L203822%_)
                                 (let* ((_%klass203834%_
                                         (let ((__tmp205628
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203789%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx203785%_
                                            __tmp205628)))
                                        (_%object203836%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx203784%_
                                            _%L203822%_)))
                                        (_%instance?203841%_
                                         (let ((_%$e203838%_
                                                (gxc#expression-type?
                                                 _%object203836%_
                                                 _%klass203834%_)))
                                           (if _%$e203838%_
                                               _%$e203838%_
                                               (gxc#expression-type?
                                                _%L203822%_
                                                _%klass203834%_))))
                                        (_%klass203844%_ _%klass203834%_))
                                   (if _%instance?203841%_
                                       (let ((__tmp205629
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object203836%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L203822%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object203836%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205629
                                          _%stx203785%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203844%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp205630
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass203844%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object203836%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp205630
                                              _%stx203785%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass203844%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp205631
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass203844%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object203836%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp205631
                                                  _%stx203785%_))
                                               (let ((__tmp205632
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self203789%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object203836%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp205632
                                                  _%stx203785%_)))))))
                               _%hd203803203817%_)
                              (_%g203799203809%_ _%g203800203812%_))))
                      (_%g203799203809%_ _%g203800203812%_)))))
          (_%g203798203862%_ _%args203786%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx203446%_)
        (let* ((_%__stx205027205028%_ _%stx203446%_)
               (_%g203451203492%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205027205028%_)))))
          (let ((_%__kont205029205030%_ (lambda () '#t))
                (_%__kont205031205032%_ (lambda () '#t))
                (_%__kont205033205034%_
                 (lambda (_%L203560%_ _%L203561%_)
                   (let ((_%rator-type203582203584%_
                          (let ((__tmp205633
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L203561%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp205633))))
                     (if _%rator-type203582203584%_
                         (let* ((_%rator-type203587%_
                                 _%rator-type203582203584%_)
                                (_%rator-signature203588203590%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type203587%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type203587%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature203588203590%_
                               (let* ((_%rator-signature203593%_
                                       _%rator-signature203588203590%_)
                                      (_%rator-effect203594203596%_
                                       (if _%rator-signature203593%_
                                           (##direct-structure-ref
                                            _%rator-signature203593%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect203594203596%_
                                     (let ((_%rator-effect203599%_
                                            _%rator-effect203594203596%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect203599%_)
                                               (equal? '(alloc)
                                                       _%rator-effect203599%_))
                                           (let ((__tmp205634
                                                  (let ((__tmp205635
                                                         (lambda (_%g203604203607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g203605203609%_)
                   (cons _%g203604203607%_ _%g203605203609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp205635
                                                     '()
                                                     _%L203560%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp205634))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont205037205038%_ (lambda () '#f)))
            (let ((_%__match205116205117%_
                   (lambda (_%e203467203504%_
                            _%hd203468203507%_
                            _%tl203469203509%_
                            _%e203470203512%_
                            _%hd203471203515%_
                            _%tl203472203517%_
                            _%e203473203520%_
                            _%hd203474203523%_
                            _%tl203475203525%_
                            _%e203476203528%_
                            _%hd203477203531%_
                            _%tl203478203533%_
                            _%__splice205035205036%_
                            _%target203479203536%_
                            _%tl203481203538%_)
                     (letrec ((_%loop203482203541%_
                               (lambda (_%hd203480203544%_
                                        _%rand203486203546%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203480203544%_))
                                     (let ((_%e203483203549%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd203480203544%_))))
                                       (let ((_%lp-tl203485203554%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203483203549%_)))
                                             (_%lp-hd203484203552%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203483203549%_))))
                                         (_%loop203482203541%_
                                          _%lp-tl203485203554%_
                                          (cons _%lp-hd203484203552%_
                                                _%rand203486203546%_))))
                                     (let ((_%rand203487203557%_
                                            (reverse _%rand203486203546%_)))
                                       (_%__kont205033205034%_
                                        _%rand203487203557%_
                                        _%hd203477203531%_))))))
                       (_%loop203482203541%_ _%target203479203536%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205027205028%_))
                  (let ((_%e203453203640%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205027205028%_))))
                    (let ((_%tl203455203645%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203453203640%_)))
                          (_%hd203454203643%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203453203640%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd203454203643%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd203454203643%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203455203645%_))
                                  (let ((_%e203456203648%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203455203645%_))))
                                    (let ((_%tl203458203653%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203456203648%_)))
                                          (_%hd203457203651%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203456203648%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203458203653%_))
                                          (_%__kont205029205030%_)
                                          (_%__kont205037205038%_))))
                                  (_%__kont205037205038%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd203454203643%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203455203645%_))
                                      (let ((_%e203462203625%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203455203645%_))))
                                        (let ((_%tl203464203630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203462203625%_)))
                                              (_%hd203463203628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203462203625%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203464203630%_))
                                              (_%__kont205031205032%_)
                                              (_%__kont205037205038%_))))
                                      (_%__kont205037205038%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd203454203643%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203455203645%_))
                                          (let ((_%e203470203512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203455203645%_))))
                                            (let ((_%tl203472203517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203470203512%_)))
                                                  (_%hd203471203515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203470203512%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203471203515%_))
                                                  (let ((_%e203473203520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203471203515%_))))
                                                    (let ((_%tl203475203525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203473203520%_)))
                                                          (_%hd203474203523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203473203520%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd203474203523%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd203474203523%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203475203525%_))
                          (let ((_%e203476203528%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203475203525%_))))
                            (let ((_%tl203478203533%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203476203528%_)))
                                  (_%hd203477203531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203476203528%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203478203533%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203472203517%_))
                                      (let ((_%__splice205035205036%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl203472203517%_
                                                '0))))
                                        (let ((_%tl203481203538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205035205036%_
                                                  '1)))
                                              (_%target203479203536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205035205036%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203481203538%_))
                                              (_%__match205116205117%_
                                               _%e203453203640%_
                                               _%hd203454203643%_
                                               _%tl203455203645%_
                                               _%e203470203512%_
                                               _%hd203471203515%_
                                               _%tl203472203517%_
                                               _%e203473203520%_
                                               _%hd203474203523%_
                                               _%tl203475203525%_
                                               _%e203476203528%_
                                               _%hd203477203531%_
                                               _%tl203478203533%_
                                               _%__splice205035205036%_
                                               _%target203479203536%_
                                               _%tl203481203538%_)
                                              (_%__kont205037205038%_))))
                                      (_%__kont205037205038%_))
                                  (_%__kont205037205038%_))))
                          (_%__kont205037205038%_))
                      (_%__kont205037205038%_))
                  (_%__kont205037205038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205037205038%_))))
                                          (_%__kont205037205038%_))
                                      (_%__kont205037205038%_))))
                          (_%__kont205037205038%_))))
                  (_%__kont205037205038%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx203441%_ _%klass203442%_)
        (let ((_%expr-type203444%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx203441%_))))
          (if _%expr-type203444%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type203444%_ _%klass203442%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx203419%_ _%expr203420%_ _%type203421%_)
        (if (not _%type203421%_)
            '#f
            (let ((_%$e203424%_
                   (eq? (##structure-ref _%type203421%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e203424%_
                  _%$e203424%_
                  (let ((_%expr-type203428%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr203420%_))))
                    (if (not _%expr-type203428%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type203428%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e203432%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type203428%_
                                      'gxc#!abort::t))))
                              (if _%$e203432%_
                                  _%$e203432%_
                                  (let ((_%$e203435%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type203428%_
                                            _%type203421%_))))
                                    (if _%$e203435%_
                                        _%$e203435%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type203421%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type203421%_
                                                   _%expr-type203428%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx203419%_
                                                   _%expr203420%_
                                                   _%expr-type203428%_
                                                   _%type203421%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self203233%_ _%ctx203234%_ _%stx203235%_ _%args203236%_)
        (let* ((_%self203239%_ _%self203233%_)
               (_%klass203249%_
                (let ((__tmp205636
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self203239%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx203235%_ __tmp205636)))
               (_%fields203251%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass203249%_
                           '5
                           '#f
                           '#f))))
               (_%args203257%_
                (map (lambda (_%g203252203254%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx203234%_ _%g203252203254%_)))
                     _%args203236%_))
               (_%inline-make-object203259%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self203239%_
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
                           _%self203239%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields203251%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass203262%_ _%klass203249%_)
               (_%$e203276%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass203262%_ '6 '#f '#f))))
          (if _%$e203276%_
              ((lambda (_%ctor203279%_)
                 (let ((_%$obj203281%_
                        (let ((__tmp205637
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp205637)))
                       (_%ctor-impl203282%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass203262%_
                           _%ctor203279%_))))
                   (let ((__tmp205638
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj203281%_ '())
                                                  (cons _%inline-make-object203259%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl203282%_
                                                            (let ((__tmp205639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl203282%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj203281%_ '()))
                                             _%args203257%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp205639
                       _%stx203235%_
                       _%ctx203234%_))
                    (let ((_%$ctor203284%_
                           (let ((__tmp205640
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp205640))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor203284%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203239%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj203281%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor203279%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor203284%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor203284%_ '()))
                              (cons (cons '%#ref (cons _%$obj203281%_ '()))
                                    _%args203257%_)))
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
                             _%self203239%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor203279%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj203281%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp205638 _%stx203235%_))))
               _%$e203276%_)
              (let ((_%$e203286%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass203262%_
                        '10
                        '#f
                        '#f))))
                (if _%$e203286%_
                    ((lambda (_%metaclass203289%_)
                       (let* ((_%$obj203291%_
                               (let ((__tmp205641
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp205641)))
                              (_%metakons203293%_
                               (let ((__tmp205642
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx203235%_
                                         _%metaclass203289%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp205642
                                  'instance-init!)))
                              (__tmp205643
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj203291%_
                                                             '())
                                                       (cons _%inline-make-object203259%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons203293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp205644
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons203293%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self203239%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj203291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args203257%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp205644
                            _%stx203235%_
                            _%ctx203234%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self203239%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj203291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args203257%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj203291%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp205643 _%stx203235%_)))
                     _%$e203286%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass203262%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp205645
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args203257%_))))
                              (declare (not safe))
                              (##fx= __tmp205645 _%fields203251%_))
                            (let ((__tmp205646
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self203239%_
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
                                              _%self203239%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args203257%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp205646
                               _%stx203235%_))
                            (let ((__tmp205648
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self203239%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp205647
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass203262%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx203235%_
                               __tmp205648
                               __tmp205647)))
                        (let ((_%$obj203298%_
                               (let ((__tmp205649
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp205649))))
                          (let _%lp203300%_ ((_%rest203302%_ _%args203257%_)
                                             (_%initializers203303%_ '()))
                            (let* ((_%__stx205119205120%_ _%rest203302%_)
                                   (_%g203307203328%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx205119205120%_)))))
                              (let ((_%__kont205121205122%_
                                     (lambda (_%L203382%_
                                              _%L203383%_
                                              _%L203384%_)
                                       (let* ((_%slot203411%_
                                               (let ((__tmp205650
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L203384%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp205650)))
                                              (_%off203413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass203262%_
                                                  _%slot203411%_))))
                                         (if _%off203413%_
                                             (_%lp203300%_
                                              _%L203382%_
                                              (cons (cons _%off203413%_
                                                          _%L203383%_)
                                                    _%initializers203303%_))
                                             (let ((__tmp205651
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203239%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx203235%_
                                                __tmp205651
                                                _%slot203411%_))))))
                                    (_%__kont205123205124%_
                                     (lambda ()
                                       (let ((__tmp205652
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj203298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object203259%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp205655
                                     (cons (cons '%#ref
                                                 (cons _%$obj203298%_ '()))
                                           '()))
                                    (__tmp205653
                                     (let ((__tmp205654
                                            (lambda (_%i203342%_ _%r203343%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self203239%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i203342%_) '()))
                              (cons (cons '%#ref (cons _%$obj203298%_ '()))
                                    (cons (cdr _%i203342%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r203343%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp205654
                                        '()
                                        _%initializers203303%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp205655 __tmp205653)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205652
                                          _%stx203235%_))))
                                    (_%__kont205125205126%_
                                     (lambda ()
                                       (let ((__tmp205656
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj203298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object203259%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj203298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args203257%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj203298%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205656
                                          _%stx203235%_)))))
                                (let* ((_%g203305203345%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx205119205120%_))
                                              (_%__kont205123205124%_)
                                              (_%__kont205125205126%_))))
                                       (_%__match205156205157%_
                                        (lambda (_%e203312203350%_
                                                 _%hd203313203353%_
                                                 _%tl203314203355%_
                                                 _%e203315203358%_
                                                 _%hd203316203361%_
                                                 _%tl203317203363%_
                                                 _%e203318203366%_
                                                 _%hd203319203369%_
                                                 _%tl203320203371%_
                                                 _%e203321203374%_
                                                 _%hd203322203377%_
                                                 _%tl203323203379%_)
                                          (let ((_%L203382%_
                                                 _%tl203323203379%_)
                                                (_%L203383%_
                                                 _%hd203322203377%_)
                                                (_%L203384%_
                                                 _%hd203319203369%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L203384%_))
                                                (_%__kont205121205122%_
                                                 _%L203382%_
                                                 _%L203383%_
                                                 _%L203384%_)
                                                (_%__kont205125205126%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx205119205120%_))
                                      (let ((_%e203312203350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx205119205120%_))))
                                        (let ((_%tl203314203355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203312203350%_)))
                                              (_%hd203313203353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203312203350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203313203353%_))
                                              (let ((_%e203315203358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203313203353%_))))
                                                (let ((_%tl203317203363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203315203358%_)))
                                                      (_%hd203316203361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203315203358%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd203316203361%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd203316203361%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203317203363%_))
                      (let ((_%e203318203366%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203317203363%_))))
                        (let ((_%tl203320203371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203318203366%_)))
                              (_%hd203319203369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203318203366%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203320203371%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203314203355%_))
                                  (let ((_%e203321203374%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203314203355%_))))
                                    (let ((_%tl203323203379%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203321203374%_)))
                                          (_%hd203322203377%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203321203374%_))))
                                      (_%__match205156205157%_
                                       _%e203312203350%_
                                       _%hd203313203353%_
                                       _%tl203314203355%_
                                       _%e203315203358%_
                                       _%hd203316203361%_
                                       _%tl203317203363%_
                                       _%e203318203366%_
                                       _%hd203319203369%_
                                       _%tl203320203371%_
                                       _%e203321203374%_
                                       _%hd203322203377%_
                                       _%tl203323203379%_)))
                                  (_%__kont205125205126%_))
                              (_%__kont205125205126%_))))
                      (_%__kont205125205126%_))
                  (_%__kont205125205126%_))
              (_%__kont205125205126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205125205126%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203305203345%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self203016%_ _%ctx203017%_ _%stx203018%_ _%args203019%_)
        (let* ((_%self203022%_ _%self203016%_)
               (_%arguments-ok?203032%_
                (let ((__method205600
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self203022%_ 'check-arguments))))
                  (if __method205600
                      (let ()
                        (declare (not safe))
                        (__method205600
                         _%self203022%_
                         _%ctx203017%_
                         _%stx203018%_
                         _%args203019%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self203022%_
                                 'check-arguments))
                        '#!void))))
               (_%g203034203044%_
                (lambda (_%g203035203041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203035203041%_))))
               (_%g203033203108%_
                (lambda (_%g203035203047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203035203047%_))
                      (let ((_%e203037203049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203035203047%_))))
                        (let ((_%hd203038203052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203037203049%_)))
                              (_%tl203039203054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203037203049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203039203054%_))
                              ((lambda (_%L203057%_)
                                 (let* ((_%klass203070%_
                                         (let ((__tmp205657
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203022%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx203018%_
                                            __tmp205657)))
                                        (_%field203072%_
                                         (let ((__tmp205658
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self203022%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass203070%_
                                            __tmp205658)))
                                        (_%object203074%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx203017%_
                                            _%L203057%_)))
                                        (_%klass203077%_ _%klass203070%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass203077%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp205659
                                              (cons (if (or _%arguments-ok?203032%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self203022%_
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
                                 _%self203022%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field203072%_ '()))
                        (cons _%object203074%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp205659
                                          _%stx203018%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203077%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp205660
                                                  (cons (if (or _%arguments-ok?203032%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203022%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203022%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field203072%_ '()))
                            (cons _%object203074%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp205660
                                              _%stx203018%_))
                                           (let ((_%$e203096%_
                                                  (let ((__tmp205661
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self203022%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass203077%_
                                                     __tmp205661))))
                                             (if _%$e203096%_
                                                 ((lambda (_%klass203099%_)
                                                    (let ((__tmp205662
                                                           (cons (if (or _%arguments-ok?203032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203022%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self203022%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field203072%_ '()))
                                     (cons _%object203074%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp205662 _%stx203018%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e203096%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self203022%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp205663
                                                            (let ((_%$obj203105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp205664
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp205664))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj203105%_ '())
                                              (cons _%object203074%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass203077%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj203105%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203022%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field203072%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj203105%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?203032%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj203105%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self203022%_
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
                                                             _%self203022%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj203105%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self203022%_
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
               (gxc#xform-wrap-source __tmp205663 _%stx203018%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp205665
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object203074%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self203022%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp205665 _%stx203018%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd203038203052%_)
                              (_%g203034203044%_ _%g203035203047%_))))
                      (_%g203034203044%_ _%g203035203047%_)))))
          (_%g203033203108%_ _%args203019%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass204887 __method-table204888)
        (let ((__check-arguments204889
               (let ((__tmp205666
                      (lambda ()
                        (let ((__method204890
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table204888
                                  'check-arguments
                                  '#f))))
                          (if __method204890
                              __method204890
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp205666)))
              (__slot204891
               (let ((__slot204892
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass204887 'slot))))
                 (if __slot204892
                     __slot204892
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self203016%_ _%ctx203017%_ _%stx203018%_ _%args203019%_)
            (let* ((_%self203022%_ _%self203016%_)
                   (_%arguments-ok?203032%_
                    ((force __check-arguments204889)
                     _%self203022%_
                     _%ctx203017%_
                     _%stx203018%_
                     _%args203019%_))
                   (_%g203034203044%_
                    (lambda (_%g203035203041%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g203035203041%_))))
                   (_%g203033203108%_
                    (lambda (_%g203035203047%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g203035203047%_))
                          (let ((_%e203037203049%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g203035203047%_))))
                            (let ((_%hd203038203052%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203037203049%_)))
                                  (_%tl203039203054%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203037203049%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203039203054%_))
                                  ((lambda (_%L203057%_)
                                     (let* ((_%klass203070%_
                                             (let ((__tmp205667
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203022%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx203018%_
                                                __tmp205667)))
                                            (_%field203072%_
                                             (let ((__tmp205668
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self203022%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass203070%_
                                                __tmp205668)))
                                            (_%object203074%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx203017%_
                                                _%L203057%_)))
                                            (_%klass203077%_ _%klass203070%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass203077%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp205669
                                                  (cons (if (or _%arguments-ok?203032%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self203022%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203022%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field203072%_ '()))
                            (cons _%object203074%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp205669
                                              _%stx203018%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass203077%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp205670
                                                      (cons (if (or _%arguments-ok?203032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self203022%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self203022%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field203072%_ '()))
                                (cons _%object203074%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp205670
                                                  _%stx203018%_))
                                               (let ((_%$e203096%_
                                                      (let ((__tmp205671
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self203022%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass203077%_ __tmp205671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e203096%_
                                                     ((lambda (_%klass203099%_)
                                                        (let ((__tmp205672
                                                               (cons (if (or _%arguments-ok?203032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self203022%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self203022%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field203072%_ '()))
                                         (cons _%object203074%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp205672 _%stx203018%_)))
              _%$e203096%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self203022%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp205673
                                                                (let ((_%$obj203105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp205674
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp205674))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj203105%_ '())
                                                  (cons _%object203074%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass203077%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj203105%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self203022%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field203072%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj203105%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?203032%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj203105%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self203022%_
                               __slot204891
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
                        (##unchecked-structure-ref _%self203022%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj203105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203022%_
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
                   (gxc#xform-wrap-source __tmp205673 _%stx203018%_))
                 (let ((__tmp205675
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object203074%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self203022%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp205675 _%stx203018%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd203038203052%_)
                                  (_%g203034203044%_ _%g203035203047%_))))
                          (_%g203034203044%_ _%g203035203047%_)))))
              (_%g203033203108%_ _%args203019%_))))))
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
      (lambda (_%self202780%_ _%ctx202781%_ _%stx202782%_ _%args202783%_)
        (let* ((_%self202786%_ _%self202780%_)
               (_%arguments-ok?202796%_
                (let ((__method205601
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self202786%_ 'check-arguments))))
                  (if __method205601
                      (let ()
                        (declare (not safe))
                        (__method205601
                         _%self202786%_
                         _%ctx202781%_
                         _%stx202782%_
                         _%args202783%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self202786%_
                                 'check-arguments))
                        '#!void))))
               (_%g202798202812%_
                (lambda (_%g202799202809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202799202809%_))))
               (_%g202797202891%_
                (lambda (_%g202799202815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202799202815%_))
                      (let ((_%e202802202817%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202799202815%_))))
                        (let ((_%hd202803202820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202802202817%_)))
                              (_%tl202804202822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202802202817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202804202822%_))
                              (let ((_%e202805202825%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202804202822%_))))
                                (let ((_%hd202806202828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202805202825%_)))
                                      (_%tl202807202830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202805202825%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202807202830%_))
                                      ((lambda (_%L202833%_ _%L202834%_)
                                         (let* ((_%klass202850%_
                                                 (let ((__tmp205676
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self202786%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx202782%_
                                                    __tmp205676)))
                                                (_%field202852%_
                                                 (let ((__tmp205677
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self202786%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass202850%_
                                                    __tmp205677)))
                                                (_%object202854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx202781%_
                                                    _%L202834%_)))
                                                (_%value202856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx202781%_
                                                    _%L202833%_)))
                                                (_%klass202859%_
                                                 _%klass202850%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass202859%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp205678
                                                      (cons (if (or _%arguments-ok?202796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self202786%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self202786%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field202852%_ '()))
                                (cons _%object202854%_
                                      (cons _%value202856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp205678
                                                  _%stx202782%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass202859%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp205679
                                                          (cons (if (or _%arguments-ok?202796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self202786%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self202786%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field202852%_ '()))
                                    (cons _%object202854%_
                                          (cons _%value202856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp205679
                                                      _%stx202782%_))
                                                   (let ((_%$e202879%_
                                                          (let ((__tmp205680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self202786%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass202859%_
                     __tmp205680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e202879%_
                                                         ((lambda (_%klass202882%_)
                                                            (let ((__tmp205681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?202796%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self202786%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self202786%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field202852%_ '()))
                                             (cons _%object202854%_
                                                   (cons _%value202856%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp205681 _%stx202782%_)))
                  _%$e202879%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self202786%_ '4 '#f '#f))
                     (let ((__tmp205682
                            (let ((_%$obj202888%_
                                   (let ((__tmp205683
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp205683))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj202888%_ '())
                                                      (cons _%object202854%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass202859%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj202888%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self202786%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field202852%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj202888%_
                                                              '()))
                                                  (cons _%value202856%_
                                                        '())))))
                          (cons (if _%arguments-ok?202796%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj202888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self202786%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value202856%_ '())))))
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
                             _%self202786%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj202888%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self202786%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value202856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp205682 _%stx202782%_))
                     (let ((__tmp205684
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object202854%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self202786%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value202856%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp205684
                        _%stx202782%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd202806202828%_
                                       _%hd202803202820%_)
                                      (_%g202798202812%_ _%g202799202815%_))))
                              (_%g202798202812%_ _%g202799202815%_))))
                      (_%g202798202812%_ _%g202799202815%_)))))
          (_%g202797202891%_ _%args202783%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass204893 __method-table204894)
        (let ((__check-arguments204895
               (let ((__tmp205685
                      (lambda ()
                        (let ((__method204896
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table204894
                                  'check-arguments
                                  '#f))))
                          (if __method204896
                              __method204896
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp205685))))
          (lambda (_%self202780%_ _%ctx202781%_ _%stx202782%_ _%args202783%_)
            (let* ((_%self202786%_ _%self202780%_)
                   (_%arguments-ok?202796%_
                    ((force __check-arguments204895)
                     _%self202786%_
                     _%ctx202781%_
                     _%stx202782%_
                     _%args202783%_))
                   (_%g202798202812%_
                    (lambda (_%g202799202809%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g202799202809%_))))
                   (_%g202797202891%_
                    (lambda (_%g202799202815%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g202799202815%_))
                          (let ((_%e202802202817%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g202799202815%_))))
                            (let ((_%hd202803202820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202802202817%_)))
                                  (_%tl202804202822%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202802202817%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202804202822%_))
                                  (let ((_%e202805202825%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202804202822%_))))
                                    (let ((_%hd202806202828%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202805202825%_)))
                                          (_%tl202807202830%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202805202825%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202807202830%_))
                                          ((lambda (_%L202833%_ _%L202834%_)
                                             (let* ((_%klass202850%_
                                                     (let ((__tmp205686
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self202786%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx202782%_
                                                        __tmp205686)))
                                                    (_%field202852%_
                                                     (let ((__tmp205687
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self202786%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass202850%_
                                                        __tmp205687)))
                                                    (_%object202854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx202781%_
                                                        _%L202834%_)))
                                                    (_%value202856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx202781%_
                                                        _%L202833%_)))
                                                    (_%klass202859%_
                                                     _%klass202850%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass202859%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp205688
                                                          (cons (if (or _%arguments-ok?202796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self202786%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self202786%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field202852%_ '()))
                                    (cons _%object202854%_
                                          (cons _%value202856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp205688
                                                      _%stx202782%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass202859%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp205689
                                                              (cons (if (or _%arguments-ok?202796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self202786%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self202786%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field202852%_ '()))
                                        (cons _%object202854%_
                                              (cons _%value202856%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp205689 _%stx202782%_))
               (let ((_%$e202879%_
                      (let ((__tmp205690
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self202786%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass202859%_
                         __tmp205690))))
                 (if _%$e202879%_
                     ((lambda (_%klass202882%_)
                        (let ((__tmp205691
                               (cons (if (or _%arguments-ok?202796%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self202786%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self202786%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field202852%_
                                                             '()))
                                                 (cons _%object202854%_
                                                       (cons _%value202856%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp205691 _%stx202782%_)))
                      _%$e202879%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self202786%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp205692
                                (let ((_%$obj202888%_
                                       (let ((__tmp205693
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp205693))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj202888%_
                                                                '())
                                                          (cons _%object202854%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass202859%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj202888%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self202786%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field202852%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj202888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value202856%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?202796%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj202888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self202786%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value202856%_ '())))))
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
                                 _%self202786%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj202888%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self202786%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value202856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp205692 _%stx202782%_))
                         (let ((__tmp205694
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object202854%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self202786%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value202856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp205694
                            _%stx202782%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd202806202828%_
                                           _%hd202803202820%_)
                                          (_%g202798202812%_
                                           _%g202799202815%_))))
                                  (_%g202798202812%_ _%g202799202815%_))))
                          (_%g202798202812%_ _%g202799202815%_)))))
              (_%g202797202891%_ _%args202783%_))))))
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
      (lambda (_%self202595%_ _%ctx202596%_ _%stx202597%_ _%args202598%_)
        (let* ((_%self202601%_ _%self202595%_)
               (_%self202610202620%_ _%self202601%_)
               (_%E202612202624%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self202610202620%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K202613202634%_
                (lambda (_%inline202627%_ _%dispatch202628%_ _%arity202629%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self202601%_
                         _%args202598%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx202597%_
                         _%arity202629%_)))
                  (if _%inline202627%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp205695 (_%inline202627%_ _%stx202597%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp205695
                           _%stx202597%_
                           _%ctx202596%_)))
                      (if (and _%dispatch202628%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch202628%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch202628%_))
                            (let ((__tmp205696
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch202628%_
                                                           '()))
                                               _%args202598%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp205696
                               _%stx202597%_
                               _%ctx202596%_)))
                          (gxc#!procedure::optimize-call
                           _%self202601%_
                           _%ctx202596%_
                           _%stx202597%_
                           _%args202598%_)))))
               (_%e202614202637%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202610202620%_ '1 '#f '#f)))
               (_%e202615202640%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202610202620%_ '2 '#f '#f)))
               (_%e202616202643%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202610202620%_ '3 '#f '#f)))
               (_%arity202646%_ _%e202616202643%_)
               (_%e202617202648%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202610202620%_ '4 '#f '#f)))
               (_%dispatch202651%_ _%e202617202648%_)
               (_%e202618202653%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202610202620%_ '5 '#f '#f)))
               (_%inline202656%_ _%e202618202653%_))
          (_%K202613202634%_
           _%inline202656%_
           _%dispatch202651%_
           _%arity202646%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self202447%_ _%ctx202448%_ _%stx202449%_ _%args202450%_)
        (let* ((_%self202453%_ _%self202447%_)
               (_%$e202467%_
                (let ((__tmp205698
                       (lambda (_%g202462202464%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g202462202464%_
                            _%args202450%_))))
                      (__tmp205697
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self202453%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp205698 __tmp205697))))
          (if _%$e202467%_
              ((lambda (_%clause202470%_)
                 (let ((__method205602
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause202470%_ 'optimize-call))))
                   (if __method205602
                       (let ()
                         (declare (not safe))
                         (__method205602
                          _%clause202470%_
                          _%ctx202448%_
                          _%stx202449%_
                          _%args202450%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause202470%_
                                  'optimize-call))
                         '#!void))))
               _%$e202467%_)
              (let ((__tmp205699
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self202453%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx202449%_
                 __tmp205699))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self202187%_ _%ctx202188%_ _%stx202189%_ _%args202190%_)
        (let* ((_%self202193%_ _%self202187%_)
               (_%self202202202211%_ _%self202193%_)
               (_%E202204202215%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self202202202211%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K202205202306%_
                (lambda (_%dispatch202218%_ _%table202219%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch202218%_))
                      (let* ((_%g202220202230%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch202218%_)))
                             (_%else202222202238%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch202218%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx202188%_
                                   _%stx202189%_))))
                             (_%K202224202287%_
                              (lambda (_%main202241%_ _%keys202242%_)
                                (let ((_g205700_
                                       (gxc#!kw-lambda-split-args
                                        _%stx202189%_
                                        _%args202190%_)))
                                  (begin
                                    (let ((_g205701_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g205700_)
                                                 (##values-length _g205700_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g205701_ 2)))
                                          (error "Context expects 2 values"
                                                 _g205701_)))
                                    (let ((_%pargs202244%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205700_ 0)))
                                          (_%kwargs202245%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205700_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main202241%_))
                                        (if _%table202219%_
                                            (let ((_%xargs202253%_
                                                   (map (lambda (_%key202247%_)
                                                          (let ((_%$e202249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key202247%_ _%kwargs202245%_))))
                    (if _%$e202249%_ _%$e202249%_ '(%#ref absent-value))))
                _%keys202242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw202255%_)
                                                 (if (memq (car _%kw202255%_)
                                                           _%keys202242%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx202189%_
                                                        _%keys202242%_
                                                        _%kw202255%_))))
                                               _%kwargs202245%_)
                                              (let ((__tmp205702
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main202241%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs202244%_
                                  _%xargs202253%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp205702
                                                 _%stx202189%_
                                                 _%ctx202188%_)))
                                            (let* ((_%kwt202257%_
                                                    (let ((__tmp205703
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp205703)))
                                                   (_%kwvars202261%_
                                                    (map (lambda (_%_202259%_)
                                                           (let ((__tmp205704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp205704)))
                 _%kwargs202245%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind202266%_
                                                    (map (lambda (_%kw202263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202264%_)
                   (cons (cons _%kwvar202264%_ '())
                         (cons (cdr _%kw202263%_) '())))
                 _%kwargs202245%_
                 _%kwvars202261%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset202271%_
                                                    (map (lambda (_%kw202268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202269%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt202257%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw202268%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar202269%_
                                                             '()))
                                                 '()))))))
                 _%kwargs202245%_
                 _%kwvars202261%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs202276%_
                                                    (map (lambda (_%kw202273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar202274%_)
                   (cons (car _%kw202273%_)
                         (cons '%#ref (cons _%kwvar202274%_ '()))))
                 _%kwargs202245%_
                 _%kwvars202261%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs202284%_
                                                    (map (lambda (_%key202278%_)
                                                           (let ((_%$e202280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key202278%_ _%xkwargs202276%_))))
                     (if _%$e202280%_ _%$e202280%_ '(%#ref absent-value))))
                 _%keys202242%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp205705
                                                    (cons '%#let-values
                                                          (cons _%kwbind202266%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt202257%_ '())
                                                      (cons (let ((__tmp205706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs202245%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp205706 _%stx202189%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp205707
                                                             (cons (let ((__tmp205708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main202241%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt202257%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs202244%_
                                                       _%xargs202284%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp205708 _%stx202189%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp205707 _%kwset202271%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp205705
                                               _%stx202189%_
                                               _%ctx202188%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g202220202230%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e202225202290%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202220202230%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e202226202293%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202220202230%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e202227202296%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202220202230%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys202299%_ _%e202227202296%_)
                                   (_%e202228202301%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g202220202230%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main202304%_ _%e202228202301%_))
                              (_%K202224202287%_
                               _%main202304%_
                               _%keys202299%_))
                            (_%else202222202238%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx202188%_ _%stx202189%_)))))
               (_%e202206202309%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202202202211%_ '1 '#f '#f)))
               (_%e202207202312%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202202202211%_ '2 '#f '#f)))
               (_%e202208202315%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202202202211%_ '3 '#f '#f)))
               (_%table202318%_ _%e202208202315%_)
               (_%e202209202320%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202202202211%_ '4 '#f '#f)))
               (_%dispatch202323%_ _%e202209202320%_))
          (_%K202205202306%_ _%dispatch202323%_ _%table202318%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx201800%_ _%args201801%_)
        (let _%lp201803%_ ((_%rest201805%_ _%args201801%_)
                           (_%pargs201806%_ '())
                           (_%kwargs201807%_ '()))
          (let* ((_%__stx205161205162%_ _%rest201805%_)
                 (_%g201813201865%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx205161205162%_)))))
            (let ((_%__kont205163205164%_
                   (lambda (_%L202044%_ _%L202045%_)
                     (_%lp201803%_
                      _%L202044%_
                      (cons _%L202045%_ _%pargs201806%_)
                      _%kwargs201807%_)))
                  (_%__kont205165205166%_
                   (lambda (_%L201990%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L201990%_ _%pargs201806%_))
                             (reverse _%kwargs201807%_))))
                  (_%__kont205167205168%_
                   (lambda (_%L201937%_ _%L201938%_ _%L201939%_)
                     (let ((_%kw201956%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L201939%_))))
                       (if (assq _%kw201956%_ _%kwargs201807%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx201800%_
                              _%kw201956%_))
                           (_%lp201803%_
                            _%L201937%_
                            _%pargs201806%_
                            (cons (cons _%kw201956%_ _%L201938%_)
                                  _%kwargs201807%_))))))
                  (_%__kont205169205170%_
                   (lambda (_%L201885%_ _%L201886%_)
                     (_%lp201803%_
                      _%L201885%_
                      (cons _%L201886%_ _%pargs201806%_)
                      _%kwargs201807%_)))
                  (_%__kont205171205172%_
                   (lambda ()
                     (values (reverse _%pargs201806%_)
                             (reverse _%kwargs201807%_)))))
              (let ((_%__match205268205269%_
                     (lambda (_%e201844201905%_
                              _%hd201845201908%_
                              _%tl201846201910%_
                              _%e201847201913%_
                              _%hd201848201916%_
                              _%tl201849201918%_
                              _%e201850201921%_
                              _%hd201851201924%_
                              _%tl201852201926%_
                              _%e201853201929%_
                              _%hd201854201932%_
                              _%tl201855201934%_)
                       (let ((_%L201937%_ _%tl201855201934%_)
                             (_%L201938%_ _%hd201854201932%_)
                             (_%L201939%_ _%hd201851201924%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L201939%_))
                             (_%__kont205167205168%_
                              _%L201937%_
                              _%L201938%_
                              _%L201939%_)
                             (_%__kont205169205170%_
                              _%tl201846201910%_
                              _%hd201845201908%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx205161205162%_))
                    (let ((_%e201817202009%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx205161205162%_))))
                      (let ((_%tl201819202014%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201817202009%_)))
                            (_%hd201818202012%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201817202009%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd201818202012%_))
                            (let ((_%e201820202017%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd201818202012%_))))
                              (let ((_%tl201822202022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201820202017%_)))
                                    (_%hd201821202020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201820202017%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201821202020%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd201821202020%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201822202022%_))
                                            (let ((_%e201823202025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201822202022%_))))
                                              (let ((_%tl201825202030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201823202025%_)))
                                                    (_%hd201824202028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201823202025%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd201824202028%_))
                                                    (let ((_%e201826202033%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd201824202028%_))))
                                                      (if (equal? _%e201826202033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201825202030%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201819202014%_))
                          (let ((_%e201827202036%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201819202014%_))))
                            (let ((_%tl201829202041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201827202036%_)))
                                  (_%hd201828202039%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201827202036%_))))
                              (_%__kont205163205164%_
                               _%tl201829202041%_
                               _%hd201828202039%_)))
                          (_%__kont205169205170%_
                           _%tl201819202014%_
                           _%hd201818202012%_))
                      (_%__kont205169205170%_
                       _%tl201819202014%_
                       _%hd201818202012%_))
                  (if (equal? _%e201826202033%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201825202030%_))
                          (_%__kont205165205166%_ _%tl201819202014%_)
                          (_%__kont205169205170%_
                           _%tl201819202014%_
                           _%hd201818202012%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201825202030%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201819202014%_))
                              (let ((_%e201853201929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201819202014%_))))
                                (let ((_%tl201855201934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201853201929%_)))
                                      (_%hd201854201932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201853201929%_))))
                                  (_%__match205268205269%_
                                   _%e201817202009%_
                                   _%hd201818202012%_
                                   _%tl201819202014%_
                                   _%e201820202017%_
                                   _%hd201821202020%_
                                   _%tl201822202022%_
                                   _%e201823202025%_
                                   _%hd201824202028%_
                                   _%tl201825202030%_
                                   _%e201853201929%_
                                   _%hd201854201932%_
                                   _%tl201855201934%_)))
                              (_%__kont205169205170%_
                               _%tl201819202014%_
                               _%hd201818202012%_))
                          (_%__kont205169205170%_
                           _%tl201819202014%_
                           _%hd201818202012%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201825202030%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl201819202014%_))
                                                            (let ((_%e201853201929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201819202014%_))))
                      (let ((_%tl201855201934%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201853201929%_)))
                            (_%hd201854201932%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201853201929%_))))
                        (_%__match205268205269%_
                         _%e201817202009%_
                         _%hd201818202012%_
                         _%tl201819202014%_
                         _%e201820202017%_
                         _%hd201821202020%_
                         _%tl201822202022%_
                         _%e201823202025%_
                         _%hd201824202028%_
                         _%tl201825202030%_
                         _%e201853201929%_
                         _%hd201854201932%_
                         _%tl201855201934%_)))
                    (_%__kont205169205170%_
                     _%tl201819202014%_
                     _%hd201818202012%_))
                (_%__kont205169205170%_
                 _%tl201819202014%_
                 _%hd201818202012%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont205169205170%_
                                             _%tl201819202014%_
                                             _%hd201818202012%_))
                                        (_%__kont205169205170%_
                                         _%tl201819202014%_
                                         _%hd201818202012%_))
                                    (_%__kont205169205170%_
                                     _%tl201819202014%_
                                     _%hd201818202012%_))))
                            (_%__kont205169205170%_
                             _%tl201819202014%_
                             _%hd201818202012%_))))
                    (_%__kont205171205172%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self201784%_ _%ctx201785%_ _%stx201786%_ _%args201787%_)
        (let ((_%self201790%_ _%self201784%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx201785%_ _%stx201786%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self201472%_ _%stx201473%_)
        (let* ((_%__stx205277205278%_ _%stx201473%_)
               (_%g201476201516%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205277205278%_)))))
          (let ((_%__kont205279205280%_
                 (lambda (_%L201622%_ _%L201623%_)
                   (let ((_%$e201650%_
                          (member 'return:
                                  (let ((__tmp205709
                                         (lambda (_%g201642201645%_
                                                  _%g201643201647%_)
                                           (cons _%g201642201645%_
                                                 _%g201643201647%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp205709 '() _%L201623%_))
                                  gx#stx-eq?)))
                     (if _%$e201650%_
                         ((lambda (_%tail201653%_)
                            (let ((_%type201655%_
                                   (let ((__tmp205710
                                          (let ((__tmp205711
                                                 (cadr _%tail201653%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp205711))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx201473%_
                                      __tmp205710))))
                              (gxc#check-return-type!
                               _%stx201473%_
                               _%L201622%_
                               _%type201655%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self201472%_
                                 _%L201622%_))))
                          _%$e201650%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self201472%_ _%L201622%_))))))
                (_%__kont205283205284%_
                 (lambda (_%L201545%_ _%L201546%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self201472%_ _%L201545%_)))))
            (let ((_%__match205314205315%_
                   (lambda (_%e201480201566%_
                            _%hd201481201569%_
                            _%tl201482201571%_
                            _%e201483201574%_
                            _%hd201484201577%_
                            _%tl201485201579%_
                            _%e201486201582%_
                            _%hd201487201585%_
                            _%tl201488201587%_
                            _%__splice205281205282%_
                            _%target201489201590%_
                            _%tl201491201592%_)
                     (letrec ((_%loop201492201595%_
                               (lambda (_%hd201490201598%_
                                        _%signature201496201600%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd201490201598%_))
                                     (let ((_%e201493201603%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd201490201598%_))))
                                       (let ((_%lp-tl201495201608%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201493201603%_)))
                                             (_%lp-hd201494201606%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201493201603%_))))
                                         (_%loop201492201595%_
                                          _%lp-tl201495201608%_
                                          (cons _%lp-hd201494201606%_
                                                _%signature201496201600%_))))
                                     (let ((_%signature201497201611%_
                                            (reverse _%signature201496201600%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl201485201579%_))
                                           (let ((_%e201498201614%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl201485201579%_))))
                                             (let ((_%tl201500201619%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e201498201614%_)))
                                                   (_%hd201499201617%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e201498201614%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201500201619%_))
                                                   (_%__kont205279205280%_
                                                    _%hd201499201617%_
                                                    _%signature201497201611%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g201476201516%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g201476201516%_))))))))
                       (_%loop201492201595%_ _%target201489201590%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205277205278%_))
                  (let ((_%e201480201566%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205277205278%_))))
                    (let ((_%tl201482201571%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201480201566%_)))
                          (_%hd201481201569%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201480201566%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201482201571%_))
                          (let ((_%e201483201574%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201482201571%_))))
                            (let ((_%tl201485201579%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201483201574%_)))
                                  (_%hd201484201577%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201483201574%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201484201577%_))
                                  (let ((_%e201486201582%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201484201577%_))))
                                    (let ((_%tl201488201587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201486201582%_)))
                                          (_%hd201487201585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201486201582%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201487201585%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd201487201585%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl201488201587%_))
                                                  (let ((_%__splice205281205282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl201488201587%_
                                                            '0))))
                                                    (let ((_%tl201491201592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205281205282%_
                                                              '1)))
                                                          (_%target201489201590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice205281205282%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201491201592%_))
                                                          (_%__match205314205315%_
                                                           _%e201480201566%_
                                                           _%hd201481201569%_
                                                           _%tl201482201571%_
                                                           _%e201483201574%_
                                                           _%hd201484201577%_
                                                           _%tl201485201579%_
                                                           _%e201486201582%_
                                                           _%hd201487201585%_
                                                           _%tl201488201587%_
                                                           _%__splice205281205282%_
                                                           _%target201489201590%_
                                                           _%tl201491201592%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201485201579%_))
                      (let ((_%e201509201537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201485201579%_))))
                        (let ((_%tl201511201542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201509201537%_)))
                              (_%hd201510201540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201509201537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201511201542%_))
                              (_%__kont205283205284%_
                               _%hd201510201540%_
                               _%hd201484201577%_)
                              (let ()
                                (declare (not safe))
                                (_%g201476201516%_)))))
                      (let () (declare (not safe)) (_%g201476201516%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201485201579%_))
                                                      (let ((_%e201509201537%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl201485201579%_))))
                (let ((_%tl201511201542%_
                       (let () (declare (not safe)) (##cdr _%e201509201537%_)))
                      (_%hd201510201540%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201509201537%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201511201542%_))
                      (_%__kont205283205284%_
                       _%hd201510201540%_
                       _%hd201484201577%_)
                      (let () (declare (not safe)) (_%g201476201516%_)))))
              (let () (declare (not safe)) (_%g201476201516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201485201579%_))
                                                  (let ((_%e201509201537%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201485201579%_))))
                                                    (let ((_%tl201511201542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201509201537%_)))
                                                          (_%hd201510201540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201509201537%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201511201542%_))
                                                          (_%__kont205283205284%_
                                                           _%hd201510201540%_
                                                           _%hd201484201577%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201476201516%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201476201516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201485201579%_))
                                              (let ((_%e201509201537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201485201579%_))))
                                                (let ((_%tl201511201542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201509201537%_)))
                                                      (_%hd201510201540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201509201537%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201511201542%_))
                                                      (_%__kont205283205284%_
                                                       _%hd201510201540%_
                                                       _%hd201484201577%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201476201516%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201476201516%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201485201579%_))
                                      (let ((_%e201509201537%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201485201579%_))))
                                        (let ((_%tl201511201542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201509201537%_)))
                                              (_%hd201510201540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201509201537%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201511201542%_))
                                              (_%__kont205283205284%_
                                               _%hd201510201540%_
                                               _%hd201484201577%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g201476201516%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201476201516%_))))))
                          (let () (declare (not safe)) (_%g201476201516%_)))))
                  (let () (declare (not safe)) (_%g201476201516%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx201447%_ _%expr201448%_ _%type201449%_)
        (let ((_%$e201451%_ (not _%type201449%_)))
          (if _%$e201451%_
              _%$e201451%_
              (let ((_%$e201454%_
                     (eq? (##structure-ref _%type201449%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e201454%_
                    _%$e201454%_
                    (let ((_%$e201457%_
                           (eq? (##structure-ref
                                 _%type201449%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e201457%_
                          _%$e201457%_
                          (let ((_%expr-type201461%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr201448%_))))
                            (if (not _%expr-type201461%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx201447%_
                                   _%type201449%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type201461%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx201447%_
                                       _%type201449%_
                                       _%expr-type201461%_))
                                    (let ((_%$e201465%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type201461%_
                                              'gxc#!abort::t))))
                                      (if _%$e201465%_
                                          _%$e201465%_
                                          (let ((_%$e201468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type201461%_
                                                    _%type201449%_))))
                                            (if _%$e201468%_
                                                _%$e201468%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx201447%_
                                                   _%type201449%_
                                                   _%expr-type201461%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self200873%_ _%stx200874%_)
        (let* ((_%__stx205359205360%_ _%stx200874%_)
               (_%g200879200989%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205359205360%_)))))
          (let ((_%__kont205361205362%_
                 (lambda (_%L201421%_ _%L201422%_ _%L201423%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L201423%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self200873%_ _%L201422%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self200873%_ _%L201421%_)))))
                (_%__kont205363205364%_
                 (lambda (_%L201247%_ _%L201248%_ _%L201249%_ _%L201250%_)
                   (let ((_%$e201282%_
                          (let ((__tmp205712
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L201250%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp205712))))
                     (if _%$e201282%_
                         ((lambda (_%pred-type201285%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type201285%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type201285%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test201290%_
                                        (let ((__tmp205713
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L201250%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L201249%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp205713
                                           _%stx200874%_
                                           _%self200873%_)))
                                       (_%K201294%_
                                        (let ((__tmp205714
                                               (lambda ()
                                                 (let ((__tmp205717
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self200873%_
                                                             _%L201248%_))))
                                                       (__tmp205715
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L201249%_))
                            (let ((__tmp205716
                                   (##structure-ref
                                    _%pred-type201285%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx200874%_
                               __tmp205716)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp205717
                                                    gxc#current-compile-path-type
                                                    __tmp205715)))))
                                          (declare (not safe))
                                          (__make-promise __tmp205714)))
                                       (_%E201297%_
                                        (let ((__tmp205718
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self200873%_
                                                    _%L201247%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp205718)))
                                       (_%__stx205337205338%_ _%test201290%_)
                                       (_%g201301201315%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx205337205338%_)))))
                                  (let ((_%__kont205339205340%_
                                         (lambda (_%L201343%_ _%L201344%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L201343%_))
                                               (force _%K201294%_)
                                               (force _%E201297%_))))
                                        (_%__kont205341205342%_
                                         (lambda ()
                                           (let ((__tmp205719
                                                  (cons '%#if
                                                        (cons _%test201290%_
                                                              (cons (force _%K201294%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E201297%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp205719
                                              _%stx200874%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205337205338%_))
                                        (let ((_%e201305201327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205337205338%_))))
                                          (let ((_%tl201307201332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201305201327%_)))
                                                (_%hd201306201330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201305201327%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201307201332%_))
                                                (let ((_%e201308201335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201307201332%_))))
                                                  (let ((_%tl201310201340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201308201335%_)))
                                                        (_%hd201309201338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201308201335%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201310201340%_))
                                                        (_%__kont205339205340%_
                                                         _%hd201309201338%_
                                                         _%hd201306201330%_)
                                                        (_%__kont205341205342%_))))
                                                (_%__kont205341205342%_))))
                                        (_%__kont205341205342%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self200873%_
                                   _%stx200874%_))))
                          _%$e201282%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self200873%_
                            _%stx200874%_))))))
                (_%__kont205365205366%_
                 (lambda (_%L201123%_ _%L201124%_ _%L201125%_ _%L201126%_)
                   (gxc#optimize-if%
                    _%self200873%_
                    (let ((__tmp205720
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L201125%_
                                       (cons _%L201123%_
                                             (cons _%L201124%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp205720 _%stx200874%_)))))
                (_%__kont205367205368%_
                 (lambda (_%L201026%_ _%L201027%_ _%L201028%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self200873%_ _%stx200874%_)))))
            (let ((_%__match205566205567%_
                   (lambda (_%e200943201051%_
                            _%hd200944201054%_
                            _%tl200945201056%_
                            _%e200946201059%_
                            _%hd200947201062%_
                            _%tl200948201064%_
                            _%e200949201067%_
                            _%hd200950201070%_
                            _%tl200951201072%_
                            _%e200952201075%_
                            _%hd200953201078%_
                            _%tl200954201080%_
                            _%e200955201083%_
                            _%hd200956201086%_
                            _%tl200957201088%_
                            _%e200958201091%_
                            _%hd200959201094%_
                            _%tl200960201096%_
                            _%e200961201099%_
                            _%hd200962201102%_
                            _%tl200963201104%_
                            _%e200964201107%_
                            _%hd200965201110%_
                            _%tl200966201112%_
                            _%e200967201115%_
                            _%hd200968201118%_
                            _%tl200969201120%_)
                     (let ((_%L201123%_ _%hd200968201118%_)
                           (_%L201124%_ _%hd200965201110%_)
                           (_%L201125%_ _%hd200962201102%_)
                           (_%L201126%_ _%hd200959201094%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L201126%_ 'not))
                           (_%__kont205365205366%_
                            _%L201123%_
                            _%L201124%_
                            _%L201125%_
                            _%L201126%_)
                           (_%__kont205367205368%_
                            _%hd200968201118%_
                            _%hd200965201110%_
                            _%hd200947201062%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205359205360%_))
                  (let ((_%e200884201373%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205359205360%_))))
                    (let ((_%tl200886201378%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200884201373%_)))
                          (_%hd200885201376%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200884201373%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200886201378%_))
                          (let ((_%e200887201381%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200886201378%_))))
                            (let ((_%tl200889201386%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200887201381%_)))
                                  (_%hd200888201384%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200887201381%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200888201384%_))
                                  (let ((_%e200890201389%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200888201384%_))))
                                    (let ((_%tl200892201394%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200890201389%_)))
                                          (_%hd200891201392%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200890201389%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200891201392%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd200891201392%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200892201394%_))
                                                  (let ((_%e200893201397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200892201394%_))))
                                                    (let ((_%tl200895201402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200893201397%_)))
                                                          (_%hd200894201400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200893201397%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200895201402%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200889201386%_))
                      (let ((_%e200896201405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200889201386%_))))
                        (let ((_%tl200898201410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200896201405%_)))
                              (_%hd200897201408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200896201405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200898201410%_))
                              (let ((_%e200899201413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200898201410%_))))
                                (let ((_%tl200901201418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200899201413%_)))
                                      (_%hd200900201416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200899201413%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200901201418%_))
                                      (_%__kont205361205362%_
                                       _%hd200900201416%_
                                       _%hd200897201408%_
                                       _%hd200894201400%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g200879200989%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g200879200989%_)))))
                      (let () (declare (not safe)) (_%g200879200989%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200889201386%_))
                      (let ((_%e200979201010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200889201386%_))))
                        (let ((_%tl200981201015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200979201010%_)))
                              (_%hd200980201013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200979201010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200981201015%_))
                              (let ((_%e200982201018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200981201015%_))))
                                (let ((_%tl200984201023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200982201018%_)))
                                      (_%hd200983201021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200982201018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200984201023%_))
                                      (_%__kont205367205368%_
                                       _%hd200983201021%_
                                       _%hd200980201013%_
                                       _%hd200888201384%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g200879200989%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g200879200989%_)))))
                      (let () (declare (not safe)) (_%g200879200989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200889201386%_))
                                                      (let ((_%e200979201010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200889201386%_))))
                (let ((_%tl200981201015%_
                       (let () (declare (not safe)) (##cdr _%e200979201010%_)))
                      (_%hd200980201013%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200979201010%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200981201015%_))
                      (let ((_%e200982201018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200981201015%_))))
                        (let ((_%tl200984201023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200982201018%_)))
                              (_%hd200983201021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200982201018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200984201023%_))
                              (_%__kont205367205368%_
                               _%hd200983201021%_
                               _%hd200980201013%_
                               _%hd200888201384%_)
                              (let ()
                                (declare (not safe))
                                (_%g200879200989%_)))))
                      (let () (declare (not safe)) (_%g200879200989%_)))))
              (let () (declare (not safe)) (_%g200879200989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd200891201392%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200892201394%_))
                                                      (let ((_%e200915201183%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200892201394%_))))
                (let ((_%tl200917201188%_
                       (let () (declare (not safe)) (##cdr _%e200915201183%_)))
                      (_%hd200916201186%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200915201183%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd200916201186%_))
                      (let ((_%e200918201191%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd200916201186%_))))
                        (let ((_%tl200920201196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200918201191%_)))
                              (_%hd200919201194%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200918201191%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd200919201194%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd200919201194%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200920201196%_))
                                      (let ((_%e200921201199%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200920201196%_))))
                                        (let ((_%tl200923201204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200921201199%_)))
                                              (_%hd200922201202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200921201199%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200923201204%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200917201188%_))
                                                  (let ((_%e200924201207%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200917201188%_))))
                                                    (let ((_%tl200926201212%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200924201207%_)))
                                                          (_%hd200925201210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200924201207%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200925201210%_))
                                                          (let ((_%e200927201215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200925201210%_))))
                    (let ((_%tl200929201220%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200927201215%_)))
                          (_%hd200928201218%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200927201215%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200928201218%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd200928201218%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200929201220%_))
                                  (let ((_%e200930201223%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200929201220%_))))
                                    (let ((_%tl200932201228%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200930201223%_)))
                                          (_%hd200931201226%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200930201223%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200932201228%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200926201212%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200889201386%_))
                                                  (let ((_%e200933201231%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200889201386%_))))
                                                    (let ((_%tl200935201236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200933201231%_)))
                                                          (_%hd200934201234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200933201231%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200935201236%_))
                                                          (let ((_%e200936201239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200935201236%_))))
                    (let ((_%tl200938201244%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200936201239%_)))
                          (_%hd200937201242%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200936201239%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200938201244%_))
                          (_%__kont205363205364%_
                           _%hd200937201242%_
                           _%hd200934201234%_
                           _%hd200931201226%_
                           _%hd200922201202%_)
                          (let () (declare (not safe)) (_%g200879200989%_)))))
                  (let () (declare (not safe)) (_%g200879200989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200889201386%_))
                                                  (let ((_%e200979201010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200889201386%_))))
                                                    (let ((_%tl200981201015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200979201010%_)))
                                                          (_%hd200980201013%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200979201010%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200981201015%_))
                                                          (let ((_%e200982201018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200981201015%_))))
                    (let ((_%tl200984201023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200982201018%_)))
                          (_%hd200983201021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200982201018%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200984201023%_))
                          (_%__kont205367205368%_
                           _%hd200983201021%_
                           _%hd200980201013%_
                           _%hd200888201384%_)
                          (let () (declare (not safe)) (_%g200879200989%_)))))
                  (let () (declare (not safe)) (_%g200879200989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200926201212%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200889201386%_))
                                                  (let ((_%e200964201107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200889201386%_))))
                                                    (let ((_%tl200966201112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200964201107%_)))
                                                          (_%hd200965201110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200964201107%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200966201112%_))
                                                          (let ((_%e200967201115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200966201112%_))))
                    (let ((_%tl200969201120%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200967201115%_)))
                          (_%hd200968201118%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200967201115%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200969201120%_))
                          (_%__match205566205567%_
                           _%e200884201373%_
                           _%hd200885201376%_
                           _%tl200886201378%_
                           _%e200887201381%_
                           _%hd200888201384%_
                           _%tl200889201386%_
                           _%e200890201389%_
                           _%hd200891201392%_
                           _%tl200892201394%_
                           _%e200915201183%_
                           _%hd200916201186%_
                           _%tl200917201188%_
                           _%e200918201191%_
                           _%hd200919201194%_
                           _%tl200920201196%_
                           _%e200921201199%_
                           _%hd200922201202%_
                           _%tl200923201204%_
                           _%e200924201207%_
                           _%hd200925201210%_
                           _%tl200926201212%_
                           _%e200964201107%_
                           _%hd200965201110%_
                           _%tl200966201112%_
                           _%e200967201115%_
                           _%hd200968201118%_
                           _%tl200969201120%_)
                          (let () (declare (not safe)) (_%g200879200989%_)))))
                  (let () (declare (not safe)) (_%g200879200989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200889201386%_))
                                                  (let ((_%e200979201010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200889201386%_))))
                                                    (let ((_%tl200981201015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200979201010%_)))
                                                          (_%hd200980201013%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200979201010%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200981201015%_))
                                                          (let ((_%e200982201018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200981201015%_))))
                    (let ((_%tl200984201023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200982201018%_)))
                          (_%hd200983201021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200982201018%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200984201023%_))
                          (_%__kont205367205368%_
                           _%hd200983201021%_
                           _%hd200980201013%_
                           _%hd200888201384%_)
                          (let () (declare (not safe)) (_%g200879200989%_)))))
                  (let () (declare (not safe)) (_%g200879200989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200926201212%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200889201386%_))
                                          (let ((_%e200964201107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200889201386%_))))
                                            (let ((_%tl200966201112%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200964201107%_)))
                                                  (_%hd200965201110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200964201107%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200966201112%_))
                                                  (let ((_%e200967201115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200966201112%_))))
                                                    (let ((_%tl200969201120%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200967201115%_)))
                                                          (_%hd200968201118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200967201115%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200969201120%_))
                                                          (_%__match205566205567%_
                                                           _%e200884201373%_
                                                           _%hd200885201376%_
                                                           _%tl200886201378%_
                                                           _%e200887201381%_
                                                           _%hd200888201384%_
                                                           _%tl200889201386%_
                                                           _%e200890201389%_
                                                           _%hd200891201392%_
                                                           _%tl200892201394%_
                                                           _%e200915201183%_
                                                           _%hd200916201186%_
                                                           _%tl200917201188%_
                                                           _%e200918201191%_
                                                           _%hd200919201194%_
                                                           _%tl200920201196%_
                                                           _%e200921201199%_
                                                           _%hd200922201202%_
                                                           _%tl200923201204%_
                                                           _%e200924201207%_
                                                           _%hd200925201210%_
                                                           _%tl200926201212%_
                                                           _%e200964201107%_
                                                           _%hd200965201110%_
                                                           _%tl200966201112%_
                                                           _%e200967201115%_
                                                           _%hd200968201118%_
                                                           _%tl200969201120%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200879200989%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200879200989%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200889201386%_))
                                          (let ((_%e200979201010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200889201386%_))))
                                            (let ((_%tl200981201015%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200979201010%_)))
                                                  (_%hd200980201013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200979201010%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200981201015%_))
                                                  (let ((_%e200982201018%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200981201015%_))))
                                                    (let ((_%tl200984201023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200982201018%_)))
                                                          (_%hd200983201021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200982201018%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200984201023%_))
                                                          (_%__kont205367205368%_
                                                           _%hd200983201021%_
                                                           _%hd200980201013%_
                                                           _%hd200888201384%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200879200989%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200879200989%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200926201212%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200889201386%_))
                                      (let ((_%e200964201107%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200889201386%_))))
                                        (let ((_%tl200966201112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200964201107%_)))
                                              (_%hd200965201110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200964201107%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200966201112%_))
                                              (let ((_%e200967201115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200966201112%_))))
                                                (let ((_%tl200969201120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200967201115%_)))
                                                      (_%hd200968201118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200967201115%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200969201120%_))
                                                      (_%__match205566205567%_
                                                       _%e200884201373%_
                                                       _%hd200885201376%_
                                                       _%tl200886201378%_
                                                       _%e200887201381%_
                                                       _%hd200888201384%_
                                                       _%tl200889201386%_
                                                       _%e200890201389%_
                                                       _%hd200891201392%_
                                                       _%tl200892201394%_
                                                       _%e200915201183%_
                                                       _%hd200916201186%_
                                                       _%tl200917201188%_
                                                       _%e200918201191%_
                                                       _%hd200919201194%_
                                                       _%tl200920201196%_
                                                       _%e200921201199%_
                                                       _%hd200922201202%_
                                                       _%tl200923201204%_
                                                       _%e200924201207%_
                                                       _%hd200925201210%_
                                                       _%tl200926201212%_
                                                       _%e200964201107%_
                                                       _%hd200965201110%_
                                                       _%tl200966201112%_
                                                       _%e200967201115%_
                                                       _%hd200968201118%_
                                                       _%tl200969201120%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200879200989%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200879200989%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200879200989%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200889201386%_))
                                      (let ((_%e200979201010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200889201386%_))))
                                        (let ((_%tl200981201015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200979201010%_)))
                                              (_%hd200980201013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200979201010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200981201015%_))
                                              (let ((_%e200982201018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200981201015%_))))
                                                (let ((_%tl200984201023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200982201018%_)))
                                                      (_%hd200983201021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200982201018%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200984201023%_))
                                                      (_%__kont205367205368%_
                                                       _%hd200983201021%_
                                                       _%hd200980201013%_
                                                       _%hd200888201384%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200879200989%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200879200989%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200879200989%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200926201212%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200889201386%_))
                                  (let ((_%e200964201107%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200889201386%_))))
                                    (let ((_%tl200966201112%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200964201107%_)))
                                          (_%hd200965201110%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200964201107%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200966201112%_))
                                          (let ((_%e200967201115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200966201112%_))))
                                            (let ((_%tl200969201120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200967201115%_)))
                                                  (_%hd200968201118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200967201115%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200969201120%_))
                                                  (_%__match205566205567%_
                                                   _%e200884201373%_
                                                   _%hd200885201376%_
                                                   _%tl200886201378%_
                                                   _%e200887201381%_
                                                   _%hd200888201384%_
                                                   _%tl200889201386%_
                                                   _%e200890201389%_
                                                   _%hd200891201392%_
                                                   _%tl200892201394%_
                                                   _%e200915201183%_
                                                   _%hd200916201186%_
                                                   _%tl200917201188%_
                                                   _%e200918201191%_
                                                   _%hd200919201194%_
                                                   _%tl200920201196%_
                                                   _%e200921201199%_
                                                   _%hd200922201202%_
                                                   _%tl200923201204%_
                                                   _%e200924201207%_
                                                   _%hd200925201210%_
                                                   _%tl200926201212%_
                                                   _%e200964201107%_
                                                   _%hd200965201110%_
                                                   _%tl200966201112%_
                                                   _%e200967201115%_
                                                   _%hd200968201118%_
                                                   _%tl200969201120%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200879200989%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200879200989%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200889201386%_))
                                  (let ((_%e200979201010%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200889201386%_))))
                                    (let ((_%tl200981201015%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200979201010%_)))
                                          (_%hd200980201013%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200979201010%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200981201015%_))
                                          (let ((_%e200982201018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200981201015%_))))
                                            (let ((_%tl200984201023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200982201018%_)))
                                                  (_%hd200983201021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200982201018%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200984201023%_))
                                                  (_%__kont205367205368%_
                                                   _%hd200983201021%_
                                                   _%hd200980201013%_
                                                   _%hd200888201384%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200879200989%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200879200989%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200926201212%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200889201386%_))
                          (let ((_%e200964201107%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200889201386%_))))
                            (let ((_%tl200966201112%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200964201107%_)))
                                  (_%hd200965201110%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200964201107%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200966201112%_))
                                  (let ((_%e200967201115%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200966201112%_))))
                                    (let ((_%tl200969201120%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200967201115%_)))
                                          (_%hd200968201118%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200967201115%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200969201120%_))
                                          (_%__match205566205567%_
                                           _%e200884201373%_
                                           _%hd200885201376%_
                                           _%tl200886201378%_
                                           _%e200887201381%_
                                           _%hd200888201384%_
                                           _%tl200889201386%_
                                           _%e200890201389%_
                                           _%hd200891201392%_
                                           _%tl200892201394%_
                                           _%e200915201183%_
                                           _%hd200916201186%_
                                           _%tl200917201188%_
                                           _%e200918201191%_
                                           _%hd200919201194%_
                                           _%tl200920201196%_
                                           _%e200921201199%_
                                           _%hd200922201202%_
                                           _%tl200923201204%_
                                           _%e200924201207%_
                                           _%hd200925201210%_
                                           _%tl200926201212%_
                                           _%e200964201107%_
                                           _%hd200965201110%_
                                           _%tl200966201112%_
                                           _%e200967201115%_
                                           _%hd200968201118%_
                                           _%tl200969201120%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g200879200989%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200879200989%_)))))
                          (let () (declare (not safe)) (_%g200879200989%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200889201386%_))
                          (let ((_%e200979201010%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200889201386%_))))
                            (let ((_%tl200981201015%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200979201010%_)))
                                  (_%hd200980201013%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200979201010%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200981201015%_))
                                  (let ((_%e200982201018%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200981201015%_))))
                                    (let ((_%tl200984201023%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200982201018%_)))
                                          (_%hd200983201021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200982201018%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200984201023%_))
                                          (_%__kont205367205368%_
                                           _%hd200983201021%_
                                           _%hd200980201013%_
                                           _%hd200888201384%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g200879200989%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200879200989%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g200879200989%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200889201386%_))
                                                      (let ((_%e200979201010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200889201386%_))))
                (let ((_%tl200981201015%_
                       (let () (declare (not safe)) (##cdr _%e200979201010%_)))
                      (_%hd200980201013%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200979201010%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200981201015%_))
                      (let ((_%e200982201018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200981201015%_))))
                        (let ((_%tl200984201023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200982201018%_)))
                              (_%hd200983201021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200982201018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200984201023%_))
                              (_%__kont205367205368%_
                               _%hd200983201021%_
                               _%hd200980201013%_
                               _%hd200888201384%_)
                              (let ()
                                (declare (not safe))
                                (_%g200879200989%_)))))
                      (let () (declare (not safe)) (_%g200879200989%_)))))
              (let () (declare (not safe)) (_%g200879200989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200889201386%_))
                                                  (let ((_%e200979201010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200889201386%_))))
                                                    (let ((_%tl200981201015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200979201010%_)))
                                                          (_%hd200980201013%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200979201010%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200981201015%_))
                                                          (let ((_%e200982201018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200981201015%_))))
                    (let ((_%tl200984201023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200982201018%_)))
                          (_%hd200983201021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200982201018%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200984201023%_))
                          (_%__kont205367205368%_
                           _%hd200983201021%_
                           _%hd200980201013%_
                           _%hd200888201384%_)
                          (let () (declare (not safe)) (_%g200879200989%_)))))
                  (let () (declare (not safe)) (_%g200879200989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200889201386%_))
                                          (let ((_%e200979201010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200889201386%_))))
                                            (let ((_%tl200981201015%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200979201010%_)))
                                                  (_%hd200980201013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200979201010%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200981201015%_))
                                                  (let ((_%e200982201018%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200981201015%_))))
                                                    (let ((_%tl200984201023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200982201018%_)))
                                                          (_%hd200983201021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200982201018%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200984201023%_))
                                                          (_%__kont205367205368%_
                                                           _%hd200983201021%_
                                                           _%hd200980201013%_
                                                           _%hd200888201384%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200879200989%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200879200989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200889201386%_))
                                      (let ((_%e200979201010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200889201386%_))))
                                        (let ((_%tl200981201015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200979201010%_)))
                                              (_%hd200980201013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200979201010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200981201015%_))
                                              (let ((_%e200982201018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200981201015%_))))
                                                (let ((_%tl200984201023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200982201018%_)))
                                                      (_%hd200983201021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200982201018%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200984201023%_))
                                                      (_%__kont205367205368%_
                                                       _%hd200983201021%_
                                                       _%hd200980201013%_
                                                       _%hd200888201384%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200879200989%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200879200989%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200879200989%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200889201386%_))
                                  (let ((_%e200979201010%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200889201386%_))))
                                    (let ((_%tl200981201015%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200979201010%_)))
                                          (_%hd200980201013%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200979201010%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200981201015%_))
                                          (let ((_%e200982201018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200981201015%_))))
                                            (let ((_%tl200984201023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200982201018%_)))
                                                  (_%hd200983201021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200982201018%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200984201023%_))
                                                  (_%__kont205367205368%_
                                                   _%hd200983201021%_
                                                   _%hd200980201013%_
                                                   _%hd200888201384%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200879200989%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200879200989%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200879200989%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200889201386%_))
                          (let ((_%e200979201010%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200889201386%_))))
                            (let ((_%tl200981201015%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200979201010%_)))
                                  (_%hd200980201013%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200979201010%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200981201015%_))
                                  (let ((_%e200982201018%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200981201015%_))))
                                    (let ((_%tl200984201023%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200982201018%_)))
                                          (_%hd200983201021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200982201018%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200984201023%_))
                                          (_%__kont205367205368%_
                                           _%hd200983201021%_
                                           _%hd200980201013%_
                                           _%hd200888201384%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g200879200989%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200879200989%_)))))
                          (let () (declare (not safe)) (_%g200879200989%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl200889201386%_))
                  (let ((_%e200979201010%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200889201386%_))))
                    (let ((_%tl200981201015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200979201010%_)))
                          (_%hd200980201013%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200979201010%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200981201015%_))
                          (let ((_%e200982201018%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200981201015%_))))
                            (let ((_%tl200984201023%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200982201018%_)))
                                  (_%hd200983201021%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200982201018%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200984201023%_))
                                  (_%__kont205367205368%_
                                   _%hd200983201021%_
                                   _%hd200980201013%_
                                   _%hd200888201384%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200879200989%_)))))
                          (let () (declare (not safe)) (_%g200879200989%_)))))
                  (let () (declare (not safe)) (_%g200879200989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200889201386%_))
                                                      (let ((_%e200979201010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200889201386%_))))
                (let ((_%tl200981201015%_
                       (let () (declare (not safe)) (##cdr _%e200979201010%_)))
                      (_%hd200980201013%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200979201010%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200981201015%_))
                      (let ((_%e200982201018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200981201015%_))))
                        (let ((_%tl200984201023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200982201018%_)))
                              (_%hd200983201021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200982201018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200984201023%_))
                              (_%__kont205367205368%_
                               _%hd200983201021%_
                               _%hd200980201013%_
                               _%hd200888201384%_)
                              (let ()
                                (declare (not safe))
                                (_%g200879200989%_)))))
                      (let () (declare (not safe)) (_%g200879200989%_)))))
              (let () (declare (not safe)) (_%g200879200989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200889201386%_))
                                              (let ((_%e200979201010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200889201386%_))))
                                                (let ((_%tl200981201015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200979201010%_)))
                                                      (_%hd200980201013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200979201010%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200981201015%_))
                                                      (let ((_%e200982201018%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200981201015%_))))
                (let ((_%tl200984201023%_
                       (let () (declare (not safe)) (##cdr _%e200982201018%_)))
                      (_%hd200983201021%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200982201018%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200984201023%_))
                      (_%__kont205367205368%_
                       _%hd200983201021%_
                       _%hd200980201013%_
                       _%hd200888201384%_)
                      (let () (declare (not safe)) (_%g200879200989%_)))))
              (let () (declare (not safe)) (_%g200879200989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200879200989%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200889201386%_))
                                      (let ((_%e200979201010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200889201386%_))))
                                        (let ((_%tl200981201015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200979201010%_)))
                                              (_%hd200980201013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200979201010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200981201015%_))
                                              (let ((_%e200982201018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200981201015%_))))
                                                (let ((_%tl200984201023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200982201018%_)))
                                                      (_%hd200983201021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200982201018%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200984201023%_))
                                                      (_%__kont205367205368%_
                                                       _%hd200983201021%_
                                                       _%hd200980201013%_
                                                       _%hd200888201384%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200879200989%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200879200989%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200879200989%_))))))
                          (let () (declare (not safe)) (_%g200879200989%_)))))
                  (let () (declare (not safe)) (_%g200879200989%_))))))))))
