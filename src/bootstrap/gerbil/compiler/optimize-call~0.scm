(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770607530)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp252584 (list gxc#::basic-xform::t))
            (__tmp252583 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp252584
         '()
         __tmp252583
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args251861%_
        (apply make-instance gxc#::optimize-call::t _%$args251861%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp252585
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
        (__make-atomic-promise __tmp252585)))
    (define gxc#apply-optimize-call
      (lambda (_%stx251853%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self251856%_
                (let ((__obj252575
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj252575))
               (__tmp252586
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self251856%_ _%stx251853%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp252586
           gxc#current-compile-method
           _%self251856%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp252588 (list gxc#::void::t))
            (__tmp252587 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp252588
         '()
         __tmp252587
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args251850%_
        (apply make-instance gxc#::check-return-type::t _%$args251850%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp252589
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
        (__make-atomic-promise __tmp252589)))
    (define gxc#apply-check-return-type
      (lambda (_%stx251842%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self251845%_
                (let ((__obj252577
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj252577))
               (__tmp252590
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self251845%_ _%stx251842%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp252590
           gxc#current-compile-method
           _%self251845%_))))
    (define gxc#optimize-call%
      (lambda (_%self251449%_ _%stx251450%_)
        (let* ((_%__stx251930251931%_ _%stx251450%_)
               (_%g251453251499%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx251930251931%_)))))
          (let ((_%__kont251932251933%_
                 (lambda (_%g251455251638%_ _%g251456251639%_)
                   (let* ((_%rator-id251659%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g251456251639%_)))
                          (_%rator-type251661%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id251659%_))))
                     (if (or (not _%rator-type251661%_)
                             (eq? (##structure-ref
                                   _%rator-type251661%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self251449%_ _%stx251450%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type251661%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp252591
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type251661%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id251659%_
                                  '" => "
                                  _%rator-type251661%_
                                  '" "
                                  __tmp252591))
                               (let* ((_%optimized251676%_
                                       (let ((__method252578
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type251661%_
                                                 'optimize-call))))
                                         (if __method252578
                                             (let ((__tmp252592
                                                    (let ((__tmp252593
                                                           (lambda (_%g251668251671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g251669251673%_)
                     (cons _%g251668251671%_ _%g251669251673%_))))
              (declare (not safe))
              (foldr__0 __tmp252593 '() _%g251455251638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method252578
                                                _%rator-type251661%_
                                                _%self251449%_
                                                _%stx251450%_
                                                __tmp252592))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type251661%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx251878251879%_
                                       _%optimized251676%_)
                                      (_%g251679251708%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx251878251879%_)))))
                                 (let ((_%__kont251880251881%_
                                        (lambda (_%g251681251774%_
                                                 _%g251682251775%_)
                                          (let* ((_%optimized-rator-id251802%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g251682251775%_)))
                                                 (_%rator-type251807%_
                                                  (let ((_%$e251804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id251802%_))))
                                                    (if _%$e251804%_
                                                        _%$e251804%_
                                                        _%rator-type251661%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type251807%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id251802%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type251807%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type251807%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized251676%_
                                                (let ((__tmp252594
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g251682251775%_ '()))
                           (let ((__tmp252595
                                  (lambda (_%g251815251818%_ _%g251816251820%_)
                                    (cons _%g251815251818%_
                                          _%g251816251820%_))))
                             (declare (not safe))
                             (foldr__0 __tmp252595 '() _%g251681251774%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252594
                                                   _%stx251450%_))))))
                                       (_%__kont251884251885%_
                                        (lambda () _%optimized251676%_)))
                                   (let ((_%__match251927251928%_
                                          (lambda (_%e251683251720%_
                                                   _%hd251684251723%_
                                                   _%tl251685251725%_
                                                   _%e251686251728%_
                                                   _%hd251687251731%_
                                                   _%tl251688251733%_
                                                   _%e251689251736%_
                                                   _%hd251690251739%_
                                                   _%tl251691251741%_
                                                   _%e251692251744%_
                                                   _%hd251693251747%_
                                                   _%tl251694251749%_
                                                   _%__splice251882251883%_
                                                   _%target251695251752%_
                                                   _%tl251697251754%_)
                                            (letrec ((_%loop251698251757%_
                                                      (lambda (_%hd251696251760%_
                                                               _%arg251702251762%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd251696251760%_))
                                                            (let ((_%e251699251764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd251696251760%_))))
                      (let ((_%lp-tl251701251769%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251699251764%_)))
                            (_%lp-hd251700251767%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251699251764%_))))
                        (_%loop251698251757%_
                         _%lp-tl251701251769%_
                         (cons _%lp-hd251700251767%_ _%arg251702251762%_))))
                    (let ((_%arg251703251772%_ (reverse _%arg251702251762%_)))
                      (_%__kont251880251881%_
                       _%arg251703251772%_
                       _%hd251693251747%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop251698251757%_
                                               _%target251695251752%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx251878251879%_))
                                         (let ((_%e251683251720%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx251878251879%_))))
                                           (let ((_%tl251685251725%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e251683251720%_)))
                                                 (_%hd251684251723%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e251683251720%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd251684251723%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd251684251723%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl251685251725%_))
                                                         (let ((_%e251686251728%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl251685251725%_))))
                   (let ((_%tl251688251733%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e251686251728%_)))
                         (_%hd251687251731%_
                          (let ()
                            (declare (not safe))
                            (##car _%e251686251728%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd251687251731%_))
                         (let ((_%e251689251736%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd251687251731%_))))
                           (let ((_%tl251691251741%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e251689251736%_)))
                                 (_%hd251690251739%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e251689251736%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd251690251739%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd251690251739%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl251691251741%_))
                                         (let ((_%e251692251744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl251691251741%_))))
                                           (let ((_%tl251694251749%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e251692251744%_)))
                                                 (_%hd251693251747%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e251692251744%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl251694251749%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl251688251733%_))
                                                     (let ((_%__splice251882251883%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl251688251733%_
                                                               '0))))
                                                       (let ((_%tl251697251754%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice251882251883%_ '1)))
                     (_%target251695251752%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice251882251883%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl251697251754%_))
                     (_%__match251927251928%_
                      _%e251683251720%_
                      _%hd251684251723%_
                      _%tl251685251725%_
                      _%e251686251728%_
                      _%hd251687251731%_
                      _%tl251688251733%_
                      _%e251689251736%_
                      _%hd251690251739%_
                      _%tl251691251741%_
                      _%e251692251744%_
                      _%hd251693251747%_
                      _%tl251694251749%_
                      _%__splice251882251883%_
                      _%target251695251752%_
                      _%tl251697251754%_)
                     (_%__kont251884251885%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont251884251885%_))
                                                 (_%__kont251884251885%_))))
                                         (_%__kont251884251885%_))
                                     (_%__kont251884251885%_))
                                 (_%__kont251884251885%_))))
                         (_%__kont251884251885%_))))
                 (_%__kont251884251885%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont251884251885%_))
                                                 (_%__kont251884251885%_))))
                                         (_%__kont251884251885%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type251661%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type251661%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp252596
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g251456251639%_
                                                                '()))
                                                    (map (lambda (_%g251826251828%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self251449%_
                                                              _%g251826251828%_)))
                                                         (let ((__tmp252597
                                                                (lambda (_%g251830251833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g251831251835%_)
                          (cons _%g251830251833%_ _%g251831251835%_))))
                   (declare (not safe))
                   (foldr__0 __tmp252597 '() _%g251455251638%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp252596
                                    _%stx251450%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx251450%_
                                    _%rator-type251661%_))))))))
                (_%__kont251936251937%_
                 (lambda (_%g251478251542%_ _%g251479251543%_)
                   (let ((_%rator-type251560%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g251479251543%_))))
                     (if (and _%rator-type251560%_
                              (eq? (##structure-ref
                                    _%rator-type251560%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type251560%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type251560%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type251560%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp252598
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self251449%_
                                               _%g251479251543%_))
                                            (map (lambda (_%g251562251564%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self251449%_
                                                      _%g251562251564%_)))
                                                 (let ((__tmp252599
                                                        (lambda (_%g251566251569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g251567251571%_)
                  (cons _%g251566251569%_ _%g251567251571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp252599
                                                    '()
                                                    _%g251478251542%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp252598 _%stx251450%_))
                         (if (or (not _%rator-type251560%_)
                                 (let ((__tmp252600
                                        (##structure-ref
                                         _%rator-type251560%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp252600 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self251449%_ _%stx251450%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx251450%_
                                _%rator-type251560%_))))))))
            (let* ((_%__match251997251998%_
                    (lambda (_%e251480251504%_
                             _%hd251481251507%_
                             _%tl251482251509%_
                             _%e251483251512%_
                             _%hd251484251515%_
                             _%tl251485251517%_
                             _%__splice251938251939%_
                             _%target251486251520%_
                             _%tl251488251522%_)
                      (letrec ((_%loop251489251525%_
                                (lambda (_%hd251487251528%_
                                         _%rand251493251530%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd251487251528%_))
                                      (let ((_%e251490251532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd251487251528%_))))
                                        (let ((_%lp-tl251492251537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251490251532%_)))
                                              (_%lp-hd251491251535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251490251532%_))))
                                          (_%loop251489251525%_
                                           _%lp-tl251492251537%_
                                           (cons _%lp-hd251491251535%_
                                                 _%rand251493251530%_))))
                                      (let ((_%rand251494251540%_
                                             (reverse _%rand251493251530%_)))
                                        (_%__kont251936251937%_
                                         _%rand251494251540%_
                                         _%hd251484251515%_))))))
                        (_%loop251489251525%_ _%target251486251520%_ '()))))
                   (_%__match251977251978%_
                    (lambda (_%e251457251584%_
                             _%hd251458251587%_
                             _%tl251459251589%_
                             _%e251460251592%_
                             _%hd251461251595%_
                             _%tl251462251597%_
                             _%e251463251600%_
                             _%hd251464251603%_
                             _%tl251465251605%_
                             _%e251466251608%_
                             _%hd251467251611%_
                             _%tl251468251613%_
                             _%__splice251934251935%_
                             _%target251469251616%_
                             _%tl251471251618%_)
                      (letrec ((_%loop251472251621%_
                                (lambda (_%hd251470251624%_
                                         _%rand251476251626%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd251470251624%_))
                                      (let ((_%e251473251628%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd251470251624%_))))
                                        (let ((_%lp-tl251475251633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251473251628%_)))
                                              (_%lp-hd251474251631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251473251628%_))))
                                          (_%loop251472251621%_
                                           _%lp-tl251475251633%_
                                           (cons _%lp-hd251474251631%_
                                                 _%rand251476251626%_))))
                                      (let ((_%rand251477251636%_
                                             (reverse _%rand251476251626%_)))
                                        (_%__kont251932251933%_
                                         _%rand251477251636%_
                                         _%hd251467251611%_))))))
                        (_%loop251472251621%_ _%target251469251616%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx251930251931%_))
                  (let ((_%e251457251584%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx251930251931%_))))
                    (let ((_%tl251459251589%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251457251584%_)))
                          (_%hd251458251587%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251457251584%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251459251589%_))
                          (let ((_%e251460251592%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251459251589%_))))
                            (let ((_%tl251462251597%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251460251592%_)))
                                  (_%hd251461251595%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251460251592%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd251461251595%_))
                                  (let ((_%e251463251600%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd251461251595%_))))
                                    (let ((_%tl251465251605%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251463251600%_)))
                                          (_%hd251464251603%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251463251600%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd251464251603%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd251464251603%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251465251605%_))
                                                  (let ((_%e251466251608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251465251605%_))))
                                                    (let ((_%tl251468251613%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251466251608%_)))
                                                          (_%hd251467251611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251466251608%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251468251613%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl251462251597%_))
                      (let ((_%__splice251934251935%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl251462251597%_
                                '0))))
                        (let ((_%tl251471251618%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice251934251935%_ '1)))
                              (_%target251469251616%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice251934251935%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251471251618%_))
                              (_%__match251977251978%_
                               _%e251457251584%_
                               _%hd251458251587%_
                               _%tl251459251589%_
                               _%e251460251592%_
                               _%hd251461251595%_
                               _%tl251462251597%_
                               _%e251463251600%_
                               _%hd251464251603%_
                               _%tl251465251605%_
                               _%e251466251608%_
                               _%hd251467251611%_
                               _%tl251468251613%_
                               _%__splice251934251935%_
                               _%target251469251616%_
                               _%tl251471251618%_)
                              (let ()
                                (declare (not safe))
                                (_%g251453251499%_)))))
                      (let () (declare (not safe)) (_%g251453251499%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl251462251597%_))
                      (let ((_%__splice251938251939%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl251462251597%_
                                '0))))
                        (let ((_%tl251488251522%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice251938251939%_ '1)))
                              (_%target251486251520%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice251938251939%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251488251522%_))
                              (_%__match251997251998%_
                               _%e251457251584%_
                               _%hd251458251587%_
                               _%tl251459251589%_
                               _%e251460251592%_
                               _%hd251461251595%_
                               _%tl251462251597%_
                               _%__splice251938251939%_
                               _%target251486251520%_
                               _%tl251488251522%_)
                              (let ()
                                (declare (not safe))
                                (_%g251453251499%_)))))
                      (let () (declare (not safe)) (_%g251453251499%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl251462251597%_))
                                                      (let ((_%__splice251938251939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl251462251597%_
                        '0))))
                (let ((_%tl251488251522%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice251938251939%_ '1)))
                      (_%target251486251520%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice251938251939%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251488251522%_))
                      (_%__match251997251998%_
                       _%e251457251584%_
                       _%hd251458251587%_
                       _%tl251459251589%_
                       _%e251460251592%_
                       _%hd251461251595%_
                       _%tl251462251597%_
                       _%__splice251938251939%_
                       _%target251486251520%_
                       _%tl251488251522%_)
                      (let () (declare (not safe)) (_%g251453251499%_)))))
              (let () (declare (not safe)) (_%g251453251499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl251462251597%_))
                                                  (let ((_%__splice251938251939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl251462251597%_
                                                            '0))))
                                                    (let ((_%tl251488251522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251938251939%_
                                                              '1)))
                                                          (_%target251486251520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251938251939%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251488251522%_))
                                                          (_%__match251997251998%_
                                                           _%e251457251584%_
                                                           _%hd251458251587%_
                                                           _%tl251459251589%_
                                                           _%e251460251592%_
                                                           _%hd251461251595%_
                                                           _%tl251462251597%_
                                                           _%__splice251938251939%_
                                                           _%target251486251520%_
                                                           _%tl251488251522%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g251453251499%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251453251499%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl251462251597%_))
                                              (let ((_%__splice251938251939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl251462251597%_
                                                        '0))))
                                                (let ((_%tl251488251522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice251938251939%_
                                                          '1)))
                                                      (_%target251486251520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice251938251939%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251488251522%_))
                                                      (_%__match251997251998%_
                                                       _%e251457251584%_
                                                       _%hd251458251587%_
                                                       _%tl251459251589%_
                                                       _%e251460251592%_
                                                       _%hd251461251595%_
                                                       _%tl251462251597%_
                                                       _%__splice251938251939%_
                                                       _%target251486251520%_
                                                       _%tl251488251522%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251453251499%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251453251499%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl251462251597%_))
                                      (let ((_%__splice251938251939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl251462251597%_
                                                '0))))
                                        (let ((_%tl251488251522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice251938251939%_
                                                  '1)))
                                              (_%target251486251520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice251938251939%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251488251522%_))
                                              (_%__match251997251998%_
                                               _%e251457251584%_
                                               _%hd251458251587%_
                                               _%tl251459251589%_
                                               _%e251460251592%_
                                               _%hd251461251595%_
                                               _%tl251462251597%_
                                               _%__splice251938251939%_
                                               _%target251486251520%_
                                               _%tl251488251522%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g251453251499%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251453251499%_))))))
                          (let () (declare (not safe)) (_%g251453251499%_)))))
                  (let () (declare (not safe)) (_%g251453251499%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self251411%_ _%ctx251412%_ _%stx251413%_ _%args251414%_)
        (let ((_%self251417%_ _%self251411%_))
          (if (let ((__method252579
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self251417%_ 'check-arguments))))
                (if __method252579
                    (let ()
                      (declare (not safe))
                      (__method252579
                       _%self251417%_
                       _%ctx251412%_
                       _%stx251413%_
                       _%args251414%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self251417%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature251427%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251417%_ '2 '#f '#f)))
                     (_%signature251429%_ _%signature251427%_)
                     (_%$e251439%_
                      (if _%signature251429%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature251429%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e251439%_
                    ((lambda (_%unchecked251442%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked251442%_))
                           (let ((__tmp252601
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked251442%_
                                                          '()))
                                              (map (lambda (_%g251443251445%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251412%_
                                                        _%g251443251445%_)))
                                                   _%args251414%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp252601
                              _%stx251413%_
                              _%ctx251412%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx251412%_ _%stx251413%_))))
                     _%$e251439%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx251412%_ _%stx251413%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx251412%_ _%stx251413%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass251863 __method-table251864)
        (let ((__check-arguments251865
               (let ((__tmp252602
                      (lambda ()
                        (let ((__method251866
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table251864
                                  'check-arguments
                                  '#f))))
                          (if __method251866
                              __method251866
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp252602))))
          (lambda (_%self251411%_ _%ctx251412%_ _%stx251413%_ _%args251414%_)
            (let ((_%self251417%_ _%self251411%_))
              (if ((force __check-arguments251865)
                   _%self251417%_
                   _%ctx251412%_
                   _%stx251413%_
                   _%args251414%_)
                  (let* ((_%signature251427%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self251417%_
                             '2
                             '#f
                             '#f)))
                         (_%signature251429%_ _%signature251427%_)
                         (_%$e251439%_
                          (if _%signature251429%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature251429%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e251439%_
                        ((lambda (_%unchecked251442%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked251442%_))
                               (let ((__tmp252603
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked251442%_
                                                              '()))
                                                  (map (lambda (_%g251443251445%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx251412%_
                                                            _%g251443251445%_)))
                                                       _%args251414%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp252603
                                  _%stx251413%_
                                  _%ctx251412%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx251412%_
                                  _%stx251413%_))))
                         _%$e251439%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx251412%_ _%stx251413%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx251412%_ _%stx251413%_))))))))
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
      (lambda (_%self251164%_ _%ctx251165%_ _%stx251166%_ _%args251167%_)
        (let* ((_%self251170%_ _%self251164%_)
               (_%signature251179251181%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251170%_ '2 '#f '#f))))
          (if _%signature251179251181%_
              (let* ((_%signature251183%_ _%signature251179251181%_)
                     (_%argument-types251184251186%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature251183%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types251184251186%_
                    (let* ((_%argument-types251188%_
                            _%argument-types251184251186%_)
                           (_%argument-types251193%_
                            (let ((__tmp252604
                                   (lambda (_%t251191%_)
                                     (if _%t251191%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx251166%_
                                            _%t251191%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp252604
                               _%argument-types251188%_))))
                      (let _%loop251195%_ ((_%rest-args251197%_ _%args251167%_)
                                           (_%rest-types251198%_
                                            _%argument-types251193%_)
                                           (_%result251199%_ '#t))
                        (let* ((_%rest-args251200251208%_ _%rest-args251197%_)
                               (_%else251202251216%_
                                (lambda () _%result251199%_))
                               (_%K251204251277%_
                                (lambda (_%rest-args251219%_ _%arg251220%_)
                                  (let* ((_%rest-types251221251232%_
                                          _%rest-types251198%_)
                                         (_%E251225251236%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types251221251232%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K251228251265%_
                                           (lambda (_%rest-types251262%_
                                                    _%type251263%_)
                                             (_%loop251195%_
                                              _%rest-args251219%_
                                              _%rest-types251262%_
                                              (if (gxc#check-expression-type!
                                                   _%stx251166%_
                                                   _%arg251220%_
                                                   _%type251263%_)
                                                  _%result251199%_
                                                  '#f))))
                                          (_%K251227251256%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx251166%_
                                                _%argument-types251193%_))))
                                          (_%K251226251246%_
                                           (lambda (_%tail-type251240%_)
                                             (if (let ((__tmp252605
                                                        (lambda (_%g251241251243%_)
                                                          (gxc#check-expression-type!
                                                           _%stx251166%_
                                                           _%g251241251243%_
                                                           _%tail-type251240%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp252605
                                                    _%rest-args251219%_))
                                                 _%result251199%_
                                                 '#f))))
                                      (let ((_%try-match251223251259%_
                                             (lambda ()
                                               (if (null? _%rest-types251221251232%_)
                                                   (_%K251227251256%_)
                                                   (let ((_%tail-type251249%_
                                                          _%rest-types251221251232%_))
                                                     (_%K251226251246%_
                                                      _%tail-type251249%_))))))
                                        (if (pair? _%rest-types251221251232%_)
                                            (let ((_%tl251230251270%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types251221251232%_)))
                                                  (_%hd251229251268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types251221251232%_))))
                                              (let ((_%type251273%_
                                                     _%hd251229251268%_)
                                                    (_%rest-types251275%_
                                                     _%tl251230251270%_))
                                                (_%K251228251265%_
                                                 _%rest-types251275%_
                                                 _%type251273%_)))
                                            (_%try-match251223251259%_))))))))
                          (if (pair? _%rest-args251200251208%_)
                              (let ((_%hd251205251280%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args251200251208%_)))
                                    (_%tl251206251282%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args251200251208%_))))
                                (let* ((_%arg251285%_ _%hd251205251280%_)
                                       (_%rest-args251287%_
                                        _%tl251206251282%_))
                                  (_%K251204251277%_
                                   _%rest-args251287%_
                                   _%arg251285%_)))
                              (_%else251202251216%_)))))
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
      (lambda (_%self250975%_ _%ctx250976%_ _%stx250977%_ _%args250978%_)
        (let* ((_%self250981%_ _%self250975%_)
               (_%g250991251001%_
                (lambda (_%g250992250998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250992250998%_))))
               (_%g250990251039%_
                (lambda (_%g250992251004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250992251004%_))
                      (let ((_%e250994251006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g250992251004%_))))
                        (let ((_%hd250995251009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250994251006%_)))
                              (_%tl250996251011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250994251006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250996251011%_))
                              ((lambda (_%g250993251014%_)
                                 (let* ((_%klass251026%_
                                         (let ((__tmp252606
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self250981%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx250977%_
                                            __tmp252606)))
                                        (_%object251028%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx250976%_
                                            _%g250993251014%_)))
                                        (_%instance?251033%_
                                         (let ((_%$e251030%_
                                                (gxc#expression-type?
                                                 _%object251028%_
                                                 _%klass251026%_)))
                                           (if _%$e251030%_
                                               _%$e251030%_
                                               (gxc#expression-type?
                                                _%g250993251014%_
                                                _%klass251026%_)))))
                                   (if _%instance?251033%_
                                       (let ((__tmp252607
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object251028%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g250993251014%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object251028%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252607
                                          _%stx250977%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx250976%_
                                          _%stx250977%_)))))
                               _%hd250995251009%_)
                              (_%g250991251001%_ _%g250992251004%_))))
                      (_%g250991251001%_ _%g250992251004%_)))))
          (_%g250990251039%_ _%args250978%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self250771%_ _%ctx250772%_ _%stx250773%_ _%args250774%_)
        (let* ((_%self250777%_ _%self250771%_)
               (_%g250787250797%_
                (lambda (_%g250788250794%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250788250794%_))))
               (_%g250786250850%_
                (lambda (_%g250788250800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250788250800%_))
                      (let ((_%e250790250802%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g250788250800%_))))
                        (let ((_%hd250791250805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250790250802%_)))
                              (_%tl250792250807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250790250802%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250792250807%_))
                              ((lambda (_%g250789250810%_)
                                 (let* ((_%klass250822%_
                                         (let ((__tmp252608
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self250777%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx250773%_
                                            __tmp252608)))
                                        (_%object250824%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx250772%_
                                            _%g250789250810%_)))
                                        (_%instance?250829%_
                                         (let ((_%$e250826%_
                                                (gxc#expression-type?
                                                 _%object250824%_
                                                 _%klass250822%_)))
                                           (if _%$e250826%_
                                               _%$e250826%_
                                               (gxc#expression-type?
                                                _%g250789250810%_
                                                _%klass250822%_))))
                                        (_%klass250832%_ _%klass250822%_))
                                   (if _%instance?250829%_
                                       (let ((__tmp252609
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object250824%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g250789250810%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object250824%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252609
                                          _%stx250773%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass250832%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp252610
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass250832%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object250824%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp252610
                                              _%stx250773%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass250832%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp252611
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass250832%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object250824%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp252611
                                                  _%stx250773%_))
                                               (let ((__tmp252612
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self250777%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object250824%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp252612
                                                  _%stx250773%_)))))))
                               _%hd250791250805%_)
                              (_%g250787250797%_ _%g250788250800%_))))
                      (_%g250787250797%_ _%g250788250800%_)))))
          (_%g250786250850%_ _%args250774%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx250439%_)
        (let* ((_%__stx252007252008%_ _%stx250439%_)
               (_%g250444250485%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx252007252008%_)))))
          (let ((_%__kont252009252010%_ (lambda () '#t))
                (_%__kont252011252012%_ (lambda () '#t))
                (_%__kont252013252014%_
                 (lambda (_%g250458250551%_ _%g250459250552%_)
                   (let ((_%rator-type250573250575%_
                          (let ((__tmp252613
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g250459250552%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp252613))))
                     (if _%rator-type250573250575%_
                         (let* ((_%rator-type250577%_
                                 _%rator-type250573250575%_)
                                (_%rator-signature250578250580%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type250577%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type250577%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature250578250580%_
                               (let* ((_%rator-signature250582%_
                                       _%rator-signature250578250580%_)
                                      (_%rator-effect250583250585%_
                                       (if _%rator-signature250582%_
                                           (##direct-structure-ref
                                            _%rator-signature250582%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect250583250585%_
                                     (let ((_%rator-effect250587%_
                                            _%rator-effect250583250585%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect250587%_)
                                               (equal? '(alloc)
                                                       _%rator-effect250587%_))
                                           (let ((__tmp252614
                                                  (let ((__tmp252615
                                                         (lambda (_%g250592250595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g250593250597%_)
                   (cons _%g250592250595%_ _%g250593250597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp252615
                                                     '()
                                                     _%g250458250551%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp252614))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont252017252018%_ (lambda () '#f)))
            (let ((_%__match252096252097%_
                   (lambda (_%e250460250497%_
                            _%hd250461250500%_
                            _%tl250462250502%_
                            _%e250463250505%_
                            _%hd250464250508%_
                            _%tl250465250510%_
                            _%e250466250513%_
                            _%hd250467250516%_
                            _%tl250468250518%_
                            _%e250469250521%_
                            _%hd250470250524%_
                            _%tl250471250526%_
                            _%__splice252015252016%_
                            _%target250472250529%_
                            _%tl250474250531%_)
                     (letrec ((_%loop250475250534%_
                               (lambda (_%hd250473250537%_
                                        _%rand250479250539%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd250473250537%_))
                                     (let ((_%e250476250541%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd250473250537%_))))
                                       (let ((_%lp-tl250478250546%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e250476250541%_)))
                                             (_%lp-hd250477250544%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e250476250541%_))))
                                         (_%loop250475250534%_
                                          _%lp-tl250478250546%_
                                          (cons _%lp-hd250477250544%_
                                                _%rand250479250539%_))))
                                     (let ((_%rand250480250549%_
                                            (reverse _%rand250479250539%_)))
                                       (_%__kont252013252014%_
                                        _%rand250480250549%_
                                        _%hd250470250524%_))))))
                       (_%loop250475250534%_ _%target250472250529%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx252007252008%_))
                  (let ((_%e250446250628%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx252007252008%_))))
                    (let ((_%tl250448250633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250446250628%_)))
                          (_%hd250447250631%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250446250628%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd250447250631%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd250447250631%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250448250633%_))
                                  (let ((_%e250449250636%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250448250633%_))))
                                    (let ((_%tl250451250641%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250449250636%_)))
                                          (_%hd250450250639%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250449250636%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250451250641%_))
                                          (_%__kont252009252010%_)
                                          (_%__kont252017252018%_))))
                                  (_%__kont252017252018%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd250447250631%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250448250633%_))
                                      (let ((_%e250455250613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250448250633%_))))
                                        (let ((_%tl250457250618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250455250613%_)))
                                              (_%hd250456250616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250455250613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250457250618%_))
                                              (_%__kont252011252012%_)
                                              (_%__kont252017252018%_))))
                                      (_%__kont252017252018%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd250447250631%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250448250633%_))
                                          (let ((_%e250463250505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250448250633%_))))
                                            (let ((_%tl250465250510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250463250505%_)))
                                                  (_%hd250464250508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250463250505%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd250464250508%_))
                                                  (let ((_%e250466250513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd250464250508%_))))
                                                    (let ((_%tl250468250518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250466250513%_)))
                                                          (_%hd250467250516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250466250513%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd250467250516%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd250467250516%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250468250518%_))
                          (let ((_%e250469250521%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250468250518%_))))
                            (let ((_%tl250471250526%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250469250521%_)))
                                  (_%hd250470250524%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250469250521%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250471250526%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl250465250510%_))
                                      (let ((_%__splice252015252016%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl250465250510%_
                                                '0))))
                                        (let ((_%tl250474250531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice252015252016%_
                                                  '1)))
                                              (_%target250472250529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice252015252016%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250474250531%_))
                                              (_%__match252096252097%_
                                               _%e250446250628%_
                                               _%hd250447250631%_
                                               _%tl250448250633%_
                                               _%e250463250505%_
                                               _%hd250464250508%_
                                               _%tl250465250510%_
                                               _%e250466250513%_
                                               _%hd250467250516%_
                                               _%tl250468250518%_
                                               _%e250469250521%_
                                               _%hd250470250524%_
                                               _%tl250471250526%_
                                               _%__splice252015252016%_
                                               _%target250472250529%_
                                               _%tl250474250531%_)
                                              (_%__kont252017252018%_))))
                                      (_%__kont252017252018%_))
                                  (_%__kont252017252018%_))))
                          (_%__kont252017252018%_))
                      (_%__kont252017252018%_))
                  (_%__kont252017252018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont252017252018%_))))
                                          (_%__kont252017252018%_))
                                      (_%__kont252017252018%_))))
                          (_%__kont252017252018%_))))
                  (_%__kont252017252018%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx250434%_ _%klass250435%_)
        (let ((_%expr-type250437%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx250434%_))))
          (if _%expr-type250437%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type250437%_ _%klass250435%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx250412%_ _%expr250413%_ _%type250414%_)
        (if (not _%type250414%_)
            '#f
            (let ((_%$e250417%_
                   (eq? (##structure-ref _%type250414%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e250417%_
                  _%$e250417%_
                  (let ((_%expr-type250421%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr250413%_))))
                    (if (not _%expr-type250421%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type250421%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e250425%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type250421%_
                                      'gxc#!abort::t))))
                              (if _%$e250425%_
                                  _%$e250425%_
                                  (let ((_%$e250428%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type250421%_
                                            _%type250414%_))))
                                    (if _%$e250428%_
                                        _%$e250428%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type250414%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type250414%_
                                                   _%expr-type250421%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx250412%_
                                                   _%expr250413%_
                                                   _%expr-type250421%_
                                                   _%type250414%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self250226%_ _%ctx250227%_ _%stx250228%_ _%args250229%_)
        (let* ((_%self250232%_ _%self250226%_)
               (_%klass250242%_
                (let ((__tmp252616
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self250232%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx250228%_ __tmp252616)))
               (_%fields250244%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass250242%_
                           '5
                           '#f
                           '#f))))
               (_%args250250%_
                (map (lambda (_%g250245250247%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx250227%_ _%g250245250247%_)))
                     _%args250229%_))
               (_%inline-make-object250252%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self250232%_
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
                           _%self250232%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields250244%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass250255%_ _%klass250242%_)
               (_%$e250269%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass250255%_ '6 '#f '#f))))
          (if _%$e250269%_
              ((lambda (_%ctor250272%_)
                 (let ((_%$obj250274%_
                        (let ((__tmp252617
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp252617)))
                       (_%ctor-impl250275%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass250255%_
                           _%ctor250272%_))))
                   (let ((__tmp252618
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj250274%_ '())
                                                  (cons _%inline-make-object250252%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl250275%_
                                                            (let ((__tmp252619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl250275%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj250274%_ '()))
                                             _%args250250%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp252619
                       _%stx250228%_
                       _%ctx250227%_))
                    (let ((_%$ctor250277%_
                           (let ((__tmp252620
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp252620))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor250277%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self250232%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj250274%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor250272%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor250277%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor250277%_ '()))
                              (cons (cons '%#ref (cons _%$obj250274%_ '()))
                                    _%args250250%_)))
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
                             _%self250232%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor250272%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj250274%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp252618 _%stx250228%_))))
               _%$e250269%_)
              (let ((_%$e250279%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass250255%_
                        '10
                        '#f
                        '#f))))
                (if _%$e250279%_
                    ((lambda (_%metaclass250282%_)
                       (let* ((_%$obj250284%_
                               (let ((__tmp252621
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp252621)))
                              (_%metakons250286%_
                               (let ((__tmp252622
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx250228%_
                                         _%metaclass250282%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp252622
                                  'instance-init!)))
                              (__tmp252623
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj250284%_
                                                             '())
                                                       (cons _%inline-make-object250252%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons250286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp252624
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons250286%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self250232%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj250284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args250250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp252624
                            _%stx250228%_
                            _%ctx250227%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self250232%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj250284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args250250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj250284%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252623 _%stx250228%_)))
                     _%$e250279%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass250255%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp252625
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args250250%_))))
                              (declare (not safe))
                              (##fx= __tmp252625 _%fields250244%_))
                            (let ((__tmp252626
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self250232%_
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
                                              _%self250232%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args250250%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp252626
                               _%stx250228%_))
                            (let ((__tmp252628
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self250232%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp252627
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass250255%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx250228%_
                               __tmp252628
                               __tmp252627)))
                        (let ((_%$obj250291%_
                               (let ((__tmp252629
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp252629))))
                          (let _%lp250293%_ ((_%rest250295%_ _%args250250%_)
                                             (_%initializers250296%_ '()))
                            (let* ((_%__stx252099252100%_ _%rest250295%_)
                                   (_%g250300250321%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx252099252100%_)))))
                              (let ((_%__kont252101252102%_
                                     (lambda (_%g250302250375%_
                                              _%g250303250376%_
                                              _%g250304250377%_)
                                       (let* ((_%slot250404%_
                                               (let ((__tmp252630
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g250304250377%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp252630)))
                                              (_%off250406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass250255%_
                                                  _%slot250404%_))))
                                         (if _%off250406%_
                                             (_%lp250293%_
                                              _%g250302250375%_
                                              (cons (cons _%off250406%_
                                                          _%g250303250376%_)
                                                    _%initializers250296%_))
                                             (let ((__tmp252631
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self250232%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx250228%_
                                                __tmp252631
                                                _%slot250404%_))))))
                                    (_%__kont252103252104%_
                                     (lambda ()
                                       (let ((__tmp252632
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj250291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object250252%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp252635
                                     (cons (cons '%#ref
                                                 (cons _%$obj250291%_ '()))
                                           '()))
                                    (__tmp252633
                                     (let ((__tmp252634
                                            (lambda (_%i250335%_ _%r250336%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self250232%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i250335%_) '()))
                              (cons (cons '%#ref (cons _%$obj250291%_ '()))
                                    (cons (cdr _%i250335%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r250336%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp252634
                                        '()
                                        _%initializers250296%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp252635 __tmp252633)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252632
                                          _%stx250228%_))))
                                    (_%__kont252105252106%_
                                     (lambda ()
                                       (let ((__tmp252636
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj250291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object250252%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj250291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args250250%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj250291%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252636
                                          _%stx250228%_)))))
                                (let* ((_%g250298250338%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx252099252100%_))
                                              (_%__kont252103252104%_)
                                              (_%__kont252105252106%_))))
                                       (_%__match252136252137%_
                                        (lambda (_%e250305250343%_
                                                 _%hd250306250346%_
                                                 _%tl250307250348%_
                                                 _%e250308250351%_
                                                 _%hd250309250354%_
                                                 _%tl250310250356%_
                                                 _%e250311250359%_
                                                 _%hd250312250362%_
                                                 _%tl250313250364%_
                                                 _%e250314250367%_
                                                 _%hd250315250370%_
                                                 _%tl250316250372%_)
                                          (let ((_%g250302250375%_
                                                 _%tl250316250372%_)
                                                (_%g250303250376%_
                                                 _%hd250315250370%_)
                                                (_%g250304250377%_
                                                 _%hd250312250362%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g250304250377%_))
                                                (_%__kont252101252102%_
                                                 _%g250302250375%_
                                                 _%g250303250376%_
                                                 _%g250304250377%_)
                                                (_%__kont252105252106%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx252099252100%_))
                                      (let ((_%e250305250343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx252099252100%_))))
                                        (let ((_%tl250307250348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250305250343%_)))
                                              (_%hd250306250346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250305250343%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd250306250346%_))
                                              (let ((_%e250308250351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd250306250346%_))))
                                                (let ((_%tl250310250356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250308250351%_)))
                                                      (_%hd250309250354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250308250351%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd250309250354%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd250309250354%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250310250356%_))
                      (let ((_%e250311250359%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250310250356%_))))
                        (let ((_%tl250313250364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250311250359%_)))
                              (_%hd250312250362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250311250359%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250313250364%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250307250348%_))
                                  (let ((_%e250314250367%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250307250348%_))))
                                    (let ((_%tl250316250372%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250314250367%_)))
                                          (_%hd250315250370%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250314250367%_))))
                                      (_%__match252136252137%_
                                       _%e250305250343%_
                                       _%hd250306250346%_
                                       _%tl250307250348%_
                                       _%e250308250351%_
                                       _%hd250309250354%_
                                       _%tl250310250356%_
                                       _%e250311250359%_
                                       _%hd250312250362%_
                                       _%tl250313250364%_
                                       _%e250314250367%_
                                       _%hd250315250370%_
                                       _%tl250316250372%_)))
                                  (_%__kont252105252106%_))
                              (_%__kont252105252106%_))))
                      (_%__kont252105252106%_))
                  (_%__kont252105252106%_))
              (_%__kont252105252106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont252105252106%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250298250338%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self250009%_ _%ctx250010%_ _%stx250011%_ _%args250012%_)
        (let* ((_%self250015%_ _%self250009%_)
               (_%arguments-ok?250025%_
                (let ((__method252580
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self250015%_ 'check-arguments))))
                  (if __method252580
                      (let ()
                        (declare (not safe))
                        (__method252580
                         _%self250015%_
                         _%ctx250010%_
                         _%stx250011%_
                         _%args250012%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self250015%_
                                 'check-arguments))
                        '#!void))))
               (_%g250027250037%_
                (lambda (_%g250028250034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250028250034%_))))
               (_%g250026250101%_
                (lambda (_%g250028250040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250028250040%_))
                      (let ((_%e250030250042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g250028250040%_))))
                        (let ((_%hd250031250045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250030250042%_)))
                              (_%tl250032250047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250030250042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250032250047%_))
                              ((lambda (_%g250029250050%_)
                                 (let* ((_%klass250063%_
                                         (let ((__tmp252637
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self250015%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx250011%_
                                            __tmp252637)))
                                        (_%field250065%_
                                         (let ((__tmp252638
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self250015%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass250063%_
                                            __tmp252638)))
                                        (_%object250067%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx250010%_
                                            _%g250029250050%_)))
                                        (_%klass250070%_ _%klass250063%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass250070%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp252639
                                              (cons (if (or _%arguments-ok?250025%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self250015%_
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
                                 _%self250015%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field250065%_ '()))
                        (cons _%object250067%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp252639
                                          _%stx250011%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass250070%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp252640
                                                  (cons (if (or _%arguments-ok?250025%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self250015%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self250015%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field250065%_ '()))
                            (cons _%object250067%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp252640
                                              _%stx250011%_))
                                           (let ((_%$e250089%_
                                                  (let ((__tmp252641
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self250015%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass250070%_
                                                     __tmp252641))))
                                             (if _%$e250089%_
                                                 ((lambda (_%klass250092%_)
                                                    (let ((__tmp252642
                                                           (cons (if (or _%arguments-ok?250025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self250015%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self250015%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field250065%_ '()))
                                     (cons _%object250067%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp252642 _%stx250011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e250089%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self250015%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp252643
                                                            (let ((_%$obj250098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp252644
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp252644))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj250098%_ '())
                                              (cons _%object250067%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass250070%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj250098%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self250015%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field250065%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj250098%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?250025%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj250098%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self250015%_
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
                                                             _%self250015%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj250098%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self250015%_
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
               (gxc#xform-wrap-source __tmp252643 _%stx250011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp252645
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object250067%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self250015%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp252645 _%stx250011%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd250031250045%_)
                              (_%g250027250037%_ _%g250028250040%_))))
                      (_%g250027250037%_ _%g250028250040%_)))))
          (_%g250026250101%_ _%args250012%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass251867 __method-table251868)
        (let ((__check-arguments251869
               (let ((__tmp252646
                      (lambda ()
                        (let ((__method251870
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table251868
                                  'check-arguments
                                  '#f))))
                          (if __method251870
                              __method251870
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp252646)))
              (__slot251871
               (let ((__slot251872
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass251867 'slot))))
                 (if __slot251872
                     __slot251872
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self250009%_ _%ctx250010%_ _%stx250011%_ _%args250012%_)
            (let* ((_%self250015%_ _%self250009%_)
                   (_%arguments-ok?250025%_
                    ((force __check-arguments251869)
                     _%self250015%_
                     _%ctx250010%_
                     _%stx250011%_
                     _%args250012%_))
                   (_%g250027250037%_
                    (lambda (_%g250028250034%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g250028250034%_))))
                   (_%g250026250101%_
                    (lambda (_%g250028250040%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g250028250040%_))
                          (let ((_%e250030250042%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g250028250040%_))))
                            (let ((_%hd250031250045%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250030250042%_)))
                                  (_%tl250032250047%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250030250042%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250032250047%_))
                                  ((lambda (_%g250029250050%_)
                                     (let* ((_%klass250063%_
                                             (let ((__tmp252647
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self250015%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx250011%_
                                                __tmp252647)))
                                            (_%field250065%_
                                             (let ((__tmp252648
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self250015%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass250063%_
                                                __tmp252648)))
                                            (_%object250067%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx250010%_
                                                _%g250029250050%_)))
                                            (_%klass250070%_ _%klass250063%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass250070%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp252649
                                                  (cons (if (or _%arguments-ok?250025%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self250015%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self250015%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field250065%_ '()))
                            (cons _%object250067%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp252649
                                              _%stx250011%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass250070%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp252650
                                                      (cons (if (or _%arguments-ok?250025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self250015%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self250015%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field250065%_ '()))
                                (cons _%object250067%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp252650
                                                  _%stx250011%_))
                                               (let ((_%$e250089%_
                                                      (let ((__tmp252651
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self250015%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass250070%_ __tmp252651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e250089%_
                                                     ((lambda (_%klass250092%_)
                                                        (let ((__tmp252652
                                                               (cons (if (or _%arguments-ok?250025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self250015%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self250015%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field250065%_ '()))
                                         (cons _%object250067%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp252652 _%stx250011%_)))
              _%$e250089%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self250015%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp252653
                                                                (let ((_%$obj250098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252654
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp252654))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj250098%_ '())
                                                  (cons _%object250067%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass250070%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj250098%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self250015%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field250065%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj250098%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?250025%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj250098%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self250015%_
                               __slot251871
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
                        (##unchecked-structure-ref _%self250015%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj250098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self250015%_
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
                   (gxc#xform-wrap-source __tmp252653 _%stx250011%_))
                 (let ((__tmp252655
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object250067%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self250015%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp252655 _%stx250011%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd250031250045%_)
                                  (_%g250027250037%_ _%g250028250040%_))))
                          (_%g250027250037%_ _%g250028250040%_)))))
              (_%g250026250101%_ _%args250012%_))))))
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
      (lambda (_%self249773%_ _%ctx249774%_ _%stx249775%_ _%args249776%_)
        (let* ((_%self249779%_ _%self249773%_)
               (_%arguments-ok?249789%_
                (let ((__method252581
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self249779%_ 'check-arguments))))
                  (if __method252581
                      (let ()
                        (declare (not safe))
                        (__method252581
                         _%self249779%_
                         _%ctx249774%_
                         _%stx249775%_
                         _%args249776%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self249779%_
                                 'check-arguments))
                        '#!void))))
               (_%g249791249805%_
                (lambda (_%g249792249802%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249792249802%_))))
               (_%g249790249884%_
                (lambda (_%g249792249808%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249792249808%_))
                      (let ((_%e249795249810%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g249792249808%_))))
                        (let ((_%hd249796249813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249795249810%_)))
                              (_%tl249797249815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249795249810%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249797249815%_))
                              (let ((_%e249798249818%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249797249815%_))))
                                (let ((_%hd249799249821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249798249818%_)))
                                      (_%tl249800249823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249798249818%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249800249823%_))
                                      ((lambda (_%g249793249826%_
                                                _%g249794249827%_)
                                         (let* ((_%klass249843%_
                                                 (let ((__tmp252656
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self249779%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx249775%_
                                                    __tmp252656)))
                                                (_%field249845%_
                                                 (let ((__tmp252657
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self249779%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass249843%_
                                                    __tmp252657)))
                                                (_%object249847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx249774%_
                                                    _%g249794249827%_)))
                                                (_%value249849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx249774%_
                                                    _%g249793249826%_)))
                                                (_%klass249852%_
                                                 _%klass249843%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass249852%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp252658
                                                      (cons (if (or _%arguments-ok?249789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self249779%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self249779%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field249845%_ '()))
                                (cons _%object249847%_
                                      (cons _%value249849%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp252658
                                                  _%stx249775%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass249852%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp252659
                                                          (cons (if (or _%arguments-ok?249789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self249779%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self249779%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field249845%_ '()))
                                    (cons _%object249847%_
                                          (cons _%value249849%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252659
                                                      _%stx249775%_))
                                                   (let ((_%$e249872%_
                                                          (let ((__tmp252660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self249779%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass249852%_
                     __tmp252660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e249872%_
                                                         ((lambda (_%klass249875%_)
                                                            (let ((__tmp252661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?249789%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self249779%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self249779%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field249845%_ '()))
                                             (cons _%object249847%_
                                                   (cons _%value249849%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252661 _%stx249775%_)))
                  _%$e249872%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self249779%_ '4 '#f '#f))
                     (let ((__tmp252662
                            (let ((_%$obj249881%_
                                   (let ((__tmp252663
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp252663))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj249881%_ '())
                                                      (cons _%object249847%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass249852%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj249881%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self249779%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field249845%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj249881%_
                                                              '()))
                                                  (cons _%value249849%_
                                                        '())))))
                          (cons (if _%arguments-ok?249789%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj249881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self249779%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value249849%_ '())))))
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
                             _%self249779%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj249881%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self249779%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value249849%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp252662 _%stx249775%_))
                     (let ((__tmp252664
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object249847%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self249779%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value249849%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp252664
                        _%stx249775%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd249799249821%_
                                       _%hd249796249813%_)
                                      (_%g249791249805%_ _%g249792249808%_))))
                              (_%g249791249805%_ _%g249792249808%_))))
                      (_%g249791249805%_ _%g249792249808%_)))))
          (_%g249790249884%_ _%args249776%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass251873 __method-table251874)
        (let ((__check-arguments251875
               (let ((__tmp252665
                      (lambda ()
                        (let ((__method251876
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table251874
                                  'check-arguments
                                  '#f))))
                          (if __method251876
                              __method251876
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp252665))))
          (lambda (_%self249773%_ _%ctx249774%_ _%stx249775%_ _%args249776%_)
            (let* ((_%self249779%_ _%self249773%_)
                   (_%arguments-ok?249789%_
                    ((force __check-arguments251875)
                     _%self249779%_
                     _%ctx249774%_
                     _%stx249775%_
                     _%args249776%_))
                   (_%g249791249805%_
                    (lambda (_%g249792249802%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g249792249802%_))))
                   (_%g249790249884%_
                    (lambda (_%g249792249808%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g249792249808%_))
                          (let ((_%e249795249810%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g249792249808%_))))
                            (let ((_%hd249796249813%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249795249810%_)))
                                  (_%tl249797249815%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249795249810%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249797249815%_))
                                  (let ((_%e249798249818%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249797249815%_))))
                                    (let ((_%hd249799249821%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249798249818%_)))
                                          (_%tl249800249823%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249798249818%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249800249823%_))
                                          ((lambda (_%g249793249826%_
                                                    _%g249794249827%_)
                                             (let* ((_%klass249843%_
                                                     (let ((__tmp252666
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self249779%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx249775%_
                                                        __tmp252666)))
                                                    (_%field249845%_
                                                     (let ((__tmp252667
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self249779%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass249843%_
                                                        __tmp252667)))
                                                    (_%object249847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx249774%_
                                                        _%g249794249827%_)))
                                                    (_%value249849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx249774%_
                                                        _%g249793249826%_)))
                                                    (_%klass249852%_
                                                     _%klass249843%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass249852%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp252668
                                                          (cons (if (or _%arguments-ok?249789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self249779%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self249779%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field249845%_ '()))
                                    (cons _%object249847%_
                                          (cons _%value249849%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252668
                                                      _%stx249775%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass249852%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp252669
                                                              (cons (if (or _%arguments-ok?249789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self249779%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self249779%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field249845%_ '()))
                                        (cons _%object249847%_
                                              (cons _%value249849%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp252669 _%stx249775%_))
               (let ((_%$e249872%_
                      (let ((__tmp252670
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self249779%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass249852%_
                         __tmp252670))))
                 (if _%$e249872%_
                     ((lambda (_%klass249875%_)
                        (let ((__tmp252671
                               (cons (if (or _%arguments-ok?249789%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self249779%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self249779%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field249845%_
                                                             '()))
                                                 (cons _%object249847%_
                                                       (cons _%value249849%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp252671 _%stx249775%_)))
                      _%$e249872%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self249779%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp252672
                                (let ((_%$obj249881%_
                                       (let ((__tmp252673
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp252673))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj249881%_
                                                                '())
                                                          (cons _%object249847%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass249852%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj249881%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self249779%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field249845%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj249881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value249849%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?249789%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj249881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self249779%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value249849%_ '())))))
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
                                 _%self249779%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj249881%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self249779%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value249849%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp252672 _%stx249775%_))
                         (let ((__tmp252674
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object249847%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self249779%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value249849%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp252674
                            _%stx249775%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd249799249821%_
                                           _%hd249796249813%_)
                                          (_%g249791249805%_
                                           _%g249792249808%_))))
                                  (_%g249791249805%_ _%g249792249808%_))))
                          (_%g249791249805%_ _%g249792249808%_)))))
              (_%g249790249884%_ _%args249776%_))))))
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
      (lambda (_%self249589%_ _%ctx249590%_ _%stx249591%_ _%args249592%_)
        (let* ((_%self249595%_ _%self249589%_)
               (_%self249604249614%_ _%self249595%_)
               (_%E249606249617%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self249604249614%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K249607249627%_
                (lambda (_%inline249620%_ _%dispatch249621%_ _%arity249622%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self249595%_
                         _%args249592%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx249591%_
                         _%arity249622%_)))
                  (if _%inline249620%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp252675 (_%inline249620%_ _%stx249591%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp252675
                           _%stx249591%_
                           _%ctx249590%_)))
                      (if (and _%dispatch249621%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch249621%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch249621%_))
                            (let ((__tmp252676
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch249621%_
                                                           '()))
                                               _%args249592%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp252676
                               _%stx249591%_
                               _%ctx249590%_)))
                          (gxc#!procedure::optimize-call
                           _%self249595%_
                           _%ctx249590%_
                           _%stx249591%_
                           _%args249592%_)))))
               (_%e249608249630%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249604249614%_ '1 '#f '#f)))
               (_%e249609249633%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249604249614%_ '2 '#f '#f)))
               (_%e249610249636%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249604249614%_ '3 '#f '#f)))
               (_%arity249639%_ _%e249610249636%_)
               (_%e249611249641%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249604249614%_ '4 '#f '#f)))
               (_%dispatch249644%_ _%e249611249641%_)
               (_%e249612249646%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249604249614%_ '5 '#f '#f)))
               (_%inline249649%_ _%e249612249646%_))
          (_%K249607249627%_
           _%inline249649%_
           _%dispatch249644%_
           _%arity249639%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self249441%_ _%ctx249442%_ _%stx249443%_ _%args249444%_)
        (let* ((_%self249447%_ _%self249441%_)
               (_%$e249461%_
                (let ((__tmp252678
                       (lambda (_%g249456249458%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g249456249458%_
                            _%args249444%_))))
                      (__tmp252677
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self249447%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp252678 __tmp252677))))
          (if _%$e249461%_
              ((lambda (_%clause249464%_)
                 (let ((__method252582
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause249464%_ 'optimize-call))))
                   (if __method252582
                       (let ()
                         (declare (not safe))
                         (__method252582
                          _%clause249464%_
                          _%ctx249442%_
                          _%stx249443%_
                          _%args249444%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause249464%_
                                  'optimize-call))
                         '#!void))))
               _%$e249461%_)
              (let ((__tmp252679
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self249447%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx249443%_
                 __tmp252679))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self249182%_ _%ctx249183%_ _%stx249184%_ _%args249185%_)
        (let* ((_%self249188%_ _%self249182%_)
               (_%self249197249206%_ _%self249188%_)
               (_%E249199249209%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self249197249206%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K249200249300%_
                (lambda (_%dispatch249212%_ _%table249213%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch249212%_))
                      (let* ((_%g249214249224%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch249212%_)))
                             (_%else249216249232%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch249212%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx249183%_
                                   _%stx249184%_))))
                             (_%K249218249281%_
                              (lambda (_%main249235%_ _%keys249236%_)
                                (let ((_g252680_
                                       (gxc#!kw-lambda-split-args
                                        _%stx249184%_
                                        _%args249185%_)))
                                  (begin
                                    (let ((_g252681_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g252680_)
                                                 (##values-length _g252680_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g252681_ 2)))
                                          (error "Context expects 2 values"
                                                 _g252681_)))
                                    (let ((_%pargs249238%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g252680_ 0)))
                                          (_%kwargs249239%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g252680_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main249235%_))
                                        (if _%table249213%_
                                            (let ((_%xargs249247%_
                                                   (map (lambda (_%key249241%_)
                                                          (let ((_%$e249243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key249241%_ _%kwargs249239%_))))
                    (if _%$e249243%_ _%$e249243%_ '(%#ref absent-value))))
                _%keys249236%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw249249%_)
                                                 (if (memq (car _%kw249249%_)
                                                           _%keys249236%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx249184%_
                                                        _%keys249236%_
                                                        _%kw249249%_))))
                                               _%kwargs249239%_)
                                              (let ((__tmp252682
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main249235%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs249238%_
                                  _%xargs249247%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp252682
                                                 _%stx249184%_
                                                 _%ctx249183%_)))
                                            (let* ((_%kwt249251%_
                                                    (let ((__tmp252683
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp252683)))
                                                   (_%kwvars249255%_
                                                    (map (lambda (_%_249253%_)
                                                           (let ((__tmp252684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp252684)))
                 _%kwargs249239%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind249260%_
                                                    (map (lambda (_%kw249257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar249258%_)
                   (cons (cons _%kwvar249258%_ '())
                         (cons (cdr _%kw249257%_) '())))
                 _%kwargs249239%_
                 _%kwvars249255%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset249265%_
                                                    (map (lambda (_%kw249262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar249263%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt249251%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw249262%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar249263%_
                                                             '()))
                                                 '()))))))
                 _%kwargs249239%_
                 _%kwvars249255%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs249270%_
                                                    (map (lambda (_%kw249267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar249268%_)
                   (cons (car _%kw249267%_)
                         (cons '%#ref (cons _%kwvar249268%_ '()))))
                 _%kwargs249239%_
                 _%kwvars249255%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs249278%_
                                                    (map (lambda (_%key249272%_)
                                                           (let ((_%$e249274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key249272%_ _%xkwargs249270%_))))
                     (if _%$e249274%_ _%$e249274%_ '(%#ref absent-value))))
                 _%keys249236%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252685
                                                    (cons '%#let-values
                                                          (cons _%kwbind249260%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt249251%_ '())
                                                      (cons (let ((__tmp252686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs249239%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252686 _%stx249184%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp252687
                                                             (cons (let ((__tmp252688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main249235%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt249251%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs249238%_
                                                       _%xargs249278%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp252688 _%stx249184%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp252687 _%kwset249265%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp252685
                                               _%stx249184%_
                                               _%ctx249183%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g249214249224%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e249219249284%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g249214249224%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e249220249287%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g249214249224%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e249221249290%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g249214249224%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys249293%_ _%e249221249290%_)
                                   (_%e249222249295%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g249214249224%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main249298%_ _%e249222249295%_))
                              (_%K249218249281%_
                               _%main249298%_
                               _%keys249293%_))
                            (_%else249216249232%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx249183%_ _%stx249184%_)))))
               (_%e249201249303%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249197249206%_ '1 '#f '#f)))
               (_%e249202249306%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249197249206%_ '2 '#f '#f)))
               (_%e249203249309%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249197249206%_ '3 '#f '#f)))
               (_%table249312%_ _%e249203249309%_)
               (_%e249204249314%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self249197249206%_ '4 '#f '#f)))
               (_%dispatch249317%_ _%e249204249314%_))
          (_%K249200249300%_ _%dispatch249317%_ _%table249312%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx248795%_ _%args248796%_)
        (let _%lp248798%_ ((_%rest248800%_ _%args248796%_)
                           (_%pargs248801%_ '())
                           (_%kwargs248802%_ '()))
          (let* ((_%__stx252141252142%_ _%rest248800%_)
                 (_%g248808248860%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx252141252142%_)))))
            (let ((_%__kont252143252144%_
                   (lambda (_%g248810249039%_ _%g248811249040%_)
                     (_%lp248798%_
                      _%g248810249039%_
                      (cons _%g248811249040%_ _%pargs248801%_)
                      _%kwargs248802%_)))
                  (_%__kont252145252146%_
                   (lambda (_%g248825248985%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g248825248985%_
                                _%pargs248801%_))
                             (reverse _%kwargs248802%_))))
                  (_%__kont252147252148%_
                   (lambda (_%g248836248932%_
                            _%g248837248933%_
                            _%g248838248934%_)
                     (let ((_%kw248951%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g248838248934%_))))
                       (if (assq _%kw248951%_ _%kwargs248802%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx248795%_
                              _%kw248951%_))
                           (_%lp248798%_
                            _%g248836248932%_
                            _%pargs248801%_
                            (cons (cons _%kw248951%_ _%g248837248933%_)
                                  _%kwargs248802%_))))))
                  (_%__kont252149252150%_
                   (lambda (_%g248851248880%_ _%g248852248881%_)
                     (_%lp248798%_
                      _%g248851248880%_
                      (cons _%g248852248881%_ _%pargs248801%_)
                      _%kwargs248802%_)))
                  (_%__kont252151252152%_
                   (lambda ()
                     (values (reverse _%pargs248801%_)
                             (reverse _%kwargs248802%_)))))
              (let ((_%__match252248252249%_
                     (lambda (_%e248839248900%_
                              _%hd248840248903%_
                              _%tl248841248905%_
                              _%e248842248908%_
                              _%hd248843248911%_
                              _%tl248844248913%_
                              _%e248845248916%_
                              _%hd248846248919%_
                              _%tl248847248921%_
                              _%e248848248924%_
                              _%hd248849248927%_
                              _%tl248850248929%_)
                       (let ((_%g248836248932%_ _%tl248850248929%_)
                             (_%g248837248933%_ _%hd248849248927%_)
                             (_%g248838248934%_ _%hd248846248919%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g248838248934%_))
                             (_%__kont252147252148%_
                              _%g248836248932%_
                              _%g248837248933%_
                              _%g248838248934%_)
                             (_%__kont252149252150%_
                              _%tl248841248905%_
                              _%hd248840248903%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx252141252142%_))
                    (let ((_%e248812249004%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx252141252142%_))))
                      (let ((_%tl248814249009%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e248812249004%_)))
                            (_%hd248813249007%_
                             (let ()
                               (declare (not safe))
                               (##car _%e248812249004%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd248813249007%_))
                            (let ((_%e248815249012%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd248813249007%_))))
                              (let ((_%tl248817249017%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e248815249012%_)))
                                    (_%hd248816249015%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e248815249012%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd248816249015%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd248816249015%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl248817249017%_))
                                            (let ((_%e248818249020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl248817249017%_))))
                                              (let ((_%tl248820249025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e248818249020%_)))
                                                    (_%hd248819249023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e248818249020%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd248819249023%_))
                                                    (let ((_%e248821249028%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd248819249023%_))))
                                                      (if (equal? _%e248821249028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl248820249025%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl248814249009%_))
                          (let ((_%e248822249031%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl248814249009%_))))
                            (let ((_%tl248824249036%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248822249031%_)))
                                  (_%hd248823249034%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248822249031%_))))
                              (_%__kont252143252144%_
                               _%tl248824249036%_
                               _%hd248823249034%_)))
                          (_%__kont252149252150%_
                           _%tl248814249009%_
                           _%hd248813249007%_))
                      (_%__kont252149252150%_
                       _%tl248814249009%_
                       _%hd248813249007%_))
                  (if (equal? _%e248821249028%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl248820249025%_))
                          (_%__kont252145252146%_ _%tl248814249009%_)
                          (_%__kont252149252150%_
                           _%tl248814249009%_
                           _%hd248813249007%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl248820249025%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl248814249009%_))
                              (let ((_%e248848248924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl248814249009%_))))
                                (let ((_%tl248850248929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e248848248924%_)))
                                      (_%hd248849248927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e248848248924%_))))
                                  (_%__match252248252249%_
                                   _%e248812249004%_
                                   _%hd248813249007%_
                                   _%tl248814249009%_
                                   _%e248815249012%_
                                   _%hd248816249015%_
                                   _%tl248817249017%_
                                   _%e248818249020%_
                                   _%hd248819249023%_
                                   _%tl248820249025%_
                                   _%e248848248924%_
                                   _%hd248849248927%_
                                   _%tl248850248929%_)))
                              (_%__kont252149252150%_
                               _%tl248814249009%_
                               _%hd248813249007%_))
                          (_%__kont252149252150%_
                           _%tl248814249009%_
                           _%hd248813249007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl248820249025%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl248814249009%_))
                                                            (let ((_%e248848248924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl248814249009%_))))
                      (let ((_%tl248850248929%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e248848248924%_)))
                            (_%hd248849248927%_
                             (let ()
                               (declare (not safe))
                               (##car _%e248848248924%_))))
                        (_%__match252248252249%_
                         _%e248812249004%_
                         _%hd248813249007%_
                         _%tl248814249009%_
                         _%e248815249012%_
                         _%hd248816249015%_
                         _%tl248817249017%_
                         _%e248818249020%_
                         _%hd248819249023%_
                         _%tl248820249025%_
                         _%e248848248924%_
                         _%hd248849248927%_
                         _%tl248850248929%_)))
                    (_%__kont252149252150%_
                     _%tl248814249009%_
                     _%hd248813249007%_))
                (_%__kont252149252150%_
                 _%tl248814249009%_
                 _%hd248813249007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont252149252150%_
                                             _%tl248814249009%_
                                             _%hd248813249007%_))
                                        (_%__kont252149252150%_
                                         _%tl248814249009%_
                                         _%hd248813249007%_))
                                    (_%__kont252149252150%_
                                     _%tl248814249009%_
                                     _%hd248813249007%_))))
                            (_%__kont252149252150%_
                             _%tl248814249009%_
                             _%hd248813249007%_))))
                    (_%__kont252151252152%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self248779%_ _%ctx248780%_ _%stx248781%_ _%args248782%_)
        (let ((_%self248785%_ _%self248779%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx248780%_ _%stx248781%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self248469%_ _%stx248470%_)
        (let* ((_%__stx252257252258%_ _%stx248470%_)
               (_%g248473248513%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx252257252258%_)))))
          (let ((_%__kont252259252260%_
                 (lambda (_%g248475248617%_ _%g248476248618%_)
                   (let ((_%$e248645%_
                          (member 'return:
                                  (let ((__tmp252689
                                         (lambda (_%g248637248640%_
                                                  _%g248638248642%_)
                                           (cons _%g248637248640%_
                                                 _%g248638248642%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp252689
                                     '()
                                     _%g248476248618%_))
                                  gx#stx-eq?)))
                     (if _%$e248645%_
                         ((lambda (_%tail248648%_)
                            (let ((_%type248650%_
                                   (let ((__tmp252690
                                          (let ((__tmp252691
                                                 (cadr _%tail248648%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp252691))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx248470%_
                                      __tmp252690))))
                              (gxc#check-return-type!
                               _%stx248470%_
                               _%g248475248617%_
                               _%type248650%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self248469%_
                                 _%g248475248617%_))))
                          _%$e248645%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self248469%_
                            _%g248475248617%_))))))
                (_%__kont252263252264%_
                 (lambda (_%g248498248542%_ _%g248499248543%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self248469%_ _%g248498248542%_)))))
            (let ((_%__match252294252295%_
                   (lambda (_%e248477248563%_
                            _%hd248478248566%_
                            _%tl248479248568%_
                            _%e248480248571%_
                            _%hd248481248574%_
                            _%tl248482248576%_
                            _%e248483248579%_
                            _%hd248484248582%_
                            _%tl248485248584%_
                            _%__splice252261252262%_
                            _%target248486248587%_
                            _%tl248488248589%_)
                     (letrec ((_%loop248489248592%_
                               (lambda (_%hd248487248595%_
                                        _%signature248493248597%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd248487248595%_))
                                     (let ((_%e248490248599%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd248487248595%_))))
                                       (let ((_%lp-tl248492248604%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e248490248599%_)))
                                             (_%lp-hd248491248602%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e248490248599%_))))
                                         (_%loop248489248592%_
                                          _%lp-tl248492248604%_
                                          (cons _%lp-hd248491248602%_
                                                _%signature248493248597%_))))
                                     (let ((_%signature248494248607%_
                                            (reverse _%signature248493248597%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl248482248576%_))
                                           (let ((_%e248495248609%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl248482248576%_))))
                                             (let ((_%tl248497248614%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e248495248609%_)))
                                                   (_%hd248496248612%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e248495248609%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl248497248614%_))
                                                   (_%__kont252259252260%_
                                                    _%hd248496248612%_
                                                    _%signature248494248607%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g248473248513%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g248473248513%_))))))))
                       (_%loop248489248592%_ _%target248486248587%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx252257252258%_))
                  (let ((_%e248477248563%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx252257252258%_))))
                    (let ((_%tl248479248568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e248477248563%_)))
                          (_%hd248478248566%_
                           (let ()
                             (declare (not safe))
                             (##car _%e248477248563%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl248479248568%_))
                          (let ((_%e248480248571%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl248479248568%_))))
                            (let ((_%tl248482248576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248480248571%_)))
                                  (_%hd248481248574%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248480248571%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd248481248574%_))
                                  (let ((_%e248483248579%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd248481248574%_))))
                                    (let ((_%tl248485248584%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e248483248579%_)))
                                          (_%hd248484248582%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e248483248579%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd248484248582%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd248484248582%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl248485248584%_))
                                                  (let ((_%__splice252261252262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl248485248584%_
                                                            '0))))
                                                    (let ((_%tl248488248589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice252261252262%_
                                                              '1)))
                                                          (_%target248486248587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice252261252262%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl248488248589%_))
                                                          (_%__match252294252295%_
                                                           _%e248477248563%_
                                                           _%hd248478248566%_
                                                           _%tl248479248568%_
                                                           _%e248480248571%_
                                                           _%hd248481248574%_
                                                           _%tl248482248576%_
                                                           _%e248483248579%_
                                                           _%hd248484248582%_
                                                           _%tl248485248584%_
                                                           _%__splice252261252262%_
                                                           _%target248486248587%_
                                                           _%tl248488248589%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl248482248576%_))
                      (let ((_%e248506248534%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl248482248576%_))))
                        (let ((_%tl248508248539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e248506248534%_)))
                              (_%hd248507248537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e248506248534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl248508248539%_))
                              (_%__kont252263252264%_
                               _%hd248507248537%_
                               _%hd248481248574%_)
                              (let ()
                                (declare (not safe))
                                (_%g248473248513%_)))))
                      (let () (declare (not safe)) (_%g248473248513%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl248482248576%_))
                                                      (let ((_%e248506248534%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl248482248576%_))))
                (let ((_%tl248508248539%_
                       (let () (declare (not safe)) (##cdr _%e248506248534%_)))
                      (_%hd248507248537%_
                       (let ()
                         (declare (not safe))
                         (##car _%e248506248534%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl248508248539%_))
                      (_%__kont252263252264%_
                       _%hd248507248537%_
                       _%hd248481248574%_)
                      (let () (declare (not safe)) (_%g248473248513%_)))))
              (let () (declare (not safe)) (_%g248473248513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl248482248576%_))
                                                  (let ((_%e248506248534%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl248482248576%_))))
                                                    (let ((_%tl248508248539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e248506248534%_)))
                                                          (_%hd248507248537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e248506248534%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl248508248539%_))
                                                          (_%__kont252263252264%_
                                                           _%hd248507248537%_
                                                           _%hd248481248574%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g248473248513%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g248473248513%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl248482248576%_))
                                              (let ((_%e248506248534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl248482248576%_))))
                                                (let ((_%tl248508248539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e248506248534%_)))
                                                      (_%hd248507248537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e248506248534%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl248508248539%_))
                                                      (_%__kont252263252264%_
                                                       _%hd248507248537%_
                                                       _%hd248481248574%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g248473248513%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g248473248513%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl248482248576%_))
                                      (let ((_%e248506248534%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl248482248576%_))))
                                        (let ((_%tl248508248539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e248506248534%_)))
                                              (_%hd248507248537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e248506248534%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl248508248539%_))
                                              (_%__kont252263252264%_
                                               _%hd248507248537%_
                                               _%hd248481248574%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g248473248513%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g248473248513%_))))))
                          (let () (declare (not safe)) (_%g248473248513%_)))))
                  (let () (declare (not safe)) (_%g248473248513%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx248444%_ _%expr248445%_ _%type248446%_)
        (let ((_%$e248448%_ (not _%type248446%_)))
          (if _%$e248448%_
              _%$e248448%_
              (let ((_%$e248451%_
                     (eq? (##structure-ref _%type248446%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e248451%_
                    _%$e248451%_
                    (let ((_%$e248454%_
                           (eq? (##structure-ref
                                 _%type248446%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e248454%_
                          _%$e248454%_
                          (let ((_%expr-type248458%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr248445%_))))
                            (if (not _%expr-type248458%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx248444%_
                                   _%type248446%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type248458%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx248444%_
                                       _%type248446%_
                                       _%expr-type248458%_))
                                    (let ((_%$e248462%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type248458%_
                                              'gxc#!abort::t))))
                                      (if _%$e248462%_
                                          _%$e248462%_
                                          (let ((_%$e248465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type248458%_
                                                    _%type248446%_))))
                                            (if _%$e248465%_
                                                _%$e248465%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx248444%_
                                                   _%type248446%_
                                                   _%expr-type248458%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self247870%_ _%stx247871%_)
        (let* ((_%__stx252339252340%_ _%stx247871%_)
               (_%g247876247986%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx252339252340%_)))))
          (let ((_%__kont252341252342%_
                 (lambda (_%g247878248418%_
                          _%g247879248419%_
                          _%g247880248420%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g247880248420%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self247870%_ _%g247879248419%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self247870%_
                          _%g247878248418%_)))))
                (_%__kont252343252344%_
                 (lambda (_%g247899248244%_
                          _%g247900248245%_
                          _%g247901248246%_
                          _%g247902248247%_)
                   (let ((_%$e248279%_
                          (let ((__tmp252692
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g247902248247%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp252692))))
                     (if _%$e248279%_
                         ((lambda (_%pred-type248282%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type248282%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type248282%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test248287%_
                                        (let ((__tmp252693
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g247902248247%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g247901248246%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp252693
                                           _%stx247871%_
                                           _%self247870%_)))
                                       (_%K248291%_
                                        (let ((__tmp252694
                                               (lambda ()
                                                 (let ((__tmp252697
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self247870%_
                                                             _%g247900248245%_))))
                                                       (__tmp252695
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g247901248246%_))
                            (let ((__tmp252696
                                   (##structure-ref
                                    _%pred-type248282%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx247871%_
                               __tmp252696)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp252697
                                                    gxc#current-compile-path-type
                                                    __tmp252695)))))
                                          (declare (not safe))
                                          (__make-promise __tmp252694)))
                                       (_%E248294%_
                                        (let ((__tmp252698
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self247870%_
                                                    _%g247899248244%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp252698)))
                                       (_%__stx252317252318%_ _%test248287%_)
                                       (_%g248298248312%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx252317252318%_)))))
                                  (let ((_%__kont252319252320%_
                                         (lambda (_%g248300248340%_
                                                  _%g248301248341%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g248300248340%_))
                                               (force _%K248291%_)
                                               (force _%E248294%_))))
                                        (_%__kont252321252322%_
                                         (lambda ()
                                           (let ((__tmp252699
                                                  (cons '%#if
                                                        (cons _%test248287%_
                                                              (cons (force _%K248291%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E248294%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp252699
                                              _%stx247871%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx252317252318%_))
                                        (let ((_%e248302248324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx252317252318%_))))
                                          (let ((_%tl248304248329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e248302248324%_)))
                                                (_%hd248303248327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e248302248324%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl248304248329%_))
                                                (let ((_%e248305248332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl248304248329%_))))
                                                  (let ((_%tl248307248337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e248305248332%_)))
                                                        (_%hd248306248335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e248305248332%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl248307248337%_))
                                                        (_%__kont252319252320%_
                                                         _%hd248306248335%_
                                                         _%hd248303248327%_)
                                                        (_%__kont252321252322%_))))
                                                (_%__kont252321252322%_))))
                                        (_%__kont252321252322%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self247870%_
                                   _%stx247871%_))))
                          _%$e248279%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self247870%_
                            _%stx247871%_))))))
                (_%__kont252345252346%_
                 (lambda (_%g247936248120%_
                          _%g247937248121%_
                          _%g247938248122%_
                          _%g247939248123%_)
                   (gxc#optimize-if%
                    _%self247870%_
                    (let ((__tmp252700
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g247938248122%_
                                       (cons _%g247936248120%_
                                             (cons _%g247937248121%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252700 _%stx247871%_)))))
                (_%__kont252347252348%_
                 (lambda (_%g247967248023%_
                          _%g247968248024%_
                          _%g247969248025%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self247870%_ _%stx247871%_)))))
            (let ((_%__match252546252547%_
                   (lambda (_%e247940248048%_
                            _%hd247941248051%_
                            _%tl247942248053%_
                            _%e247943248056%_
                            _%hd247944248059%_
                            _%tl247945248061%_
                            _%e247946248064%_
                            _%hd247947248067%_
                            _%tl247948248069%_
                            _%e247949248072%_
                            _%hd247950248075%_
                            _%tl247951248077%_
                            _%e247952248080%_
                            _%hd247953248083%_
                            _%tl247954248085%_
                            _%e247955248088%_
                            _%hd247956248091%_
                            _%tl247957248093%_
                            _%e247958248096%_
                            _%hd247959248099%_
                            _%tl247960248101%_
                            _%e247961248104%_
                            _%hd247962248107%_
                            _%tl247963248109%_
                            _%e247964248112%_
                            _%hd247965248115%_
                            _%tl247966248117%_)
                     (let ((_%g247936248120%_ _%hd247965248115%_)
                           (_%g247937248121%_ _%hd247962248107%_)
                           (_%g247938248122%_ _%hd247959248099%_)
                           (_%g247939248123%_ _%hd247956248091%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g247939248123%_ 'not))
                           (_%__kont252345252346%_
                            _%g247936248120%_
                            _%g247937248121%_
                            _%g247938248122%_
                            _%g247939248123%_)
                           (_%__kont252347252348%_
                            _%hd247965248115%_
                            _%hd247962248107%_
                            _%hd247944248059%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx252339252340%_))
                  (let ((_%e247881248370%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx252339252340%_))))
                    (let ((_%tl247883248375%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247881248370%_)))
                          (_%hd247882248373%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247881248370%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247883248375%_))
                          (let ((_%e247884248378%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247883248375%_))))
                            (let ((_%tl247886248383%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247884248378%_)))
                                  (_%hd247885248381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247884248378%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd247885248381%_))
                                  (let ((_%e247887248386%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd247885248381%_))))
                                    (let ((_%tl247889248391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247887248386%_)))
                                          (_%hd247888248389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247887248386%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd247888248389%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd247888248389%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247889248391%_))
                                                  (let ((_%e247890248394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247889248391%_))))
                                                    (let ((_%tl247892248399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247890248394%_)))
                                                          (_%hd247891248397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247890248394%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247892248399%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl247886248383%_))
                      (let ((_%e247893248402%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247886248383%_))))
                        (let ((_%tl247895248407%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247893248402%_)))
                              (_%hd247894248405%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247893248402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl247895248407%_))
                              (let ((_%e247896248410%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl247895248407%_))))
                                (let ((_%tl247898248415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e247896248410%_)))
                                      (_%hd247897248413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e247896248410%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl247898248415%_))
                                      (_%__kont252341252342%_
                                       _%hd247897248413%_
                                       _%hd247894248405%_
                                       _%hd247891248397%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g247876247986%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g247876247986%_)))))
                      (let () (declare (not safe)) (_%g247876247986%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl247886248383%_))
                      (let ((_%e247976248007%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247886248383%_))))
                        (let ((_%tl247978248012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247976248007%_)))
                              (_%hd247977248010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247976248007%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl247978248012%_))
                              (let ((_%e247979248015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl247978248012%_))))
                                (let ((_%tl247981248020%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e247979248015%_)))
                                      (_%hd247980248018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e247979248015%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl247981248020%_))
                                      (_%__kont252347252348%_
                                       _%hd247980248018%_
                                       _%hd247977248010%_
                                       _%hd247885248381%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g247876247986%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g247876247986%_)))))
                      (let () (declare (not safe)) (_%g247876247986%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247886248383%_))
                                                      (let ((_%e247976248007%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247886248383%_))))
                (let ((_%tl247978248012%_
                       (let () (declare (not safe)) (##cdr _%e247976248007%_)))
                      (_%hd247977248010%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247976248007%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl247978248012%_))
                      (let ((_%e247979248015%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247978248012%_))))
                        (let ((_%tl247981248020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247979248015%_)))
                              (_%hd247980248018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247979248015%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247981248020%_))
                              (_%__kont252347252348%_
                               _%hd247980248018%_
                               _%hd247977248010%_
                               _%hd247885248381%_)
                              (let ()
                                (declare (not safe))
                                (_%g247876247986%_)))))
                      (let () (declare (not safe)) (_%g247876247986%_)))))
              (let () (declare (not safe)) (_%g247876247986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd247888248389%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247889248391%_))
                                                      (let ((_%e247912248180%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247889248391%_))))
                (let ((_%tl247914248185%_
                       (let () (declare (not safe)) (##cdr _%e247912248180%_)))
                      (_%hd247913248183%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247912248180%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd247913248183%_))
                      (let ((_%e247915248188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd247913248183%_))))
                        (let ((_%tl247917248193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247915248188%_)))
                              (_%hd247916248191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247915248188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd247916248191%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd247916248191%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247917248193%_))
                                      (let ((_%e247918248196%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247917248193%_))))
                                        (let ((_%tl247920248201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247918248196%_)))
                                              (_%hd247919248199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247918248196%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl247920248201%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247914248185%_))
                                                  (let ((_%e247921248204%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247914248185%_))))
                                                    (let ((_%tl247923248209%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247921248204%_)))
                                                          (_%hd247922248207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247921248204%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd247922248207%_))
                                                          (let ((_%e247924248212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd247922248207%_))))
                    (let ((_%tl247926248217%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247924248212%_)))
                          (_%hd247925248215%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247924248212%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd247925248215%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd247925248215%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247926248217%_))
                                  (let ((_%e247927248220%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247926248217%_))))
                                    (let ((_%tl247929248225%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247927248220%_)))
                                          (_%hd247928248223%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247927248220%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl247929248225%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl247923248209%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247886248383%_))
                                                  (let ((_%e247930248228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247886248383%_))))
                                                    (let ((_%tl247932248233%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247930248228%_)))
                                                          (_%hd247931248231%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247930248228%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247932248233%_))
                                                          (let ((_%e247933248236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247932248233%_))))
                    (let ((_%tl247935248241%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247933248236%_)))
                          (_%hd247934248239%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247933248236%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247935248241%_))
                          (_%__kont252343252344%_
                           _%hd247934248239%_
                           _%hd247931248231%_
                           _%hd247928248223%_
                           _%hd247919248199%_)
                          (let () (declare (not safe)) (_%g247876247986%_)))))
                  (let () (declare (not safe)) (_%g247876247986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247886248383%_))
                                                  (let ((_%e247976248007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247886248383%_))))
                                                    (let ((_%tl247978248012%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247976248007%_)))
                                                          (_%hd247977248010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247976248007%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247978248012%_))
                                                          (let ((_%e247979248015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247978248012%_))))
                    (let ((_%tl247981248020%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247979248015%_)))
                          (_%hd247980248018%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247979248015%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247981248020%_))
                          (_%__kont252347252348%_
                           _%hd247980248018%_
                           _%hd247977248010%_
                           _%hd247885248381%_)
                          (let () (declare (not safe)) (_%g247876247986%_)))))
                  (let () (declare (not safe)) (_%g247876247986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl247923248209%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247886248383%_))
                                                  (let ((_%e247961248104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247886248383%_))))
                                                    (let ((_%tl247963248109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247961248104%_)))
                                                          (_%hd247962248107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247961248104%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247963248109%_))
                                                          (let ((_%e247964248112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247963248109%_))))
                    (let ((_%tl247966248117%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247964248112%_)))
                          (_%hd247965248115%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247964248112%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247966248117%_))
                          (_%__match252546252547%_
                           _%e247881248370%_
                           _%hd247882248373%_
                           _%tl247883248375%_
                           _%e247884248378%_
                           _%hd247885248381%_
                           _%tl247886248383%_
                           _%e247887248386%_
                           _%hd247888248389%_
                           _%tl247889248391%_
                           _%e247912248180%_
                           _%hd247913248183%_
                           _%tl247914248185%_
                           _%e247915248188%_
                           _%hd247916248191%_
                           _%tl247917248193%_
                           _%e247918248196%_
                           _%hd247919248199%_
                           _%tl247920248201%_
                           _%e247921248204%_
                           _%hd247922248207%_
                           _%tl247923248209%_
                           _%e247961248104%_
                           _%hd247962248107%_
                           _%tl247963248109%_
                           _%e247964248112%_
                           _%hd247965248115%_
                           _%tl247966248117%_)
                          (let () (declare (not safe)) (_%g247876247986%_)))))
                  (let () (declare (not safe)) (_%g247876247986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247886248383%_))
                                                  (let ((_%e247976248007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247886248383%_))))
                                                    (let ((_%tl247978248012%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247976248007%_)))
                                                          (_%hd247977248010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247976248007%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247978248012%_))
                                                          (let ((_%e247979248015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247978248012%_))))
                    (let ((_%tl247981248020%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247979248015%_)))
                          (_%hd247980248018%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247979248015%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247981248020%_))
                          (_%__kont252347252348%_
                           _%hd247980248018%_
                           _%hd247977248010%_
                           _%hd247885248381%_)
                          (let () (declare (not safe)) (_%g247876247986%_)))))
                  (let () (declare (not safe)) (_%g247876247986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl247923248209%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247886248383%_))
                                          (let ((_%e247961248104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247886248383%_))))
                                            (let ((_%tl247963248109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247961248104%_)))
                                                  (_%hd247962248107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247961248104%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247963248109%_))
                                                  (let ((_%e247964248112%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247963248109%_))))
                                                    (let ((_%tl247966248117%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247964248112%_)))
                                                          (_%hd247965248115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247964248112%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247966248117%_))
                                                          (_%__match252546252547%_
                                                           _%e247881248370%_
                                                           _%hd247882248373%_
                                                           _%tl247883248375%_
                                                           _%e247884248378%_
                                                           _%hd247885248381%_
                                                           _%tl247886248383%_
                                                           _%e247887248386%_
                                                           _%hd247888248389%_
                                                           _%tl247889248391%_
                                                           _%e247912248180%_
                                                           _%hd247913248183%_
                                                           _%tl247914248185%_
                                                           _%e247915248188%_
                                                           _%hd247916248191%_
                                                           _%tl247917248193%_
                                                           _%e247918248196%_
                                                           _%hd247919248199%_
                                                           _%tl247920248201%_
                                                           _%e247921248204%_
                                                           _%hd247922248207%_
                                                           _%tl247923248209%_
                                                           _%e247961248104%_
                                                           _%hd247962248107%_
                                                           _%tl247963248109%_
                                                           _%e247964248112%_
                                                           _%hd247965248115%_
                                                           _%tl247966248117%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g247876247986%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247876247986%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247886248383%_))
                                          (let ((_%e247976248007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247886248383%_))))
                                            (let ((_%tl247978248012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247976248007%_)))
                                                  (_%hd247977248010%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247976248007%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247978248012%_))
                                                  (let ((_%e247979248015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247978248012%_))))
                                                    (let ((_%tl247981248020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247979248015%_)))
                                                          (_%hd247980248018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247979248015%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247981248020%_))
                                                          (_%__kont252347252348%_
                                                           _%hd247980248018%_
                                                           _%hd247977248010%_
                                                           _%hd247885248381%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g247876247986%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247876247986%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl247923248209%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247886248383%_))
                                      (let ((_%e247961248104%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247886248383%_))))
                                        (let ((_%tl247963248109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247961248104%_)))
                                              (_%hd247962248107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247961248104%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247963248109%_))
                                              (let ((_%e247964248112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247963248109%_))))
                                                (let ((_%tl247966248117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247964248112%_)))
                                                      (_%hd247965248115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247964248112%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247966248117%_))
                                                      (_%__match252546252547%_
                                                       _%e247881248370%_
                                                       _%hd247882248373%_
                                                       _%tl247883248375%_
                                                       _%e247884248378%_
                                                       _%hd247885248381%_
                                                       _%tl247886248383%_
                                                       _%e247887248386%_
                                                       _%hd247888248389%_
                                                       _%tl247889248391%_
                                                       _%e247912248180%_
                                                       _%hd247913248183%_
                                                       _%tl247914248185%_
                                                       _%e247915248188%_
                                                       _%hd247916248191%_
                                                       _%tl247917248193%_
                                                       _%e247918248196%_
                                                       _%hd247919248199%_
                                                       _%tl247920248201%_
                                                       _%e247921248204%_
                                                       _%hd247922248207%_
                                                       _%tl247923248209%_
                                                       _%e247961248104%_
                                                       _%hd247962248107%_
                                                       _%tl247963248109%_
                                                       _%e247964248112%_
                                                       _%hd247965248115%_
                                                       _%tl247966248117%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247876247986%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247876247986%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247876247986%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247886248383%_))
                                      (let ((_%e247976248007%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247886248383%_))))
                                        (let ((_%tl247978248012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247976248007%_)))
                                              (_%hd247977248010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247976248007%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247978248012%_))
                                              (let ((_%e247979248015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247978248012%_))))
                                                (let ((_%tl247981248020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247979248015%_)))
                                                      (_%hd247980248018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247979248015%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247981248020%_))
                                                      (_%__kont252347252348%_
                                                       _%hd247980248018%_
                                                       _%hd247977248010%_
                                                       _%hd247885248381%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247876247986%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247876247986%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247876247986%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247923248209%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247886248383%_))
                                  (let ((_%e247961248104%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247886248383%_))))
                                    (let ((_%tl247963248109%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247961248104%_)))
                                          (_%hd247962248107%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247961248104%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247963248109%_))
                                          (let ((_%e247964248112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247963248109%_))))
                                            (let ((_%tl247966248117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247964248112%_)))
                                                  (_%hd247965248115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247964248112%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl247966248117%_))
                                                  (_%__match252546252547%_
                                                   _%e247881248370%_
                                                   _%hd247882248373%_
                                                   _%tl247883248375%_
                                                   _%e247884248378%_
                                                   _%hd247885248381%_
                                                   _%tl247886248383%_
                                                   _%e247887248386%_
                                                   _%hd247888248389%_
                                                   _%tl247889248391%_
                                                   _%e247912248180%_
                                                   _%hd247913248183%_
                                                   _%tl247914248185%_
                                                   _%e247915248188%_
                                                   _%hd247916248191%_
                                                   _%tl247917248193%_
                                                   _%e247918248196%_
                                                   _%hd247919248199%_
                                                   _%tl247920248201%_
                                                   _%e247921248204%_
                                                   _%hd247922248207%_
                                                   _%tl247923248209%_
                                                   _%e247961248104%_
                                                   _%hd247962248107%_
                                                   _%tl247963248109%_
                                                   _%e247964248112%_
                                                   _%hd247965248115%_
                                                   _%tl247966248117%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247876247986%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247876247986%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247886248383%_))
                                  (let ((_%e247976248007%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247886248383%_))))
                                    (let ((_%tl247978248012%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247976248007%_)))
                                          (_%hd247977248010%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247976248007%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247978248012%_))
                                          (let ((_%e247979248015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247978248012%_))))
                                            (let ((_%tl247981248020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247979248015%_)))
                                                  (_%hd247980248018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247979248015%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl247981248020%_))
                                                  (_%__kont252347252348%_
                                                   _%hd247980248018%_
                                                   _%hd247977248010%_
                                                   _%hd247885248381%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247876247986%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247876247986%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247923248209%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247886248383%_))
                          (let ((_%e247961248104%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247886248383%_))))
                            (let ((_%tl247963248109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247961248104%_)))
                                  (_%hd247962248107%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247961248104%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247963248109%_))
                                  (let ((_%e247964248112%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247963248109%_))))
                                    (let ((_%tl247966248117%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247964248112%_)))
                                          (_%hd247965248115%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247964248112%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl247966248117%_))
                                          (_%__match252546252547%_
                                           _%e247881248370%_
                                           _%hd247882248373%_
                                           _%tl247883248375%_
                                           _%e247884248378%_
                                           _%hd247885248381%_
                                           _%tl247886248383%_
                                           _%e247887248386%_
                                           _%hd247888248389%_
                                           _%tl247889248391%_
                                           _%e247912248180%_
                                           _%hd247913248183%_
                                           _%tl247914248185%_
                                           _%e247915248188%_
                                           _%hd247916248191%_
                                           _%tl247917248193%_
                                           _%e247918248196%_
                                           _%hd247919248199%_
                                           _%tl247920248201%_
                                           _%e247921248204%_
                                           _%hd247922248207%_
                                           _%tl247923248209%_
                                           _%e247961248104%_
                                           _%hd247962248107%_
                                           _%tl247963248109%_
                                           _%e247964248112%_
                                           _%hd247965248115%_
                                           _%tl247966248117%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g247876247986%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247876247986%_)))))
                          (let () (declare (not safe)) (_%g247876247986%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247886248383%_))
                          (let ((_%e247976248007%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247886248383%_))))
                            (let ((_%tl247978248012%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247976248007%_)))
                                  (_%hd247977248010%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247976248007%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247978248012%_))
                                  (let ((_%e247979248015%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247978248012%_))))
                                    (let ((_%tl247981248020%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247979248015%_)))
                                          (_%hd247980248018%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247979248015%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl247981248020%_))
                                          (_%__kont252347252348%_
                                           _%hd247980248018%_
                                           _%hd247977248010%_
                                           _%hd247885248381%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g247876247986%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247876247986%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g247876247986%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247886248383%_))
                                                      (let ((_%e247976248007%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247886248383%_))))
                (let ((_%tl247978248012%_
                       (let () (declare (not safe)) (##cdr _%e247976248007%_)))
                      (_%hd247977248010%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247976248007%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl247978248012%_))
                      (let ((_%e247979248015%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247978248012%_))))
                        (let ((_%tl247981248020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247979248015%_)))
                              (_%hd247980248018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247979248015%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247981248020%_))
                              (_%__kont252347252348%_
                               _%hd247980248018%_
                               _%hd247977248010%_
                               _%hd247885248381%_)
                              (let ()
                                (declare (not safe))
                                (_%g247876247986%_)))))
                      (let () (declare (not safe)) (_%g247876247986%_)))))
              (let () (declare (not safe)) (_%g247876247986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247886248383%_))
                                                  (let ((_%e247976248007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247886248383%_))))
                                                    (let ((_%tl247978248012%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247976248007%_)))
                                                          (_%hd247977248010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247976248007%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl247978248012%_))
                                                          (let ((_%e247979248015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247978248012%_))))
                    (let ((_%tl247981248020%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247979248015%_)))
                          (_%hd247980248018%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247979248015%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247981248020%_))
                          (_%__kont252347252348%_
                           _%hd247980248018%_
                           _%hd247977248010%_
                           _%hd247885248381%_)
                          (let () (declare (not safe)) (_%g247876247986%_)))))
                  (let () (declare (not safe)) (_%g247876247986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247886248383%_))
                                          (let ((_%e247976248007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247886248383%_))))
                                            (let ((_%tl247978248012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247976248007%_)))
                                                  (_%hd247977248010%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247976248007%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247978248012%_))
                                                  (let ((_%e247979248015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247978248012%_))))
                                                    (let ((_%tl247981248020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247979248015%_)))
                                                          (_%hd247980248018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247979248015%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247981248020%_))
                                                          (_%__kont252347252348%_
                                                           _%hd247980248018%_
                                                           _%hd247977248010%_
                                                           _%hd247885248381%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g247876247986%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247876247986%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247886248383%_))
                                      (let ((_%e247976248007%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247886248383%_))))
                                        (let ((_%tl247978248012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247976248007%_)))
                                              (_%hd247977248010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247976248007%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247978248012%_))
                                              (let ((_%e247979248015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247978248012%_))))
                                                (let ((_%tl247981248020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247979248015%_)))
                                                      (_%hd247980248018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247979248015%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247981248020%_))
                                                      (_%__kont252347252348%_
                                                       _%hd247980248018%_
                                                       _%hd247977248010%_
                                                       _%hd247885248381%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247876247986%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247876247986%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247876247986%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247886248383%_))
                                  (let ((_%e247976248007%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247886248383%_))))
                                    (let ((_%tl247978248012%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247976248007%_)))
                                          (_%hd247977248010%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247976248007%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl247978248012%_))
                                          (let ((_%e247979248015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl247978248012%_))))
                                            (let ((_%tl247981248020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e247979248015%_)))
                                                  (_%hd247980248018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e247979248015%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl247981248020%_))
                                                  (_%__kont252347252348%_
                                                   _%hd247980248018%_
                                                   _%hd247977248010%_
                                                   _%hd247885248381%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247876247986%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g247876247986%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247876247986%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247886248383%_))
                          (let ((_%e247976248007%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247886248383%_))))
                            (let ((_%tl247978248012%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247976248007%_)))
                                  (_%hd247977248010%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247976248007%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl247978248012%_))
                                  (let ((_%e247979248015%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl247978248012%_))))
                                    (let ((_%tl247981248020%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247979248015%_)))
                                          (_%hd247980248018%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247979248015%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl247981248020%_))
                                          (_%__kont252347252348%_
                                           _%hd247980248018%_
                                           _%hd247977248010%_
                                           _%hd247885248381%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g247876247986%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g247876247986%_)))))
                          (let () (declare (not safe)) (_%g247876247986%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl247886248383%_))
                  (let ((_%e247976248007%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl247886248383%_))))
                    (let ((_%tl247978248012%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247976248007%_)))
                          (_%hd247977248010%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247976248007%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247978248012%_))
                          (let ((_%e247979248015%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247978248012%_))))
                            (let ((_%tl247981248020%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247979248015%_)))
                                  (_%hd247980248018%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247979248015%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl247981248020%_))
                                  (_%__kont252347252348%_
                                   _%hd247980248018%_
                                   _%hd247977248010%_
                                   _%hd247885248381%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g247876247986%_)))))
                          (let () (declare (not safe)) (_%g247876247986%_)))))
                  (let () (declare (not safe)) (_%g247876247986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247886248383%_))
                                                      (let ((_%e247976248007%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247886248383%_))))
                (let ((_%tl247978248012%_
                       (let () (declare (not safe)) (##cdr _%e247976248007%_)))
                      (_%hd247977248010%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247976248007%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl247978248012%_))
                      (let ((_%e247979248015%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247978248012%_))))
                        (let ((_%tl247981248020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247979248015%_)))
                              (_%hd247980248018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247979248015%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247981248020%_))
                              (_%__kont252347252348%_
                               _%hd247980248018%_
                               _%hd247977248010%_
                               _%hd247885248381%_)
                              (let ()
                                (declare (not safe))
                                (_%g247876247986%_)))))
                      (let () (declare (not safe)) (_%g247876247986%_)))))
              (let () (declare (not safe)) (_%g247876247986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247886248383%_))
                                              (let ((_%e247976248007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247886248383%_))))
                                                (let ((_%tl247978248012%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247976248007%_)))
                                                      (_%hd247977248010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247976248007%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247978248012%_))
                                                      (let ((_%e247979248015%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247978248012%_))))
                (let ((_%tl247981248020%_
                       (let () (declare (not safe)) (##cdr _%e247979248015%_)))
                      (_%hd247980248018%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247979248015%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247981248020%_))
                      (_%__kont252347252348%_
                       _%hd247980248018%_
                       _%hd247977248010%_
                       _%hd247885248381%_)
                      (let () (declare (not safe)) (_%g247876247986%_)))))
              (let () (declare (not safe)) (_%g247876247986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g247876247986%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247886248383%_))
                                      (let ((_%e247976248007%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247886248383%_))))
                                        (let ((_%tl247978248012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247976248007%_)))
                                              (_%hd247977248010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247976248007%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247978248012%_))
                                              (let ((_%e247979248015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247978248012%_))))
                                                (let ((_%tl247981248020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247979248015%_)))
                                                      (_%hd247980248018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247979248015%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247981248020%_))
                                                      (_%__kont252347252348%_
                                                       _%hd247980248018%_
                                                       _%hd247977248010%_
                                                       _%hd247885248381%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247876247986%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247876247986%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247876247986%_))))))
                          (let () (declare (not safe)) (_%g247876247986%_)))))
                  (let () (declare (not safe)) (_%g247876247986%_))))))))))
