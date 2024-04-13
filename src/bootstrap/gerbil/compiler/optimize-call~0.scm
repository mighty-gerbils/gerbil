(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1713001414)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp195683 (list gxc#::basic-xform::t))
            (__tmp195682 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp195683
         '()
         __tmp195682
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args194960%_
        (apply make-instance gxc#::optimize-call::t _%$args194960%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp195684
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
        (__make-promise __tmp195684)))
    (define gxc#apply-optimize-call
      (lambda (_%stx194952%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self194955%_
                (let ((__obj195674
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj195674))
               (__tmp195685
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194955%_ _%stx194952%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195685
           gxc#current-compile-method
           _%self194955%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp195687 (list gxc#::void::t))
            (__tmp195686 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp195687
         '()
         __tmp195686
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args194949%_
        (apply make-instance gxc#::check-return-type::t _%$args194949%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp195688
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
        (__make-promise __tmp195688)))
    (define gxc#apply-check-return-type
      (lambda (_%stx194941%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self194944%_
                (let ((__obj195676
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj195676))
               (__tmp195689
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194944%_ _%stx194941%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195689
           gxc#current-compile-method
           _%self194944%_))))
    (define gxc#optimize-call%
      (lambda (_%self194542%_ _%stx194543%_)
        (let* ((_%__stx195029195030%_ _%stx194543%_)
               (_%g194546194592%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195029195030%_)))))
          (let ((_%__kont195031195032%_
                 (lambda (_%L194735%_ _%L194736%_)
                   (let* ((_%rator-id194756%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L194736%_)))
                          (_%rator-type194758%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id194756%_))))
                     (if (or (not _%rator-type194758%_)
                             (eq? (##structure-ref
                                   _%rator-type194758%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self194542%_ _%stx194543%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type194758%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp195690
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type194758%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id194756%_
                                  '" => "
                                  _%rator-type194758%_
                                  '" "
                                  __tmp195690))
                               (let* ((_%optimized194773%_
                                       (let ((__method195677
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type194758%_
                                                 'optimize-call))))
                                         (if __method195677
                                             (let ((__tmp195691
                                                    (let ((__tmp195692
                                                           (lambda (_%g194765194768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g194766194770%_)
                     (cons _%g194765194768%_ _%g194766194770%_))))
              (declare (not safe))
              (__foldr1 __tmp195692 '() _%L194735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method195677
                                                _%rator-type194758%_
                                                _%self194542%_
                                                _%stx194543%_
                                                __tmp195691))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type194758%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx194977194978%_
                                       _%optimized194773%_)
                                      (_%g194776194805%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx194977194978%_)))))
                                 (let ((_%__kont194979194980%_
                                        (lambda (_%L194873%_ _%L194874%_)
                                          (let* ((_%optimized-rator-id194901%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L194874%_)))
                                                 (_%rator-type194906%_
                                                  (let ((_%$e194903%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id194901%_))))
                                                    (if _%$e194903%_
                                                        _%$e194903%_
                                                        _%rator-type194758%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type194906%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id194901%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type194906%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type194906%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized194773%_
                                                (let ((__tmp195693
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L194874%_ '()))
                           (let ((__tmp195694
                                  (lambda (_%g194914194917%_ _%g194915194919%_)
                                    (cons _%g194914194917%_
                                          _%g194915194919%_))))
                             (declare (not safe))
                             (__foldr1 __tmp195694 '() _%L194873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp195693
                                                   _%stx194543%_))))))
                                       (_%__kont194983194984%_
                                        (lambda () _%optimized194773%_)))
                                   (let ((_%__match195026195027%_
                                          (lambda (_%e194780194817%_
                                                   _%hd194781194820%_
                                                   _%tl194782194822%_
                                                   _%e194783194825%_
                                                   _%hd194784194828%_
                                                   _%tl194785194830%_
                                                   _%e194786194833%_
                                                   _%hd194787194836%_
                                                   _%tl194788194838%_
                                                   _%e194789194841%_
                                                   _%hd194790194844%_
                                                   _%tl194791194846%_
                                                   _%__splice194981194982%_
                                                   _%target194792194849%_
                                                   _%tl194794194851%_)
                                            (letrec ((_%loop194795194854%_
                                                      (lambda (_%hd194793194857%_
                                                               _%arg194799194859%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd194793194857%_))
                                                            (let ((_%e194796194862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd194793194857%_))))
                      (let ((_%lp-tl194798194867%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194796194862%_)))
                            (_%lp-hd194797194865%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194796194862%_))))
                        (_%loop194795194854%_
                         _%lp-tl194798194867%_
                         (cons _%lp-hd194797194865%_ _%arg194799194859%_))))
                    (let ((_%arg194800194870%_ (reverse _%arg194799194859%_)))
                      (_%__kont194979194980%_
                       _%arg194800194870%_
                       _%hd194790194844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop194795194854%_
                                               _%target194792194849%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx194977194978%_))
                                         (let ((_%e194780194817%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx194977194978%_))))
                                           (let ((_%tl194782194822%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194780194817%_)))
                                                 (_%hd194781194820%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194780194817%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd194781194820%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd194781194820%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl194782194822%_))
                                                         (let ((_%e194783194825%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl194782194822%_))))
                   (let ((_%tl194785194830%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e194783194825%_)))
                         (_%hd194784194828%_
                          (let ()
                            (declare (not safe))
                            (##car _%e194783194825%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd194784194828%_))
                         (let ((_%e194786194833%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd194784194828%_))))
                           (let ((_%tl194788194838%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e194786194833%_)))
                                 (_%hd194787194836%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e194786194833%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd194787194836%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd194787194836%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl194788194838%_))
                                         (let ((_%e194789194841%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl194788194838%_))))
                                           (let ((_%tl194791194846%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194789194841%_)))
                                                 (_%hd194790194844%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194789194841%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl194791194846%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl194785194830%_))
                                                     (let ((_%__splice194981194982%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl194785194830%_
                                                               '0))))
                                                       (let ((_%tl194794194851%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice194981194982%_ '1)))
                     (_%target194792194849%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice194981194982%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl194794194851%_))
                     (_%__match195026195027%_
                      _%e194780194817%_
                      _%hd194781194820%_
                      _%tl194782194822%_
                      _%e194783194825%_
                      _%hd194784194828%_
                      _%tl194785194830%_
                      _%e194786194833%_
                      _%hd194787194836%_
                      _%tl194788194838%_
                      _%e194789194841%_
                      _%hd194790194844%_
                      _%tl194791194846%_
                      _%__splice194981194982%_
                      _%target194792194849%_
                      _%tl194794194851%_)
                     (_%__kont194983194984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194983194984%_))
                                                 (_%__kont194983194984%_))))
                                         (_%__kont194983194984%_))
                                     (_%__kont194983194984%_))
                                 (_%__kont194983194984%_))))
                         (_%__kont194983194984%_))))
                 (_%__kont194983194984%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194983194984%_))
                                                 (_%__kont194983194984%_))))
                                         (_%__kont194983194984%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type194758%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type194758%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp195695
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L194736%_
                                                                '()))
                                                    (map (lambda (_%g194925194927%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self194542%_
                                                              _%g194925194927%_)))
                                                         (let ((__tmp195696
                                                                (lambda (_%g194929194932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g194930194934%_)
                          (cons _%g194929194932%_ _%g194930194934%_))))
                   (declare (not safe))
                   (__foldr1 __tmp195696 '() _%L194735%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp195695
                                    _%stx194543%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx194543%_
                                    _%rator-type194758%_))))))))
                (_%__kont195035195036%_
                 (lambda (_%L194637%_ _%L194638%_)
                   (let ((_%rator-type194655%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L194638%_))))
                     (if (and _%rator-type194655%_
                              (eq? (##structure-ref
                                    _%rator-type194655%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type194655%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type194655%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type194655%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp195697
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self194542%_
                                               _%L194638%_))
                                            (map (lambda (_%g194657194659%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self194542%_
                                                      _%g194657194659%_)))
                                                 (let ((__tmp195698
                                                        (lambda (_%g194661194664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g194662194666%_)
                  (cons _%g194661194664%_ _%g194662194666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp195698
                                                    '()
                                                    _%L194637%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195697 _%stx194543%_))
                         (if (or (not _%rator-type194655%_)
                                 (let ((__tmp195699
                                        (##structure-ref
                                         _%rator-type194655%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp195699 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self194542%_ _%stx194543%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx194543%_
                                _%rator-type194655%_))))))))
            (let* ((_%__match195096195097%_
                    (lambda (_%e194573194597%_
                             _%hd194574194600%_
                             _%tl194575194602%_
                             _%e194576194605%_
                             _%hd194577194608%_
                             _%tl194578194610%_
                             _%__splice195037195038%_
                             _%target194579194613%_
                             _%tl194581194615%_)
                      (letrec ((_%loop194582194618%_
                                (lambda (_%hd194580194621%_
                                         _%rand194586194623%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194580194621%_))
                                      (let ((_%e194583194626%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194580194621%_))))
                                        (let ((_%lp-tl194585194631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194583194626%_)))
                                              (_%lp-hd194584194629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194583194626%_))))
                                          (_%loop194582194618%_
                                           _%lp-tl194585194631%_
                                           (cons _%lp-hd194584194629%_
                                                 _%rand194586194623%_))))
                                      (let ((_%rand194587194634%_
                                             (reverse _%rand194586194623%_)))
                                        (_%__kont195035195036%_
                                         _%rand194587194634%_
                                         _%hd194577194608%_))))))
                        (_%loop194582194618%_ _%target194579194613%_ '()))))
                   (_%__match195076195077%_
                    (lambda (_%e194550194679%_
                             _%hd194551194682%_
                             _%tl194552194684%_
                             _%e194553194687%_
                             _%hd194554194690%_
                             _%tl194555194692%_
                             _%e194556194695%_
                             _%hd194557194698%_
                             _%tl194558194700%_
                             _%e194559194703%_
                             _%hd194560194706%_
                             _%tl194561194708%_
                             _%__splice195033195034%_
                             _%target194562194711%_
                             _%tl194564194713%_)
                      (letrec ((_%loop194565194716%_
                                (lambda (_%hd194563194719%_
                                         _%rand194569194721%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194563194719%_))
                                      (let ((_%e194566194724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194563194719%_))))
                                        (let ((_%lp-tl194568194729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194566194724%_)))
                                              (_%lp-hd194567194727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194566194724%_))))
                                          (_%loop194565194716%_
                                           _%lp-tl194568194729%_
                                           (cons _%lp-hd194567194727%_
                                                 _%rand194569194721%_))))
                                      (let ((_%rand194570194732%_
                                             (reverse _%rand194569194721%_)))
                                        (_%__kont195031195032%_
                                         _%rand194570194732%_
                                         _%hd194560194706%_))))))
                        (_%loop194565194716%_ _%target194562194711%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195029195030%_))
                  (let ((_%e194550194679%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195029195030%_))))
                    (let ((_%tl194552194684%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194550194679%_)))
                          (_%hd194551194682%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194550194679%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194552194684%_))
                          (let ((_%e194553194687%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194552194684%_))))
                            (let ((_%tl194555194692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194553194687%_)))
                                  (_%hd194554194690%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194553194687%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194554194690%_))
                                  (let ((_%e194556194695%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194554194690%_))))
                                    (let ((_%tl194558194700%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194556194695%_)))
                                          (_%hd194557194698%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194556194695%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194557194698%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194557194698%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194558194700%_))
                                                  (let ((_%e194559194703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194558194700%_))))
                                                    (let ((_%tl194561194708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194559194703%_)))
                                                          (_%hd194560194706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194559194703%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194561194708%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl194555194692%_))
                      (let ((_%__splice195033195034%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194555194692%_
                                '0))))
                        (let ((_%tl194564194713%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195033195034%_ '1)))
                              (_%target194562194711%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195033195034%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194564194713%_))
                              (_%__match195076195077%_
                               _%e194550194679%_
                               _%hd194551194682%_
                               _%tl194552194684%_
                               _%e194553194687%_
                               _%hd194554194690%_
                               _%tl194555194692%_
                               _%e194556194695%_
                               _%hd194557194698%_
                               _%tl194558194700%_
                               _%e194559194703%_
                               _%hd194560194706%_
                               _%tl194561194708%_
                               _%__splice195033195034%_
                               _%target194562194711%_
                               _%tl194564194713%_)
                              (let ()
                                (declare (not safe))
                                (_%g194546194592%_)))))
                      (let () (declare (not safe)) (_%g194546194592%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl194555194692%_))
                      (let ((_%__splice195037195038%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194555194692%_
                                '0))))
                        (let ((_%tl194581194615%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195037195038%_ '1)))
                              (_%target194579194613%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195037195038%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194581194615%_))
                              (_%__match195096195097%_
                               _%e194550194679%_
                               _%hd194551194682%_
                               _%tl194552194684%_
                               _%e194553194687%_
                               _%hd194554194690%_
                               _%tl194555194692%_
                               _%__splice195037195038%_
                               _%target194579194613%_
                               _%tl194581194615%_)
                              (let ()
                                (declare (not safe))
                                (_%g194546194592%_)))))
                      (let () (declare (not safe)) (_%g194546194592%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl194555194692%_))
                                                      (let ((_%__splice195037195038%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl194555194692%_ '0))))
                (let ((_%tl194581194615%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice195037195038%_ '1)))
                      (_%target194579194613%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice195037195038%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194581194615%_))
                      (_%__match195096195097%_
                       _%e194550194679%_
                       _%hd194551194682%_
                       _%tl194552194684%_
                       _%e194553194687%_
                       _%hd194554194690%_
                       _%tl194555194692%_
                       _%__splice195037195038%_
                       _%target194579194613%_
                       _%tl194581194615%_)
                      (let () (declare (not safe)) (_%g194546194592%_)))))
              (let () (declare (not safe)) (_%g194546194592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194555194692%_))
                                                  (let ((_%__splice195037195038%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194555194692%_
                                                            '0))))
                                                    (let ((_%tl194581194615%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195037195038%_
                                                              '1)))
                                                          (_%target194579194613%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195037195038%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194581194615%_))
                                                          (_%__match195096195097%_
                                                           _%e194550194679%_
                                                           _%hd194551194682%_
                                                           _%tl194552194684%_
                                                           _%e194553194687%_
                                                           _%hd194554194690%_
                                                           _%tl194555194692%_
                                                           _%__splice195037195038%_
                                                           _%target194579194613%_
                                                           _%tl194581194615%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194546194592%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194546194592%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl194555194692%_))
                                              (let ((_%__splice195037195038%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl194555194692%_
                                                        '0))))
                                                (let ((_%tl194581194615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice195037195038%_
                                                          '1)))
                                                      (_%target194579194613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice195037195038%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194581194615%_))
                                                      (_%__match195096195097%_
                                                       _%e194550194679%_
                                                       _%hd194551194682%_
                                                       _%tl194552194684%_
                                                       _%e194553194687%_
                                                       _%hd194554194690%_
                                                       _%tl194555194692%_
                                                       _%__splice195037195038%_
                                                       _%target194579194613%_
                                                       _%tl194581194615%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194546194592%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194546194592%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl194555194692%_))
                                      (let ((_%__splice195037195038%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl194555194692%_
                                                '0))))
                                        (let ((_%tl194581194615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195037195038%_
                                                  '1)))
                                              (_%target194579194613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195037195038%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194581194615%_))
                                              (_%__match195096195097%_
                                               _%e194550194679%_
                                               _%hd194551194682%_
                                               _%tl194552194684%_
                                               _%e194553194687%_
                                               _%hd194554194690%_
                                               _%tl194555194692%_
                                               _%__splice195037195038%_
                                               _%target194579194613%_
                                               _%tl194581194615%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194546194592%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194546194592%_))))))
                          (let () (declare (not safe)) (_%g194546194592%_)))))
                  (let () (declare (not safe)) (_%g194546194592%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190921194502%_ _%ctx194504%_ _%stx194505%_ _%args194506%_)
        (let* ((_%self194508%_ _%self190921194502%_)
               (_%self194510%_ _%self194508%_))
          (if (let ((__method195678
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self194510%_ 'check-arguments))))
                (if __method195678
                    (let ()
                      (declare (not safe))
                      (__method195678
                       _%self194510%_
                       _%ctx194504%_
                       _%stx194505%_
                       _%args194506%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self194510%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature194520%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194510%_ '2 '#f '#f)))
                     (_%signature194522%_ _%signature194520%_)
                     (_%$e194532%_
                      (if _%signature194522%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature194522%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e194532%_
                    ((lambda (_%unchecked194535%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked194535%_))
                           (let ((__tmp195700
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked194535%_
                                                          '()))
                                              (map (lambda (_%g194536194538%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194504%_
                                                        _%g194536194538%_)))
                                                   _%args194506%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp195700
                              _%stx194505%_
                              _%ctx194504%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx194504%_ _%stx194505%_))))
                     _%$e194532%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx194504%_ _%stx194505%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx194504%_ _%stx194505%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass194962 __method-table194963)
        (let ((__check-arguments194964
               (let ((__tmp195701
                      (lambda ()
                        (let ((__method194965
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194963
                                  'check-arguments
                                  '#f))))
                          (if __method194965
                              __method194965
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195701))))
          (lambda (_%self190921194502%_
                   _%ctx194504%_
                   _%stx194505%_
                   _%args194506%_)
            (let* ((_%self194508%_ _%self190921194502%_)
                   (_%self194510%_ _%self194508%_))
              (if ((force __check-arguments194964)
                   _%self194510%_
                   _%ctx194504%_
                   _%stx194505%_
                   _%args194506%_)
                  (let* ((_%signature194520%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194510%_
                             '2
                             '#f
                             '#f)))
                         (_%signature194522%_ _%signature194520%_)
                         (_%$e194532%_
                          (if _%signature194522%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature194522%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e194532%_
                        ((lambda (_%unchecked194535%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked194535%_))
                               (let ((__tmp195702
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked194535%_
                                                              '()))
                                                  (map (lambda (_%g194536194538%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx194504%_
                                                            _%g194536194538%_)))
                                                       _%args194506%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp195702
                                  _%stx194505%_
                                  _%ctx194504%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx194504%_
                                  _%stx194505%_))))
                         _%$e194532%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx194504%_ _%stx194505%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx194504%_ _%stx194505%_))))))))
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
      (lambda (_%self190922194251%_ _%ctx194253%_ _%stx194254%_ _%args194255%_)
        (let* ((_%self194257%_ _%self190922194251%_)
               (_%self194259%_ _%self194257%_)
               (_%signature194268194270%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194259%_ '2 '#f '#f))))
          (if _%signature194268194270%_
              (let* ((_%signature194273%_ _%signature194268194270%_)
                     (_%argument-types194274194276%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature194273%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types194274194276%_
                    (let* ((_%argument-types194279%_
                            _%argument-types194274194276%_)
                           (_%argument-types194284%_
                            (let ((__tmp195703
                                   (lambda (_%t194282%_)
                                     (if _%t194282%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194254%_
                                            _%t194282%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp195703
                               _%argument-types194279%_))))
                      (let _%loop194286%_ ((_%rest-args194288%_ _%args194255%_)
                                           (_%rest-types194289%_
                                            _%argument-types194284%_)
                                           (_%result194290%_ '#t))
                        (let* ((_%rest-args194291194299%_ _%rest-args194288%_)
                               (_%else194293194307%_
                                (lambda () _%result194290%_))
                               (_%K194295194368%_
                                (lambda (_%rest-args194310%_ _%arg194311%_)
                                  (let* ((_%rest-types194312194323%_
                                          _%rest-types194289%_)
                                         (_%E194316194327%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types194312194323%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K194319194356%_
                                           (lambda (_%rest-types194353%_
                                                    _%type194354%_)
                                             (_%loop194286%_
                                              _%rest-args194310%_
                                              _%rest-types194353%_
                                              (if (gxc#check-expression-type!
                                                   _%stx194254%_
                                                   _%arg194311%_
                                                   _%type194354%_)
                                                  _%result194290%_
                                                  '#f))))
                                          (_%K194318194347%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx194254%_
                                                _%argument-types194284%_))))
                                          (_%K194317194337%_
                                           (lambda (_%tail-type194331%_)
                                             (if (let ((__tmp195704
                                                        (lambda (_%g194332194334%_)
                                                          (gxc#check-expression-type!
                                                           _%stx194254%_
                                                           _%g194332194334%_
                                                           _%tail-type194331%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp195704
                                                    _%rest-args194310%_))
                                                 _%result194290%_
                                                 '#f))))
                                      (let ((_%try-match194314194350%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types194312194323%_))
                                                   (_%K194318194347%_)
                                                   (let ((_%tail-type194340%_
                                                          _%rest-types194312194323%_))
                                                     (_%K194317194337%_
                                                      _%tail-type194340%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types194312194323%_))
                                            (let ((_%tl194321194361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types194312194323%_)))
                                                  (_%hd194320194359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types194312194323%_))))
                                              (let ((_%type194364%_
                                                     _%hd194320194359%_)
                                                    (_%rest-types194366%_
                                                     _%tl194321194361%_))
                                                (_%K194319194356%_
                                                 _%rest-types194366%_
                                                 _%type194364%_)))
                                            (_%try-match194314194350%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args194291194299%_))
                              (let ((_%hd194296194371%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args194291194299%_)))
                                    (_%tl194297194373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args194291194299%_))))
                                (let* ((_%arg194376%_ _%hd194296194371%_)
                                       (_%rest-args194378%_
                                        _%tl194297194373%_))
                                  (_%K194295194368%_
                                   _%rest-args194378%_
                                   _%arg194376%_)))
                              (_%else194293194307%_)))))
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
      (lambda (_%self190923194060%_ _%ctx194062%_ _%stx194063%_ _%args194064%_)
        (let* ((_%self194066%_ _%self190923194060%_)
               (_%self194068%_ _%self194066%_)
               (_%g194078194088%_
                (lambda (_%g194079194085%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194079194085%_))))
               (_%g194077194126%_
                (lambda (_%g194079194091%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194079194091%_))
                      (let ((_%e194081194093%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194079194091%_))))
                        (let ((_%hd194082194096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194081194093%_)))
                              (_%tl194083194098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194081194093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194083194098%_))
                              ((lambda (_%L194101%_)
                                 (let* ((_%klass194113%_
                                         (let ((__tmp195705
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194068%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194063%_
                                            __tmp195705)))
                                        (_%object194115%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194062%_
                                            _%L194101%_)))
                                        (_%instance?194120%_
                                         (let ((_%$e194117%_
                                                (gxc#expression-type?
                                                 _%object194115%_
                                                 _%klass194113%_)))
                                           (if _%$e194117%_
                                               _%$e194117%_
                                               (gxc#expression-type?
                                                _%L194101%_
                                                _%klass194113%_)))))
                                   (if _%instance?194120%_
                                       (let ((__tmp195706
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object194115%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L194101%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object194115%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195706
                                          _%stx194063%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx194062%_
                                          _%stx194063%_)))))
                               _%hd194082194096%_)
                              (_%g194078194088%_ _%g194079194091%_))))
                      (_%g194078194088%_ _%g194079194091%_)))))
          (_%g194077194126%_ _%args194064%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self190924193854%_ _%ctx193856%_ _%stx193857%_ _%args193858%_)
        (let* ((_%self193860%_ _%self190924193854%_)
               (_%self193862%_ _%self193860%_)
               (_%g193872193882%_
                (lambda (_%g193873193879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193873193879%_))))
               (_%g193871193935%_
                (lambda (_%g193873193885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193873193885%_))
                      (let ((_%e193875193887%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193873193885%_))))
                        (let ((_%hd193876193890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193875193887%_)))
                              (_%tl193877193892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193875193887%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193877193892%_))
                              ((lambda (_%L193895%_)
                                 (let* ((_%klass193907%_
                                         (let ((__tmp195707
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193862%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193857%_
                                            __tmp195707)))
                                        (_%object193909%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193856%_
                                            _%L193895%_)))
                                        (_%instance?193914%_
                                         (let ((_%$e193911%_
                                                (gxc#expression-type?
                                                 _%object193909%_
                                                 _%klass193907%_)))
                                           (if _%$e193911%_
                                               _%$e193911%_
                                               (gxc#expression-type?
                                                _%L193895%_
                                                _%klass193907%_))))
                                        (_%klass193917%_ _%klass193907%_))
                                   (if _%instance?193914%_
                                       (let ((__tmp195708
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object193909%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L193895%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object193909%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195708
                                          _%stx193857%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193917%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195709
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass193917%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object193909%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195709
                                              _%stx193857%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193917%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195710
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass193917%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object193909%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195710
                                                  _%stx193857%_))
                                               (let ((__tmp195711
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self193862%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object193909%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195711
                                                  _%stx193857%_)))))))
                               _%hd193876193890%_)
                              (_%g193872193882%_ _%g193873193885%_))))
                      (_%g193872193882%_ _%g193873193885%_)))))
          (_%g193871193935%_ _%args193858%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx193517%_)
        (let* ((_%__stx195106195107%_ _%stx193517%_)
               (_%g193522193563%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195106195107%_)))))
          (let ((_%__kont195108195109%_ (lambda () '#t))
                (_%__kont195110195111%_ (lambda () '#t))
                (_%__kont195112195113%_
                 (lambda (_%L193631%_ _%L193632%_)
                   (let ((_%rator-type193653193655%_
                          (let ((__tmp195712
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193632%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp195712))))
                     (if _%rator-type193653193655%_
                         (let* ((_%rator-type193658%_
                                 _%rator-type193653193655%_)
                                (_%rator-signature193659193661%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type193658%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type193658%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature193659193661%_
                               (let* ((_%rator-signature193664%_
                                       _%rator-signature193659193661%_)
                                      (_%rator-effect193665193667%_
                                       (if _%rator-signature193664%_
                                           (##direct-structure-ref
                                            _%rator-signature193664%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect193665193667%_
                                     (let ((_%rator-effect193670%_
                                            _%rator-effect193665193667%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect193670%_)
                                               (equal? '(alloc)
                                                       _%rator-effect193670%_))
                                           (let ((__tmp195713
                                                  (let ((__tmp195714
                                                         (lambda (_%g193675193678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g193676193680%_)
                   (cons _%g193675193678%_ _%g193676193680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp195714
                                                     '()
                                                     _%L193631%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp195713))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont195116195117%_ (lambda () '#f)))
            (let ((_%__match195195195196%_
                   (lambda (_%e193538193575%_
                            _%hd193539193578%_
                            _%tl193540193580%_
                            _%e193541193583%_
                            _%hd193542193586%_
                            _%tl193543193588%_
                            _%e193544193591%_
                            _%hd193545193594%_
                            _%tl193546193596%_
                            _%e193547193599%_
                            _%hd193548193602%_
                            _%tl193549193604%_
                            _%__splice195114195115%_
                            _%target193550193607%_
                            _%tl193552193609%_)
                     (letrec ((_%loop193553193612%_
                               (lambda (_%hd193551193615%_
                                        _%rand193557193617%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193551193615%_))
                                     (let ((_%e193554193620%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193551193615%_))))
                                       (let ((_%lp-tl193556193625%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193554193620%_)))
                                             (_%lp-hd193555193623%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193554193620%_))))
                                         (_%loop193553193612%_
                                          _%lp-tl193556193625%_
                                          (cons _%lp-hd193555193623%_
                                                _%rand193557193617%_))))
                                     (let ((_%rand193558193628%_
                                            (reverse _%rand193557193617%_)))
                                       (_%__kont195112195113%_
                                        _%rand193558193628%_
                                        _%hd193548193602%_))))))
                       (_%loop193553193612%_ _%target193550193607%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195106195107%_))
                  (let ((_%e193524193711%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195106195107%_))))
                    (let ((_%tl193526193716%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193524193711%_)))
                          (_%hd193525193714%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193524193711%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193525193714%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193525193714%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193526193716%_))
                                  (let ((_%e193527193719%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193526193716%_))))
                                    (let ((_%tl193529193724%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193527193719%_)))
                                          (_%hd193528193722%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193527193719%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193529193724%_))
                                          (_%__kont195108195109%_)
                                          (_%__kont195116195117%_))))
                                  (_%__kont195116195117%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193525193714%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193526193716%_))
                                      (let ((_%e193533193696%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193526193716%_))))
                                        (let ((_%tl193535193701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193533193696%_)))
                                              (_%hd193534193699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193533193696%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193535193701%_))
                                              (_%__kont195110195111%_)
                                              (_%__kont195116195117%_))))
                                      (_%__kont195116195117%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd193525193714%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193526193716%_))
                                          (let ((_%e193541193583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193526193716%_))))
                                            (let ((_%tl193543193588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193541193583%_)))
                                                  (_%hd193542193586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193541193583%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd193542193586%_))
                                                  (let ((_%e193544193591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd193542193586%_))))
                                                    (let ((_%tl193546193596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193544193591%_)))
                                                          (_%hd193545193594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193544193591%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd193545193594%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd193545193594%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193546193596%_))
                          (let ((_%e193547193599%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193546193596%_))))
                            (let ((_%tl193549193604%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193547193599%_)))
                                  (_%hd193548193602%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193547193599%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193549193604%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl193543193588%_))
                                      (let ((_%__splice195114195115%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl193543193588%_
                                                '0))))
                                        (let ((_%tl193552193609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195114195115%_
                                                  '1)))
                                              (_%target193550193607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195114195115%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193552193609%_))
                                              (_%__match195195195196%_
                                               _%e193524193711%_
                                               _%hd193525193714%_
                                               _%tl193526193716%_
                                               _%e193541193583%_
                                               _%hd193542193586%_
                                               _%tl193543193588%_
                                               _%e193544193591%_
                                               _%hd193545193594%_
                                               _%tl193546193596%_
                                               _%e193547193599%_
                                               _%hd193548193602%_
                                               _%tl193549193604%_
                                               _%__splice195114195115%_
                                               _%target193550193607%_
                                               _%tl193552193609%_)
                                              (_%__kont195116195117%_))))
                                      (_%__kont195116195117%_))
                                  (_%__kont195116195117%_))))
                          (_%__kont195116195117%_))
                      (_%__kont195116195117%_))
                  (_%__kont195116195117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195116195117%_))))
                                          (_%__kont195116195117%_))
                                      (_%__kont195116195117%_))))
                          (_%__kont195116195117%_))))
                  (_%__kont195116195117%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx193512%_ _%klass193513%_)
        (let ((_%expr-type193515%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx193512%_))))
          (if _%expr-type193515%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type193515%_ _%klass193513%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx193490%_ _%expr193491%_ _%type193492%_)
        (if (not _%type193492%_)
            '#f
            (let ((_%$e193495%_
                   (eq? (##structure-ref _%type193492%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e193495%_
                  _%$e193495%_
                  (let ((_%expr-type193499%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr193491%_))))
                    (if (not _%expr-type193499%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type193499%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e193503%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type193499%_
                                      'gxc#!abort::t))))
                              (if _%$e193503%_
                                  _%$e193503%_
                                  (let ((_%$e193506%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type193499%_
                                            _%type193492%_))))
                                    (if _%$e193506%_
                                        _%$e193506%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type193492%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type193492%_
                                                   _%expr-type193499%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx193490%_
                                                   _%expr193491%_
                                                   _%expr-type193499%_
                                                   _%type193492%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self190925193302%_ _%ctx193304%_ _%stx193305%_ _%args193306%_)
        (let* ((_%self193308%_ _%self190925193302%_)
               (_%self193310%_ _%self193308%_)
               (_%klass193320%_
                (let ((__tmp195715
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self193310%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx193305%_ __tmp195715)))
               (_%fields193322%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193320%_
                           '5
                           '#f
                           '#f))))
               (_%args193328%_
                (map (lambda (_%g193323193325%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx193304%_ _%g193323193325%_)))
                     _%args193306%_))
               (_%inline-make-object193330%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self193310%_
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
                           _%self193310%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields193322%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass193333%_ _%klass193320%_)
               (_%$e193347%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass193333%_ '6 '#f '#f))))
          (if _%$e193347%_
              ((lambda (_%ctor193350%_)
                 (let ((_%$obj193352%_
                        (let ((__tmp195716
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp195716)))
                       (_%ctor-impl193353%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass193333%_
                           _%ctor193350%_))))
                   (let ((__tmp195717
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj193352%_ '())
                                                  (cons _%inline-make-object193330%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl193353%_
                                                            (let ((__tmp195718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl193353%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj193352%_ '()))
                                             _%args193328%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp195718
                       _%stx193305%_
                       _%ctx193304%_))
                    (let ((_%$ctor193355%_
                           (let ((__tmp195719
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195719))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor193355%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193310%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj193352%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor193350%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor193355%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor193355%_ '()))
                              (cons (cons '%#ref (cons _%$obj193352%_ '()))
                                    _%args193328%_)))
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
                             _%self193310%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor193350%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj193352%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp195717 _%stx193305%_))))
               _%$e193347%_)
              (let ((_%$e193357%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass193333%_
                        '10
                        '#f
                        '#f))))
                (if _%$e193357%_
                    ((lambda (_%metaclass193360%_)
                       (let* ((_%$obj193362%_
                               (let ((__tmp195720
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195720)))
                              (_%metakons193364%_
                               (let ((__tmp195721
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx193305%_
                                         _%metaclass193360%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp195721
                                  'instance-init!)))
                              (__tmp195722
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj193362%_
                                                             '())
                                                       (cons _%inline-make-object193330%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons193364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195723
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons193364%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self193310%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj193362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args193328%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp195723
                            _%stx193305%_
                            _%ctx193304%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self193310%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj193362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args193328%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj193362%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp195722 _%stx193305%_)))
                     _%$e193357%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193333%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp195724
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args193328%_))))
                              (declare (not safe))
                              (##fx= __tmp195724 _%fields193322%_))
                            (let ((__tmp195725
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self193310%_
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
                                              _%self193310%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args193328%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp195725
                               _%stx193305%_))
                            (let ((__tmp195727
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self193310%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp195726
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass193333%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx193305%_
                               __tmp195727
                               __tmp195726)))
                        (let ((_%$obj193369%_
                               (let ((__tmp195728
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195728))))
                          (let _%lp193371%_ ((_%rest193373%_ _%args193328%_)
                                             (_%initializers193374%_ '()))
                            (let* ((_%__stx195198195199%_ _%rest193373%_)
                                   (_%g193378193399%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx195198195199%_)))))
                              (let ((_%__kont195200195201%_
                                     (lambda (_%L193453%_
                                              _%L193454%_
                                              _%L193455%_)
                                       (let* ((_%slot193482%_
                                               (let ((__tmp195729
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L193455%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp195729)))
                                              (_%off193484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass193333%_
                                                  _%slot193482%_))))
                                         (if _%off193484%_
                                             (_%lp193371%_
                                              _%L193453%_
                                              (cons (cons _%off193484%_
                                                          _%L193454%_)
                                                    _%initializers193374%_))
                                             (let ((__tmp195730
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193310%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx193305%_
                                                __tmp195730
                                                _%slot193482%_))))))
                                    (_%__kont195202195203%_
                                     (lambda ()
                                       (let ((__tmp195731
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193330%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp195734
                                     (cons (cons '%#ref
                                                 (cons _%$obj193369%_ '()))
                                           '()))
                                    (__tmp195732
                                     (let ((__tmp195733
                                            (lambda (_%i193413%_ _%r193414%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self193310%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i193413%_) '()))
                              (cons (cons '%#ref (cons _%$obj193369%_ '()))
                                    (cons (cdr _%i193413%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r193414%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp195733
                                        '()
                                        _%initializers193374%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp195734 __tmp195732)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195731
                                          _%stx193305%_))))
                                    (_%__kont195204195205%_
                                     (lambda ()
                                       (let ((__tmp195735
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193330%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args193328%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj193369%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195735
                                          _%stx193305%_)))))
                                (let* ((_%g193376193416%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx195198195199%_))
                                              (_%__kont195202195203%_)
                                              (_%__kont195204195205%_))))
                                       (_%__match195235195236%_
                                        (lambda (_%e193383193421%_
                                                 _%hd193384193424%_
                                                 _%tl193385193426%_
                                                 _%e193386193429%_
                                                 _%hd193387193432%_
                                                 _%tl193388193434%_
                                                 _%e193389193437%_
                                                 _%hd193390193440%_
                                                 _%tl193391193442%_
                                                 _%e193392193445%_
                                                 _%hd193393193448%_
                                                 _%tl193394193450%_)
                                          (let ((_%L193453%_
                                                 _%tl193394193450%_)
                                                (_%L193454%_
                                                 _%hd193393193448%_)
                                                (_%L193455%_
                                                 _%hd193390193440%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L193455%_))
                                                (_%__kont195200195201%_
                                                 _%L193453%_
                                                 _%L193454%_
                                                 _%L193455%_)
                                                (_%__kont195204195205%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx195198195199%_))
                                      (let ((_%e193383193421%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx195198195199%_))))
                                        (let ((_%tl193385193426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193383193421%_)))
                                              (_%hd193384193424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193383193421%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd193384193424%_))
                                              (let ((_%e193386193429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd193384193424%_))))
                                                (let ((_%tl193388193434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193386193429%_)))
                                                      (_%hd193387193432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193386193429%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd193387193432%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd193387193432%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193388193434%_))
                      (let ((_%e193389193437%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193388193434%_))))
                        (let ((_%tl193391193442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193389193437%_)))
                              (_%hd193390193440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193389193437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193391193442%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193385193426%_))
                                  (let ((_%e193392193445%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193385193426%_))))
                                    (let ((_%tl193394193450%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193392193445%_)))
                                          (_%hd193393193448%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193392193445%_))))
                                      (_%__match195235195236%_
                                       _%e193383193421%_
                                       _%hd193384193424%_
                                       _%tl193385193426%_
                                       _%e193386193429%_
                                       _%hd193387193432%_
                                       _%tl193388193434%_
                                       _%e193389193437%_
                                       _%hd193390193440%_
                                       _%tl193391193442%_
                                       _%e193392193445%_
                                       _%hd193393193448%_
                                       _%tl193394193450%_)))
                                  (_%__kont195204195205%_))
                              (_%__kont195204195205%_))))
                      (_%__kont195204195205%_))
                  (_%__kont195204195205%_))
              (_%__kont195204195205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont195204195205%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193376193416%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self190926193083%_ _%ctx193085%_ _%stx193086%_ _%args193087%_)
        (let* ((_%self193089%_ _%self190926193083%_)
               (_%self193091%_ _%self193089%_)
               (_%arguments-ok?193101%_
                (let ((__method195679
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self193091%_ 'check-arguments))))
                  (if __method195679
                      (let ()
                        (declare (not safe))
                        (__method195679
                         _%self193091%_
                         _%ctx193085%_
                         _%stx193086%_
                         _%args193087%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self193091%_
                                 'check-arguments))
                        '#!void))))
               (_%g193103193113%_
                (lambda (_%g193104193110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193104193110%_))))
               (_%g193102193177%_
                (lambda (_%g193104193116%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193104193116%_))
                      (let ((_%e193106193118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193104193116%_))))
                        (let ((_%hd193107193121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193106193118%_)))
                              (_%tl193108193123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193106193118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193108193123%_))
                              ((lambda (_%L193126%_)
                                 (let* ((_%klass193139%_
                                         (let ((__tmp195736
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193091%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193086%_
                                            __tmp195736)))
                                        (_%field193141%_
                                         (let ((__tmp195737
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193091%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass193139%_
                                            __tmp195737)))
                                        (_%object193143%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193085%_
                                            _%L193126%_)))
                                        (_%klass193146%_ _%klass193139%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass193146%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp195738
                                              (cons (if (or _%arguments-ok?193101%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self193091%_
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
                                 _%self193091%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field193141%_ '()))
                        (cons _%object193143%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195738
                                          _%stx193086%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193146%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp195739
                                                  (cons (if (or _%arguments-ok?193101%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193091%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193091%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field193141%_ '()))
                            (cons _%object193143%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195739
                                              _%stx193086%_))
                                           (let ((_%$e193165%_
                                                  (let ((__tmp195740
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self193091%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass193146%_
                                                     __tmp195740))))
                                             (if _%$e193165%_
                                                 ((lambda (_%klass193168%_)
                                                    (let ((__tmp195741
                                                           (cons (if (or _%arguments-ok?193101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193091%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self193091%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field193141%_ '()))
                                     (cons _%object193143%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp195741 _%stx193086%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e193165%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self193091%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp195742
                                                            (let ((_%$obj193174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp195743
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195743))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj193174%_ '())
                                              (cons _%object193143%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass193146%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj193174%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193091%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193141%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj193174%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?193101%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj193174%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193091%_
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
                                                             _%self193091%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj193174%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self193091%_
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
               (gxc#xform-wrap-source __tmp195742 _%stx193086%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp195744
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object193143%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self193091%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp195744 _%stx193086%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd193107193121%_)
                              (_%g193103193113%_ _%g193104193116%_))))
                      (_%g193103193113%_ _%g193104193116%_)))))
          (_%g193102193177%_ _%args193087%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass194966 __method-table194967)
        (let ((__check-arguments194968
               (let ((__tmp195745
                      (lambda ()
                        (let ((__method194969
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194967
                                  'check-arguments
                                  '#f))))
                          (if __method194969
                              __method194969
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195745)))
              (__slot194970
               (let ((__slot194971
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass194966 'slot))))
                 (if __slot194971
                     __slot194971
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self190926193083%_
                   _%ctx193085%_
                   _%stx193086%_
                   _%args193087%_)
            (let* ((_%self193089%_ _%self190926193083%_)
                   (_%self193091%_ _%self193089%_)
                   (_%arguments-ok?193101%_
                    ((force __check-arguments194968)
                     _%self193091%_
                     _%ctx193085%_
                     _%stx193086%_
                     _%args193087%_))
                   (_%g193103193113%_
                    (lambda (_%g193104193110%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g193104193110%_))))
                   (_%g193102193177%_
                    (lambda (_%g193104193116%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g193104193116%_))
                          (let ((_%e193106193118%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g193104193116%_))))
                            (let ((_%hd193107193121%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193106193118%_)))
                                  (_%tl193108193123%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193106193118%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193108193123%_))
                                  ((lambda (_%L193126%_)
                                     (let* ((_%klass193139%_
                                             (let ((__tmp195746
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193091%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx193086%_
                                                __tmp195746)))
                                            (_%field193141%_
                                             (let ((__tmp195747
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193091%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass193139%_
                                                __tmp195747)))
                                            (_%object193143%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx193085%_
                                                _%L193126%_)))
                                            (_%klass193146%_ _%klass193139%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193146%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195748
                                                  (cons (if (or _%arguments-ok?193101%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193091%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193091%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field193141%_ '()))
                            (cons _%object193143%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195748
                                              _%stx193086%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193146%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195749
                                                      (cons (if (or _%arguments-ok?193101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self193091%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193091%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field193141%_ '()))
                                (cons _%object193143%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195749
                                                  _%stx193086%_))
                                               (let ((_%$e193165%_
                                                      (let ((__tmp195750
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self193091%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass193146%_ __tmp195750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e193165%_
                                                     ((lambda (_%klass193168%_)
                                                        (let ((__tmp195751
                                                               (cons (if (or _%arguments-ok?193101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193091%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self193091%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field193141%_ '()))
                                         (cons _%object193143%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp195751 _%stx193086%_)))
              _%$e193165%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self193091%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp195752
                                                                (let ((_%$obj193174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp195753
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195753))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj193174%_ '())
                                                  (cons _%object193143%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass193146%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj193174%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self193091%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field193141%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj193174%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?193101%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj193174%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193091%_
                               __slot194970
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
                        (##unchecked-structure-ref _%self193091%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj193174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193091%_
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
                   (gxc#xform-wrap-source __tmp195752 _%stx193086%_))
                 (let ((__tmp195754
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object193143%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self193091%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp195754 _%stx193086%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd193107193121%_)
                                  (_%g193103193113%_ _%g193104193116%_))))
                          (_%g193103193113%_ _%g193104193116%_)))))
              (_%g193102193177%_ _%args193087%_))))))
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
      (lambda (_%self190927192845%_ _%ctx192847%_ _%stx192848%_ _%args192849%_)
        (let* ((_%self192851%_ _%self190927192845%_)
               (_%self192853%_ _%self192851%_)
               (_%arguments-ok?192863%_
                (let ((__method195680
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self192853%_ 'check-arguments))))
                  (if __method195680
                      (let ()
                        (declare (not safe))
                        (__method195680
                         _%self192853%_
                         _%ctx192847%_
                         _%stx192848%_
                         _%args192849%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self192853%_
                                 'check-arguments))
                        '#!void))))
               (_%g192865192879%_
                (lambda (_%g192866192876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192866192876%_))))
               (_%g192864192958%_
                (lambda (_%g192866192882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192866192882%_))
                      (let ((_%e192869192884%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192866192882%_))))
                        (let ((_%hd192870192887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192869192884%_)))
                              (_%tl192871192889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192869192884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192871192889%_))
                              (let ((_%e192872192892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192871192889%_))))
                                (let ((_%hd192873192895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192872192892%_)))
                                      (_%tl192874192897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192872192892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192874192897%_))
                                      ((lambda (_%L192900%_ _%L192901%_)
                                         (let* ((_%klass192917%_
                                                 (let ((__tmp195755
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192853%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx192848%_
                                                    __tmp195755)))
                                                (_%field192919%_
                                                 (let ((__tmp195756
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192853%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass192917%_
                                                    __tmp195756)))
                                                (_%object192921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192847%_
                                                    _%L192901%_)))
                                                (_%value192923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192847%_
                                                    _%L192900%_)))
                                                (_%klass192926%_
                                                 _%klass192917%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192926%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195757
                                                      (cons (if (or _%arguments-ok?192863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self192853%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192853%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field192919%_ '()))
                                (cons _%object192921%_
                                      (cons _%value192923%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195757
                                                  _%stx192848%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192926%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195758
                                                          (cons (if (or _%arguments-ok?192863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192853%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192853%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192919%_ '()))
                                    (cons _%object192921%_
                                          (cons _%value192923%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195758
                                                      _%stx192848%_))
                                                   (let ((_%$e192946%_
                                                          (let ((__tmp195759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192853%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass192926%_
                     __tmp195759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e192946%_
                                                         ((lambda (_%klass192949%_)
                                                            (let ((__tmp195760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?192863%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192853%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self192853%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field192919%_ '()))
                                             (cons _%object192921%_
                                                   (cons _%value192923%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195760 _%stx192848%_)))
                  _%$e192946%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self192853%_ '4 '#f '#f))
                     (let ((__tmp195761
                            (let ((_%$obj192955%_
                                   (let ((__tmp195762
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp195762))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj192955%_ '())
                                                      (cons _%object192921%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass192926%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj192955%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192853%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field192919%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj192955%_
                                                              '()))
                                                  (cons _%value192923%_
                                                        '())))))
                          (cons (if _%arguments-ok?192863%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self192853%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value192923%_ '())))))
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
                             _%self192853%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj192955%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192853%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value192923%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp195761 _%stx192848%_))
                     (let ((__tmp195763
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object192921%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192853%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value192923%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp195763
                        _%stx192848%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd192873192895%_
                                       _%hd192870192887%_)
                                      (_%g192865192879%_ _%g192866192882%_))))
                              (_%g192865192879%_ _%g192866192882%_))))
                      (_%g192865192879%_ _%g192866192882%_)))))
          (_%g192864192958%_ _%args192849%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass194972 __method-table194973)
        (let ((__check-arguments194974
               (let ((__tmp195764
                      (lambda ()
                        (let ((__method194975
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194973
                                  'check-arguments
                                  '#f))))
                          (if __method194975
                              __method194975
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195764))))
          (lambda (_%self190927192845%_
                   _%ctx192847%_
                   _%stx192848%_
                   _%args192849%_)
            (let* ((_%self192851%_ _%self190927192845%_)
                   (_%self192853%_ _%self192851%_)
                   (_%arguments-ok?192863%_
                    ((force __check-arguments194974)
                     _%self192853%_
                     _%ctx192847%_
                     _%stx192848%_
                     _%args192849%_))
                   (_%g192865192879%_
                    (lambda (_%g192866192876%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g192866192876%_))))
                   (_%g192864192958%_
                    (lambda (_%g192866192882%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g192866192882%_))
                          (let ((_%e192869192884%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g192866192882%_))))
                            (let ((_%hd192870192887%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192869192884%_)))
                                  (_%tl192871192889%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192869192884%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192871192889%_))
                                  (let ((_%e192872192892%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192871192889%_))))
                                    (let ((_%hd192873192895%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192872192892%_)))
                                          (_%tl192874192897%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192872192892%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192874192897%_))
                                          ((lambda (_%L192900%_ _%L192901%_)
                                             (let* ((_%klass192917%_
                                                     (let ((__tmp195765
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192853%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx192848%_
                                                        __tmp195765)))
                                                    (_%field192919%_
                                                     (let ((__tmp195766
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192853%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass192917%_
                                                        __tmp195766)))
                                                    (_%object192921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192847%_
                                                        _%L192901%_)))
                                                    (_%value192923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192847%_
                                                        _%L192900%_)))
                                                    (_%klass192926%_
                                                     _%klass192917%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192926%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195767
                                                          (cons (if (or _%arguments-ok?192863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192853%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192853%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192919%_ '()))
                                    (cons _%object192921%_
                                          (cons _%value192923%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195767
                                                      _%stx192848%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass192926%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp195768
                                                              (cons (if (or _%arguments-ok?192863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self192853%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192853%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field192919%_ '()))
                                        (cons _%object192921%_
                                              (cons _%value192923%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp195768 _%stx192848%_))
               (let ((_%$e192946%_
                      (let ((__tmp195769
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192853%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass192926%_
                         __tmp195769))))
                 (if _%$e192946%_
                     ((lambda (_%klass192949%_)
                        (let ((__tmp195770
                               (cons (if (or _%arguments-ok?192863%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192853%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self192853%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field192919%_
                                                             '()))
                                                 (cons _%object192921%_
                                                       (cons _%value192923%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp195770 _%stx192848%_)))
                      _%$e192946%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192853%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp195771
                                (let ((_%$obj192955%_
                                       (let ((__tmp195772
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp195772))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj192955%_
                                                                '())
                                                          (cons _%object192921%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass192926%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj192955%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self192853%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field192919%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value192923%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?192863%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj192955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self192853%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value192923%_ '())))))
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
                                 _%self192853%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj192955%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192853%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value192923%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195771 _%stx192848%_))
                         (let ((__tmp195773
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object192921%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192853%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value192923%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp195773
                            _%stx192848%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd192873192895%_
                                           _%hd192870192887%_)
                                          (_%g192865192879%_
                                           _%g192866192882%_))))
                                  (_%g192865192879%_ _%g192866192882%_))))
                          (_%g192865192879%_ _%g192866192882%_)))))
              (_%g192864192958%_ _%args192849%_))))))
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
      (lambda (_%self190928192658%_ _%ctx192660%_ _%stx192661%_ _%args192662%_)
        (let* ((_%self192664%_ _%self190928192658%_)
               (_%self192666%_ _%self192664%_)
               (_%self192675192685%_ _%self192666%_)
               (_%E192677192689%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192675192685%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K192678192699%_
                (lambda (_%inline192692%_ _%dispatch192693%_ _%arity192694%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self192666%_
                         _%args192662%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx192661%_
                         _%arity192694%_)))
                  (if _%inline192692%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp195774 (_%inline192692%_ _%stx192661%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp195774
                           _%stx192661%_
                           _%ctx192660%_)))
                      (if (and _%dispatch192693%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch192693%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch192693%_))
                            (let ((__tmp195775
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch192693%_
                                                           '()))
                                               _%args192662%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp195775
                               _%stx192661%_
                               _%ctx192660%_)))
                          (gxc#!procedure::optimize-call
                           _%self192666%_
                           _%ctx192660%_
                           _%stx192661%_
                           _%args192662%_)))))
               (_%e192679192702%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192675192685%_ '1 '#f '#f)))
               (_%e192680192705%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192675192685%_ '2 '#f '#f)))
               (_%e192681192708%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192675192685%_ '3 '#f '#f)))
               (_%arity192711%_ _%e192681192708%_)
               (_%e192682192713%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192675192685%_ '4 '#f '#f)))
               (_%dispatch192716%_ _%e192682192713%_)
               (_%e192683192718%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192675192685%_ '5 '#f '#f)))
               (_%inline192721%_ _%e192683192718%_))
          (_%K192678192699%_
           _%inline192721%_
           _%dispatch192716%_
           _%arity192711%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self190929192508%_ _%ctx192510%_ _%stx192511%_ _%args192512%_)
        (let* ((_%self192514%_ _%self190929192508%_)
               (_%self192516%_ _%self192514%_)
               (_%$e192530%_
                (let ((__tmp195777
                       (lambda (_%g192525192527%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g192525192527%_
                            _%args192512%_))))
                      (__tmp195776
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192516%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp195777 __tmp195776))))
          (if _%$e192530%_
              ((lambda (_%clause192533%_)
                 (let ((__method195681
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause192533%_ 'optimize-call))))
                   (if __method195681
                       (let ()
                         (declare (not safe))
                         (__method195681
                          _%clause192533%_
                          _%ctx192510%_
                          _%stx192511%_
                          _%args192512%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause192533%_
                                  'optimize-call))
                         '#!void))))
               _%$e192530%_)
              (let ((__tmp195778
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self192516%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx192511%_
                 __tmp195778))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self190930192246%_ _%ctx192248%_ _%stx192249%_ _%args192250%_)
        (let* ((_%self192252%_ _%self190930192246%_)
               (_%self192254%_ _%self192252%_)
               (_%self192263192272%_ _%self192254%_)
               (_%E192265192276%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192263192272%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K192266192367%_
                (lambda (_%dispatch192279%_ _%table192280%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch192279%_))
                      (let* ((_%g192281192291%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch192279%_)))
                             (_%else192283192299%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch192279%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx192248%_
                                   _%stx192249%_))))
                             (_%K192285192348%_
                              (lambda (_%main192302%_ _%keys192303%_)
                                (let ((_g195779_
                                       (gxc#!kw-lambda-split-args
                                        _%stx192249%_
                                        _%args192250%_)))
                                  (begin
                                    (let ((_g195780_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195779_)
                                                 (##vector-length _g195779_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195780_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195780_)))
                                    (let ((_%pargs192305%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195779_ 0)))
                                          (_%kwargs192306%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195779_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main192302%_))
                                        (if _%table192280%_
                                            (let ((_%xargs192314%_
                                                   (map (lambda (_%key192308%_)
                                                          (let ((_%$e192310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key192308%_ _%kwargs192306%_))))
                    (if _%$e192310%_ _%$e192310%_ '(%#ref absent-value))))
                _%keys192303%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw192316%_)
                                                 (if (memq (car _%kw192316%_)
                                                           _%keys192303%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx192249%_
                                                        _%keys192303%_
                                                        _%kw192316%_))))
                                               _%kwargs192306%_)
                                              (let ((__tmp195781
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main192302%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs192305%_
                                  _%xargs192314%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp195781
                                                 _%stx192249%_
                                                 _%ctx192248%_)))
                                            (let* ((_%kwt192318%_
                                                    (let ((__tmp195782
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp195782)))
                                                   (_%kwvars192322%_
                                                    (map (lambda (_%_192320%_)
                                                           (let ((__tmp195783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp195783)))
                 _%kwargs192306%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind192327%_
                                                    (map (lambda (_%kw192324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192325%_)
                   (cons (cons _%kwvar192325%_ '())
                         (cons (cdr _%kw192324%_) '())))
                 _%kwargs192306%_
                 _%kwvars192322%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset192332%_
                                                    (map (lambda (_%kw192329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192330%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt192318%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw192329%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar192330%_
                                                             '()))
                                                 '()))))))
                 _%kwargs192306%_
                 _%kwvars192322%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs192337%_
                                                    (map (lambda (_%kw192334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192335%_)
                   (cons (car _%kw192334%_)
                         (cons '%#ref (cons _%kwvar192335%_ '()))))
                 _%kwargs192306%_
                 _%kwvars192322%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs192345%_
                                                    (map (lambda (_%key192339%_)
                                                           (let ((_%$e192341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key192339%_ _%xkwargs192337%_))))
                     (if _%$e192341%_ _%$e192341%_ '(%#ref absent-value))))
                 _%keys192303%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195784
                                                    (cons '%#let-values
                                                          (cons _%kwbind192327%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt192318%_ '())
                                                      (cons (let ((__tmp195785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs192306%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195785 _%stx192249%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp195786
                                                             (cons (let ((__tmp195787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main192302%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt192318%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs192305%_
                                                       _%xargs192345%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp195787 _%stx192249%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195786 _%kwset192332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp195784
                                               _%stx192249%_
                                               _%ctx192248%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g192281192291%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e192286192351%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192281192291%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e192287192354%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192281192291%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e192288192357%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192281192291%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys192360%_ _%e192288192357%_)
                                   (_%e192289192362%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192281192291%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main192365%_ _%e192289192362%_))
                              (_%K192285192348%_
                               _%main192365%_
                               _%keys192360%_))
                            (_%else192283192299%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx192248%_ _%stx192249%_)))))
               (_%e192267192370%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192263192272%_ '1 '#f '#f)))
               (_%e192268192373%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192263192272%_ '2 '#f '#f)))
               (_%e192269192376%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192263192272%_ '3 '#f '#f)))
               (_%table192379%_ _%e192269192376%_)
               (_%e192270192381%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192263192272%_ '4 '#f '#f)))
               (_%dispatch192384%_ _%e192270192381%_))
          (_%K192266192367%_ _%dispatch192384%_ _%table192379%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx191859%_ _%args191860%_)
        (let _%lp191862%_ ((_%rest191864%_ _%args191860%_)
                           (_%pargs191865%_ '())
                           (_%kwargs191866%_ '()))
          (let* ((_%__stx195240195241%_ _%rest191864%_)
                 (_%g191872191924%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx195240195241%_)))))
            (let ((_%__kont195242195243%_
                   (lambda (_%L192103%_ _%L192104%_)
                     (_%lp191862%_
                      _%L192103%_
                      (cons _%L192104%_ _%pargs191865%_)
                      _%kwargs191866%_)))
                  (_%__kont195244195245%_
                   (lambda (_%L192049%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L192049%_ _%pargs191865%_))
                             (reverse _%kwargs191866%_))))
                  (_%__kont195246195247%_
                   (lambda (_%L191996%_ _%L191997%_ _%L191998%_)
                     (let ((_%kw192015%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L191998%_))))
                       (if (assq _%kw192015%_ _%kwargs191866%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx191859%_
                              _%kw192015%_))
                           (_%lp191862%_
                            _%L191996%_
                            _%pargs191865%_
                            (cons (cons _%kw192015%_ _%L191997%_)
                                  _%kwargs191866%_))))))
                  (_%__kont195248195249%_
                   (lambda (_%L191944%_ _%L191945%_)
                     (_%lp191862%_
                      _%L191944%_
                      (cons _%L191945%_ _%pargs191865%_)
                      _%kwargs191866%_)))
                  (_%__kont195250195251%_
                   (lambda ()
                     (values (reverse _%pargs191865%_)
                             (reverse _%kwargs191866%_)))))
              (let ((_%__match195347195348%_
                     (lambda (_%e191903191964%_
                              _%hd191904191967%_
                              _%tl191905191969%_
                              _%e191906191972%_
                              _%hd191907191975%_
                              _%tl191908191977%_
                              _%e191909191980%_
                              _%hd191910191983%_
                              _%tl191911191985%_
                              _%e191912191988%_
                              _%hd191913191991%_
                              _%tl191914191993%_)
                       (let ((_%L191996%_ _%tl191914191993%_)
                             (_%L191997%_ _%hd191913191991%_)
                             (_%L191998%_ _%hd191910191983%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L191998%_))
                             (_%__kont195246195247%_
                              _%L191996%_
                              _%L191997%_
                              _%L191998%_)
                             (_%__kont195248195249%_
                              _%tl191905191969%_
                              _%hd191904191967%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx195240195241%_))
                    (let ((_%e191876192068%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx195240195241%_))))
                      (let ((_%tl191878192073%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191876192068%_)))
                            (_%hd191877192071%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191876192068%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191877192071%_))
                            (let ((_%e191879192076%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191877192071%_))))
                              (let ((_%tl191881192081%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191879192076%_)))
                                    (_%hd191880192079%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191879192076%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191880192079%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191880192079%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191881192081%_))
                                            (let ((_%e191882192084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191881192081%_))))
                                              (let ((_%tl191884192089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191882192084%_)))
                                                    (_%hd191883192087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191882192084%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd191883192087%_))
                                                    (let ((_%e191885192092%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd191883192087%_))))
                                                      (if (equal? _%e191885192092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191884192089%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191878192073%_))
                          (let ((_%e191886192095%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191878192073%_))))
                            (let ((_%tl191888192100%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191886192095%_)))
                                  (_%hd191887192098%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191886192095%_))))
                              (_%__kont195242195243%_
                               _%tl191888192100%_
                               _%hd191887192098%_)))
                          (_%__kont195248195249%_
                           _%tl191878192073%_
                           _%hd191877192071%_))
                      (_%__kont195248195249%_
                       _%tl191878192073%_
                       _%hd191877192071%_))
                  (if (equal? _%e191885192092%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191884192089%_))
                          (_%__kont195244195245%_ _%tl191878192073%_)
                          (_%__kont195248195249%_
                           _%tl191878192073%_
                           _%hd191877192071%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191884192089%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191878192073%_))
                              (let ((_%e191912191988%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191878192073%_))))
                                (let ((_%tl191914191993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191912191988%_)))
                                      (_%hd191913191991%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191912191988%_))))
                                  (_%__match195347195348%_
                                   _%e191876192068%_
                                   _%hd191877192071%_
                                   _%tl191878192073%_
                                   _%e191879192076%_
                                   _%hd191880192079%_
                                   _%tl191881192081%_
                                   _%e191882192084%_
                                   _%hd191883192087%_
                                   _%tl191884192089%_
                                   _%e191912191988%_
                                   _%hd191913191991%_
                                   _%tl191914191993%_)))
                              (_%__kont195248195249%_
                               _%tl191878192073%_
                               _%hd191877192071%_))
                          (_%__kont195248195249%_
                           _%tl191878192073%_
                           _%hd191877192071%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191884192089%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191878192073%_))
                                                            (let ((_%e191912191988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191878192073%_))))
                      (let ((_%tl191914191993%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191912191988%_)))
                            (_%hd191913191991%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191912191988%_))))
                        (_%__match195347195348%_
                         _%e191876192068%_
                         _%hd191877192071%_
                         _%tl191878192073%_
                         _%e191879192076%_
                         _%hd191880192079%_
                         _%tl191881192081%_
                         _%e191882192084%_
                         _%hd191883192087%_
                         _%tl191884192089%_
                         _%e191912191988%_
                         _%hd191913191991%_
                         _%tl191914191993%_)))
                    (_%__kont195248195249%_
                     _%tl191878192073%_
                     _%hd191877192071%_))
                (_%__kont195248195249%_
                 _%tl191878192073%_
                 _%hd191877192071%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont195248195249%_
                                             _%tl191878192073%_
                                             _%hd191877192071%_))
                                        (_%__kont195248195249%_
                                         _%tl191878192073%_
                                         _%hd191877192071%_))
                                    (_%__kont195248195249%_
                                     _%tl191878192073%_
                                     _%hd191877192071%_))))
                            (_%__kont195248195249%_
                             _%tl191878192073%_
                             _%hd191877192071%_))))
                    (_%__kont195250195251%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self190931191841%_ _%ctx191843%_ _%stx191844%_ _%args191845%_)
        (let* ((_%self191847%_ _%self190931191841%_)
               (_%self191849%_ _%self191847%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx191843%_ _%stx191844%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self191529%_ _%stx191530%_)
        (let* ((_%__stx195356195357%_ _%stx191530%_)
               (_%g191533191573%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195356195357%_)))))
          (let ((_%__kont195358195359%_
                 (lambda (_%L191679%_ _%L191680%_)
                   (let ((_%$e191707%_
                          (member 'return:
                                  (let ((__tmp195788
                                         (lambda (_%g191699191702%_
                                                  _%g191700191704%_)
                                           (cons _%g191699191702%_
                                                 _%g191700191704%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp195788 '() _%L191680%_))
                                  gx#stx-eq?)))
                     (if _%$e191707%_
                         ((lambda (_%tail191710%_)
                            (let ((_%type191712%_
                                   (let ((__tmp195789
                                          (let ((__tmp195790
                                                 (cadr _%tail191710%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp195790))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx191530%_
                                      __tmp195789))))
                              (gxc#check-return-type!
                               _%stx191530%_
                               _%L191679%_
                               _%type191712%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self191529%_
                                 _%L191679%_))))
                          _%$e191707%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self191529%_ _%L191679%_))))))
                (_%__kont195362195363%_
                 (lambda (_%L191602%_ _%L191603%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self191529%_ _%L191602%_)))))
            (let ((_%__match195393195394%_
                   (lambda (_%e191537191623%_
                            _%hd191538191626%_
                            _%tl191539191628%_
                            _%e191540191631%_
                            _%hd191541191634%_
                            _%tl191542191636%_
                            _%e191543191639%_
                            _%hd191544191642%_
                            _%tl191545191644%_
                            _%__splice195360195361%_
                            _%target191546191647%_
                            _%tl191548191649%_)
                     (letrec ((_%loop191549191652%_
                               (lambda (_%hd191547191655%_
                                        _%signature191553191657%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd191547191655%_))
                                     (let ((_%e191550191660%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd191547191655%_))))
                                       (let ((_%lp-tl191552191665%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e191550191660%_)))
                                             (_%lp-hd191551191663%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e191550191660%_))))
                                         (_%loop191549191652%_
                                          _%lp-tl191552191665%_
                                          (cons _%lp-hd191551191663%_
                                                _%signature191553191657%_))))
                                     (let ((_%signature191554191668%_
                                            (reverse _%signature191553191657%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl191542191636%_))
                                           (let ((_%e191555191671%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl191542191636%_))))
                                             (let ((_%tl191557191676%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e191555191671%_)))
                                                   (_%hd191556191674%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e191555191671%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl191557191676%_))
                                                   (_%__kont195358195359%_
                                                    _%hd191556191674%_
                                                    _%signature191554191668%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g191533191573%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g191533191573%_))))))))
                       (_%loop191549191652%_ _%target191546191647%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195356195357%_))
                  (let ((_%e191537191623%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195356195357%_))))
                    (let ((_%tl191539191628%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191537191623%_)))
                          (_%hd191538191626%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191537191623%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191539191628%_))
                          (let ((_%e191540191631%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191539191628%_))))
                            (let ((_%tl191542191636%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191540191631%_)))
                                  (_%hd191541191634%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191540191631%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191541191634%_))
                                  (let ((_%e191543191639%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191541191634%_))))
                                    (let ((_%tl191545191644%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191543191639%_)))
                                          (_%hd191544191642%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191543191639%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191544191642%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd191544191642%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl191545191644%_))
                                                  (let ((_%__splice195360195361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl191545191644%_
                                                            '0))))
                                                    (let ((_%tl191548191649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195360195361%_
                                                              '1)))
                                                          (_%target191546191647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195360195361%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191548191649%_))
                                                          (_%__match195393195394%_
                                                           _%e191537191623%_
                                                           _%hd191538191626%_
                                                           _%tl191539191628%_
                                                           _%e191540191631%_
                                                           _%hd191541191634%_
                                                           _%tl191542191636%_
                                                           _%e191543191639%_
                                                           _%hd191544191642%_
                                                           _%tl191545191644%_
                                                           _%__splice195360195361%_
                                                           _%target191546191647%_
                                                           _%tl191548191649%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191542191636%_))
                      (let ((_%e191566191594%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191542191636%_))))
                        (let ((_%tl191568191599%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191566191594%_)))
                              (_%hd191567191597%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191566191594%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191568191599%_))
                              (_%__kont195362195363%_
                               _%hd191567191597%_
                               _%hd191541191634%_)
                              (let ()
                                (declare (not safe))
                                (_%g191533191573%_)))))
                      (let () (declare (not safe)) (_%g191533191573%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191542191636%_))
                                                      (let ((_%e191566191594%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191542191636%_))))
                (let ((_%tl191568191599%_
                       (let () (declare (not safe)) (##cdr _%e191566191594%_)))
                      (_%hd191567191597%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191566191594%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191568191599%_))
                      (_%__kont195362195363%_
                       _%hd191567191597%_
                       _%hd191541191634%_)
                      (let () (declare (not safe)) (_%g191533191573%_)))))
              (let () (declare (not safe)) (_%g191533191573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191542191636%_))
                                                  (let ((_%e191566191594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191542191636%_))))
                                                    (let ((_%tl191568191599%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191566191594%_)))
                                                          (_%hd191567191597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191566191594%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191568191599%_))
                                                          (_%__kont195362195363%_
                                                           _%hd191567191597%_
                                                           _%hd191541191634%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191533191573%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191533191573%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191542191636%_))
                                              (let ((_%e191566191594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191542191636%_))))
                                                (let ((_%tl191568191599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191566191594%_)))
                                                      (_%hd191567191597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191566191594%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191568191599%_))
                                                      (_%__kont195362195363%_
                                                       _%hd191567191597%_
                                                       _%hd191541191634%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191533191573%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191533191573%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191542191636%_))
                                      (let ((_%e191566191594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191542191636%_))))
                                        (let ((_%tl191568191599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191566191594%_)))
                                              (_%hd191567191597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191566191594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191568191599%_))
                                              (_%__kont195362195363%_
                                               _%hd191567191597%_
                                               _%hd191541191634%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g191533191573%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191533191573%_))))))
                          (let () (declare (not safe)) (_%g191533191573%_)))))
                  (let () (declare (not safe)) (_%g191533191573%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx191507%_ _%expr191508%_ _%type191509%_)
        (let ((_%$e191511%_ (not _%type191509%_)))
          (if _%$e191511%_
              _%$e191511%_
              (let ((_%$e191514%_
                     (eq? (##structure-ref _%type191509%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e191514%_
                    _%$e191514%_
                    (let ((_%expr-type191518%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr191508%_))))
                      (if (not _%expr-type191518%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx191507%_
                             _%type191509%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type191518%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx191507%_
                                 _%type191509%_
                                 _%expr-type191518%_))
                              (let ((_%$e191522%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type191518%_
                                        'gxc#!abort::t))))
                                (if _%$e191522%_
                                    _%$e191522%_
                                    (let ((_%$e191525%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type191518%_
                                              _%type191509%_))))
                                      (if _%$e191525%_
                                          _%$e191525%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx191507%_
                                             _%type191509%_
                                             _%expr-type191518%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self190933%_ _%stx190934%_)
        (let* ((_%__stx195438195439%_ _%stx190934%_)
               (_%g190939191049%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195438195439%_)))))
          (let ((_%__kont195440195441%_
                 (lambda (_%L191481%_ _%L191482%_ _%L191483%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L191483%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190933%_ _%L191482%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190933%_ _%L191481%_)))))
                (_%__kont195442195443%_
                 (lambda (_%L191307%_ _%L191308%_ _%L191309%_ _%L191310%_)
                   (let ((_%$e191342%_
                          (let ((__tmp195791
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L191310%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp195791))))
                     (if _%$e191342%_
                         ((lambda (_%pred-type191345%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191345%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191345%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test191350%_
                                        (let ((__tmp195792
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L191310%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L191309%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp195792
                                           _%stx190934%_
                                           _%self190933%_)))
                                       (_%K191354%_
                                        (let ((__tmp195793
                                               (lambda ()
                                                 (let ((__tmp195796
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self190933%_
                                                             _%L191308%_))))
                                                       (__tmp195794
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L191309%_))
                            (let ((__tmp195795
                                   (##structure-ref
                                    _%pred-type191345%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx190934%_
                               __tmp195795)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp195796
                                                    gxc#current-compile-path-type
                                                    __tmp195794)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195793)))
                                       (_%E191357%_
                                        (let ((__tmp195797
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self190933%_
                                                    _%L191307%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195797)))
                                       (_%__stx195416195417%_ _%test191350%_)
                                       (_%g191361191375%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx195416195417%_)))))
                                  (let ((_%__kont195418195419%_
                                         (lambda (_%L191403%_ _%L191404%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L191403%_))
                                               (force _%K191354%_)
                                               (force _%E191357%_))))
                                        (_%__kont195420195421%_
                                         (lambda ()
                                           (let ((__tmp195798
                                                  (cons '%#if
                                                        (cons _%test191350%_
                                                              (cons (force _%K191354%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E191357%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195798
                                              _%stx190934%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx195416195417%_))
                                        (let ((_%e191365191387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx195416195417%_))))
                                          (let ((_%tl191367191392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191365191387%_)))
                                                (_%hd191366191390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191365191387%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191367191392%_))
                                                (let ((_%e191368191395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191367191392%_))))
                                                  (let ((_%tl191370191400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191368191395%_)))
                                                        (_%hd191369191398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191368191395%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191370191400%_))
                                                        (_%__kont195418195419%_
                                                         _%hd191369191398%_
                                                         _%hd191366191390%_)
                                                        (_%__kont195420195421%_))))
                                                (_%__kont195420195421%_))))
                                        (_%__kont195420195421%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self190933%_
                                   _%stx190934%_))))
                          _%$e191342%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self190933%_
                            _%stx190934%_))))))
                (_%__kont195444195445%_
                 (lambda (_%L191183%_ _%L191184%_ _%L191185%_ _%L191186%_)
                   (gxc#optimize-if%
                    _%self190933%_
                    (let ((__tmp195799
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L191185%_
                                       (cons _%L191183%_
                                             (cons _%L191184%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195799 _%stx190934%_)))))
                (_%__kont195446195447%_
                 (lambda (_%L191086%_ _%L191087%_ _%L191088%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self190933%_ _%stx190934%_)))))
            (let ((_%__match195645195646%_
                   (lambda (_%e191003191111%_
                            _%hd191004191114%_
                            _%tl191005191116%_
                            _%e191006191119%_
                            _%hd191007191122%_
                            _%tl191008191124%_
                            _%e191009191127%_
                            _%hd191010191130%_
                            _%tl191011191132%_
                            _%e191012191135%_
                            _%hd191013191138%_
                            _%tl191014191140%_
                            _%e191015191143%_
                            _%hd191016191146%_
                            _%tl191017191148%_
                            _%e191018191151%_
                            _%hd191019191154%_
                            _%tl191020191156%_
                            _%e191021191159%_
                            _%hd191022191162%_
                            _%tl191023191164%_
                            _%e191024191167%_
                            _%hd191025191170%_
                            _%tl191026191172%_
                            _%e191027191175%_
                            _%hd191028191178%_
                            _%tl191029191180%_)
                     (let ((_%L191183%_ _%hd191028191178%_)
                           (_%L191184%_ _%hd191025191170%_)
                           (_%L191185%_ _%hd191022191162%_)
                           (_%L191186%_ _%hd191019191154%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L191186%_ 'not))
                           (_%__kont195444195445%_
                            _%L191183%_
                            _%L191184%_
                            _%L191185%_
                            _%L191186%_)
                           (_%__kont195446195447%_
                            _%hd191028191178%_
                            _%hd191025191170%_
                            _%hd191007191122%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195438195439%_))
                  (let ((_%e190944191433%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195438195439%_))))
                    (let ((_%tl190946191438%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190944191433%_)))
                          (_%hd190945191436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190944191433%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190946191438%_))
                          (let ((_%e190947191441%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190946191438%_))))
                            (let ((_%tl190949191446%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190947191441%_)))
                                  (_%hd190948191444%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190947191441%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190948191444%_))
                                  (let ((_%e190950191449%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190948191444%_))))
                                    (let ((_%tl190952191454%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190950191449%_)))
                                          (_%hd190951191452%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190950191449%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190951191452%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd190951191452%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190952191454%_))
                                                  (let ((_%e190953191457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190952191454%_))))
                                                    (let ((_%tl190955191462%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190953191457%_)))
                                                          (_%hd190954191460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190953191457%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190955191462%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl190949191446%_))
                      (let ((_%e190956191465%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190949191446%_))))
                        (let ((_%tl190958191470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190956191465%_)))
                              (_%hd190957191468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190956191465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190958191470%_))
                              (let ((_%e190959191473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190958191470%_))))
                                (let ((_%tl190961191478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190959191473%_)))
                                      (_%hd190960191476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190959191473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190961191478%_))
                                      (_%__kont195440195441%_
                                       _%hd190960191476%_
                                       _%hd190957191468%_
                                       _%hd190954191460%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190939191049%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190939191049%_)))))
                      (let () (declare (not safe)) (_%g190939191049%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190949191446%_))
                      (let ((_%e191039191070%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190949191446%_))))
                        (let ((_%tl191041191075%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191039191070%_)))
                              (_%hd191040191073%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191039191070%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191041191075%_))
                              (let ((_%e191042191078%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191041191075%_))))
                                (let ((_%tl191044191083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191042191078%_)))
                                      (_%hd191043191081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191042191078%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191044191083%_))
                                      (_%__kont195446195447%_
                                       _%hd191043191081%_
                                       _%hd191040191073%_
                                       _%hd190948191444%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190939191049%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190939191049%_)))))
                      (let () (declare (not safe)) (_%g190939191049%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190949191446%_))
                                                      (let ((_%e191039191070%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190949191446%_))))
                (let ((_%tl191041191075%_
                       (let () (declare (not safe)) (##cdr _%e191039191070%_)))
                      (_%hd191040191073%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191039191070%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191041191075%_))
                      (let ((_%e191042191078%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191041191075%_))))
                        (let ((_%tl191044191083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191042191078%_)))
                              (_%hd191043191081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191042191078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191044191083%_))
                              (_%__kont195446195447%_
                               _%hd191043191081%_
                               _%hd191040191073%_
                               _%hd190948191444%_)
                              (let ()
                                (declare (not safe))
                                (_%g190939191049%_)))))
                      (let () (declare (not safe)) (_%g190939191049%_)))))
              (let () (declare (not safe)) (_%g190939191049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd190951191452%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190952191454%_))
                                                      (let ((_%e190975191243%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190952191454%_))))
                (let ((_%tl190977191248%_
                       (let () (declare (not safe)) (##cdr _%e190975191243%_)))
                      (_%hd190976191246%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190975191243%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd190976191246%_))
                      (let ((_%e190978191251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd190976191246%_))))
                        (let ((_%tl190980191256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190978191251%_)))
                              (_%hd190979191254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190978191251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd190979191254%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd190979191254%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190980191256%_))
                                      (let ((_%e190981191259%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190980191256%_))))
                                        (let ((_%tl190983191264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190981191259%_)))
                                              (_%hd190982191262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190981191259%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190983191264%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190977191248%_))
                                                  (let ((_%e190984191267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190977191248%_))))
                                                    (let ((_%tl190986191272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190984191267%_)))
                                                          (_%hd190985191270%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190984191267%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd190985191270%_))
                                                          (let ((_%e190987191275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd190985191270%_))))
                    (let ((_%tl190989191280%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190987191275%_)))
                          (_%hd190988191278%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190987191275%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd190988191278%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd190988191278%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190989191280%_))
                                  (let ((_%e190990191283%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190989191280%_))))
                                    (let ((_%tl190992191288%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190990191283%_)))
                                          (_%hd190991191286%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190990191283%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190992191288%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190986191272%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190949191446%_))
                                                  (let ((_%e190993191291%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190949191446%_))))
                                                    (let ((_%tl190995191296%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190993191291%_)))
                                                          (_%hd190994191294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190993191291%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190995191296%_))
                                                          (let ((_%e190996191299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190995191296%_))))
                    (let ((_%tl190998191304%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190996191299%_)))
                          (_%hd190997191302%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190996191299%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190998191304%_))
                          (_%__kont195442195443%_
                           _%hd190997191302%_
                           _%hd190994191294%_
                           _%hd190991191286%_
                           _%hd190982191262%_)
                          (let () (declare (not safe)) (_%g190939191049%_)))))
                  (let () (declare (not safe)) (_%g190939191049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190949191446%_))
                                                  (let ((_%e191039191070%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190949191446%_))))
                                                    (let ((_%tl191041191075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191039191070%_)))
                                                          (_%hd191040191073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191039191070%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191041191075%_))
                                                          (let ((_%e191042191078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191041191075%_))))
                    (let ((_%tl191044191083%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191042191078%_)))
                          (_%hd191043191081%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191042191078%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191044191083%_))
                          (_%__kont195446195447%_
                           _%hd191043191081%_
                           _%hd191040191073%_
                           _%hd190948191444%_)
                          (let () (declare (not safe)) (_%g190939191049%_)))))
                  (let () (declare (not safe)) (_%g190939191049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190986191272%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190949191446%_))
                                                  (let ((_%e191024191167%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190949191446%_))))
                                                    (let ((_%tl191026191172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191024191167%_)))
                                                          (_%hd191025191170%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191024191167%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191026191172%_))
                                                          (let ((_%e191027191175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191026191172%_))))
                    (let ((_%tl191029191180%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191027191175%_)))
                          (_%hd191028191178%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191027191175%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191029191180%_))
                          (_%__match195645195646%_
                           _%e190944191433%_
                           _%hd190945191436%_
                           _%tl190946191438%_
                           _%e190947191441%_
                           _%hd190948191444%_
                           _%tl190949191446%_
                           _%e190950191449%_
                           _%hd190951191452%_
                           _%tl190952191454%_
                           _%e190975191243%_
                           _%hd190976191246%_
                           _%tl190977191248%_
                           _%e190978191251%_
                           _%hd190979191254%_
                           _%tl190980191256%_
                           _%e190981191259%_
                           _%hd190982191262%_
                           _%tl190983191264%_
                           _%e190984191267%_
                           _%hd190985191270%_
                           _%tl190986191272%_
                           _%e191024191167%_
                           _%hd191025191170%_
                           _%tl191026191172%_
                           _%e191027191175%_
                           _%hd191028191178%_
                           _%tl191029191180%_)
                          (let () (declare (not safe)) (_%g190939191049%_)))))
                  (let () (declare (not safe)) (_%g190939191049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190949191446%_))
                                                  (let ((_%e191039191070%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190949191446%_))))
                                                    (let ((_%tl191041191075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191039191070%_)))
                                                          (_%hd191040191073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191039191070%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191041191075%_))
                                                          (let ((_%e191042191078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191041191075%_))))
                    (let ((_%tl191044191083%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191042191078%_)))
                          (_%hd191043191081%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191042191078%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191044191083%_))
                          (_%__kont195446195447%_
                           _%hd191043191081%_
                           _%hd191040191073%_
                           _%hd190948191444%_)
                          (let () (declare (not safe)) (_%g190939191049%_)))))
                  (let () (declare (not safe)) (_%g190939191049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190986191272%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190949191446%_))
                                          (let ((_%e191024191167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190949191446%_))))
                                            (let ((_%tl191026191172%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191024191167%_)))
                                                  (_%hd191025191170%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191024191167%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191026191172%_))
                                                  (let ((_%e191027191175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191026191172%_))))
                                                    (let ((_%tl191029191180%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191027191175%_)))
                                                          (_%hd191028191178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191027191175%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191029191180%_))
                                                          (_%__match195645195646%_
                                                           _%e190944191433%_
                                                           _%hd190945191436%_
                                                           _%tl190946191438%_
                                                           _%e190947191441%_
                                                           _%hd190948191444%_
                                                           _%tl190949191446%_
                                                           _%e190950191449%_
                                                           _%hd190951191452%_
                                                           _%tl190952191454%_
                                                           _%e190975191243%_
                                                           _%hd190976191246%_
                                                           _%tl190977191248%_
                                                           _%e190978191251%_
                                                           _%hd190979191254%_
                                                           _%tl190980191256%_
                                                           _%e190981191259%_
                                                           _%hd190982191262%_
                                                           _%tl190983191264%_
                                                           _%e190984191267%_
                                                           _%hd190985191270%_
                                                           _%tl190986191272%_
                                                           _%e191024191167%_
                                                           _%hd191025191170%_
                                                           _%tl191026191172%_
                                                           _%e191027191175%_
                                                           _%hd191028191178%_
                                                           _%tl191029191180%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190939191049%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190939191049%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190949191446%_))
                                          (let ((_%e191039191070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190949191446%_))))
                                            (let ((_%tl191041191075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191039191070%_)))
                                                  (_%hd191040191073%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191039191070%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191041191075%_))
                                                  (let ((_%e191042191078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191041191075%_))))
                                                    (let ((_%tl191044191083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191042191078%_)))
                                                          (_%hd191043191081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191042191078%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191044191083%_))
                                                          (_%__kont195446195447%_
                                                           _%hd191043191081%_
                                                           _%hd191040191073%_
                                                           _%hd190948191444%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190939191049%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190939191049%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl190986191272%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190949191446%_))
                                      (let ((_%e191024191167%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190949191446%_))))
                                        (let ((_%tl191026191172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191024191167%_)))
                                              (_%hd191025191170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191024191167%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191026191172%_))
                                              (let ((_%e191027191175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191026191172%_))))
                                                (let ((_%tl191029191180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191027191175%_)))
                                                      (_%hd191028191178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191027191175%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191029191180%_))
                                                      (_%__match195645195646%_
                                                       _%e190944191433%_
                                                       _%hd190945191436%_
                                                       _%tl190946191438%_
                                                       _%e190947191441%_
                                                       _%hd190948191444%_
                                                       _%tl190949191446%_
                                                       _%e190950191449%_
                                                       _%hd190951191452%_
                                                       _%tl190952191454%_
                                                       _%e190975191243%_
                                                       _%hd190976191246%_
                                                       _%tl190977191248%_
                                                       _%e190978191251%_
                                                       _%hd190979191254%_
                                                       _%tl190980191256%_
                                                       _%e190981191259%_
                                                       _%hd190982191262%_
                                                       _%tl190983191264%_
                                                       _%e190984191267%_
                                                       _%hd190985191270%_
                                                       _%tl190986191272%_
                                                       _%e191024191167%_
                                                       _%hd191025191170%_
                                                       _%tl191026191172%_
                                                       _%e191027191175%_
                                                       _%hd191028191178%_
                                                       _%tl191029191180%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190939191049%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190939191049%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190939191049%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190949191446%_))
                                      (let ((_%e191039191070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190949191446%_))))
                                        (let ((_%tl191041191075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191039191070%_)))
                                              (_%hd191040191073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191039191070%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191041191075%_))
                                              (let ((_%e191042191078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191041191075%_))))
                                                (let ((_%tl191044191083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191042191078%_)))
                                                      (_%hd191043191081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191042191078%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191044191083%_))
                                                      (_%__kont195446195447%_
                                                       _%hd191043191081%_
                                                       _%hd191040191073%_
                                                       _%hd190948191444%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190939191049%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190939191049%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190939191049%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190986191272%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190949191446%_))
                                  (let ((_%e191024191167%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190949191446%_))))
                                    (let ((_%tl191026191172%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191024191167%_)))
                                          (_%hd191025191170%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191024191167%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191026191172%_))
                                          (let ((_%e191027191175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191026191172%_))))
                                            (let ((_%tl191029191180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191027191175%_)))
                                                  (_%hd191028191178%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191027191175%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191029191180%_))
                                                  (_%__match195645195646%_
                                                   _%e190944191433%_
                                                   _%hd190945191436%_
                                                   _%tl190946191438%_
                                                   _%e190947191441%_
                                                   _%hd190948191444%_
                                                   _%tl190949191446%_
                                                   _%e190950191449%_
                                                   _%hd190951191452%_
                                                   _%tl190952191454%_
                                                   _%e190975191243%_
                                                   _%hd190976191246%_
                                                   _%tl190977191248%_
                                                   _%e190978191251%_
                                                   _%hd190979191254%_
                                                   _%tl190980191256%_
                                                   _%e190981191259%_
                                                   _%hd190982191262%_
                                                   _%tl190983191264%_
                                                   _%e190984191267%_
                                                   _%hd190985191270%_
                                                   _%tl190986191272%_
                                                   _%e191024191167%_
                                                   _%hd191025191170%_
                                                   _%tl191026191172%_
                                                   _%e191027191175%_
                                                   _%hd191028191178%_
                                                   _%tl191029191180%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190939191049%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190939191049%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190949191446%_))
                                  (let ((_%e191039191070%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190949191446%_))))
                                    (let ((_%tl191041191075%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191039191070%_)))
                                          (_%hd191040191073%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191039191070%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191041191075%_))
                                          (let ((_%e191042191078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191041191075%_))))
                                            (let ((_%tl191044191083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191042191078%_)))
                                                  (_%hd191043191081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191042191078%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191044191083%_))
                                                  (_%__kont195446195447%_
                                                   _%hd191043191081%_
                                                   _%hd191040191073%_
                                                   _%hd190948191444%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190939191049%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190939191049%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190986191272%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190949191446%_))
                          (let ((_%e191024191167%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190949191446%_))))
                            (let ((_%tl191026191172%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191024191167%_)))
                                  (_%hd191025191170%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191024191167%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191026191172%_))
                                  (let ((_%e191027191175%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191026191172%_))))
                                    (let ((_%tl191029191180%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191027191175%_)))
                                          (_%hd191028191178%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191027191175%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191029191180%_))
                                          (_%__match195645195646%_
                                           _%e190944191433%_
                                           _%hd190945191436%_
                                           _%tl190946191438%_
                                           _%e190947191441%_
                                           _%hd190948191444%_
                                           _%tl190949191446%_
                                           _%e190950191449%_
                                           _%hd190951191452%_
                                           _%tl190952191454%_
                                           _%e190975191243%_
                                           _%hd190976191246%_
                                           _%tl190977191248%_
                                           _%e190978191251%_
                                           _%hd190979191254%_
                                           _%tl190980191256%_
                                           _%e190981191259%_
                                           _%hd190982191262%_
                                           _%tl190983191264%_
                                           _%e190984191267%_
                                           _%hd190985191270%_
                                           _%tl190986191272%_
                                           _%e191024191167%_
                                           _%hd191025191170%_
                                           _%tl191026191172%_
                                           _%e191027191175%_
                                           _%hd191028191178%_
                                           _%tl191029191180%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190939191049%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190939191049%_)))))
                          (let () (declare (not safe)) (_%g190939191049%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190949191446%_))
                          (let ((_%e191039191070%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190949191446%_))))
                            (let ((_%tl191041191075%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191039191070%_)))
                                  (_%hd191040191073%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191039191070%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191041191075%_))
                                  (let ((_%e191042191078%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191041191075%_))))
                                    (let ((_%tl191044191083%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191042191078%_)))
                                          (_%hd191043191081%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191042191078%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191044191083%_))
                                          (_%__kont195446195447%_
                                           _%hd191043191081%_
                                           _%hd191040191073%_
                                           _%hd190948191444%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190939191049%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190939191049%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g190939191049%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190949191446%_))
                                                      (let ((_%e191039191070%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190949191446%_))))
                (let ((_%tl191041191075%_
                       (let () (declare (not safe)) (##cdr _%e191039191070%_)))
                      (_%hd191040191073%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191039191070%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191041191075%_))
                      (let ((_%e191042191078%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191041191075%_))))
                        (let ((_%tl191044191083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191042191078%_)))
                              (_%hd191043191081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191042191078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191044191083%_))
                              (_%__kont195446195447%_
                               _%hd191043191081%_
                               _%hd191040191073%_
                               _%hd190948191444%_)
                              (let ()
                                (declare (not safe))
                                (_%g190939191049%_)))))
                      (let () (declare (not safe)) (_%g190939191049%_)))))
              (let () (declare (not safe)) (_%g190939191049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190949191446%_))
                                                  (let ((_%e191039191070%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190949191446%_))))
                                                    (let ((_%tl191041191075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191039191070%_)))
                                                          (_%hd191040191073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191039191070%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191041191075%_))
                                                          (let ((_%e191042191078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191041191075%_))))
                    (let ((_%tl191044191083%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191042191078%_)))
                          (_%hd191043191081%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191042191078%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191044191083%_))
                          (_%__kont195446195447%_
                           _%hd191043191081%_
                           _%hd191040191073%_
                           _%hd190948191444%_)
                          (let () (declare (not safe)) (_%g190939191049%_)))))
                  (let () (declare (not safe)) (_%g190939191049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190949191446%_))
                                          (let ((_%e191039191070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190949191446%_))))
                                            (let ((_%tl191041191075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191039191070%_)))
                                                  (_%hd191040191073%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191039191070%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191041191075%_))
                                                  (let ((_%e191042191078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191041191075%_))))
                                                    (let ((_%tl191044191083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191042191078%_)))
                                                          (_%hd191043191081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191042191078%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191044191083%_))
                                                          (_%__kont195446195447%_
                                                           _%hd191043191081%_
                                                           _%hd191040191073%_
                                                           _%hd190948191444%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190939191049%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190939191049%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190949191446%_))
                                      (let ((_%e191039191070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190949191446%_))))
                                        (let ((_%tl191041191075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191039191070%_)))
                                              (_%hd191040191073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191039191070%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191041191075%_))
                                              (let ((_%e191042191078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191041191075%_))))
                                                (let ((_%tl191044191083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191042191078%_)))
                                                      (_%hd191043191081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191042191078%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191044191083%_))
                                                      (_%__kont195446195447%_
                                                       _%hd191043191081%_
                                                       _%hd191040191073%_
                                                       _%hd190948191444%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190939191049%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190939191049%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190939191049%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190949191446%_))
                                  (let ((_%e191039191070%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190949191446%_))))
                                    (let ((_%tl191041191075%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191039191070%_)))
                                          (_%hd191040191073%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191039191070%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191041191075%_))
                                          (let ((_%e191042191078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191041191075%_))))
                                            (let ((_%tl191044191083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191042191078%_)))
                                                  (_%hd191043191081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191042191078%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191044191083%_))
                                                  (_%__kont195446195447%_
                                                   _%hd191043191081%_
                                                   _%hd191040191073%_
                                                   _%hd190948191444%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190939191049%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190939191049%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190939191049%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190949191446%_))
                          (let ((_%e191039191070%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190949191446%_))))
                            (let ((_%tl191041191075%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191039191070%_)))
                                  (_%hd191040191073%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191039191070%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191041191075%_))
                                  (let ((_%e191042191078%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191041191075%_))))
                                    (let ((_%tl191044191083%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191042191078%_)))
                                          (_%hd191043191081%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191042191078%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191044191083%_))
                                          (_%__kont195446195447%_
                                           _%hd191043191081%_
                                           _%hd191040191073%_
                                           _%hd190948191444%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190939191049%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190939191049%_)))))
                          (let () (declare (not safe)) (_%g190939191049%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl190949191446%_))
                  (let ((_%e191039191070%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190949191446%_))))
                    (let ((_%tl191041191075%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191039191070%_)))
                          (_%hd191040191073%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191039191070%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191041191075%_))
                          (let ((_%e191042191078%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191041191075%_))))
                            (let ((_%tl191044191083%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191042191078%_)))
                                  (_%hd191043191081%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191042191078%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191044191083%_))
                                  (_%__kont195446195447%_
                                   _%hd191043191081%_
                                   _%hd191040191073%_
                                   _%hd190948191444%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g190939191049%_)))))
                          (let () (declare (not safe)) (_%g190939191049%_)))))
                  (let () (declare (not safe)) (_%g190939191049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190949191446%_))
                                                      (let ((_%e191039191070%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190949191446%_))))
                (let ((_%tl191041191075%_
                       (let () (declare (not safe)) (##cdr _%e191039191070%_)))
                      (_%hd191040191073%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191039191070%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191041191075%_))
                      (let ((_%e191042191078%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191041191075%_))))
                        (let ((_%tl191044191083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191042191078%_)))
                              (_%hd191043191081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191042191078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191044191083%_))
                              (_%__kont195446195447%_
                               _%hd191043191081%_
                               _%hd191040191073%_
                               _%hd190948191444%_)
                              (let ()
                                (declare (not safe))
                                (_%g190939191049%_)))))
                      (let () (declare (not safe)) (_%g190939191049%_)))))
              (let () (declare (not safe)) (_%g190939191049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190949191446%_))
                                              (let ((_%e191039191070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190949191446%_))))
                                                (let ((_%tl191041191075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191039191070%_)))
                                                      (_%hd191040191073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191039191070%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191041191075%_))
                                                      (let ((_%e191042191078%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191041191075%_))))
                (let ((_%tl191044191083%_
                       (let () (declare (not safe)) (##cdr _%e191042191078%_)))
                      (_%hd191043191081%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191042191078%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191044191083%_))
                      (_%__kont195446195447%_
                       _%hd191043191081%_
                       _%hd191040191073%_
                       _%hd190948191444%_)
                      (let () (declare (not safe)) (_%g190939191049%_)))))
              (let () (declare (not safe)) (_%g190939191049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g190939191049%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190949191446%_))
                                      (let ((_%e191039191070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190949191446%_))))
                                        (let ((_%tl191041191075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191039191070%_)))
                                              (_%hd191040191073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191039191070%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191041191075%_))
                                              (let ((_%e191042191078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191041191075%_))))
                                                (let ((_%tl191044191083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191042191078%_)))
                                                      (_%hd191043191081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191042191078%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191044191083%_))
                                                      (_%__kont195446195447%_
                                                       _%hd191043191081%_
                                                       _%hd191040191073%_
                                                       _%hd190948191444%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190939191049%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190939191049%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190939191049%_))))))
                          (let () (declare (not safe)) (_%g190939191049%_)))))
                  (let () (declare (not safe)) (_%g190939191049%_))))))))))
