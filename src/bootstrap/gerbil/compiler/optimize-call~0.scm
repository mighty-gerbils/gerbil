(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770405381)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp251419 (list gxc#::basic-xform::t))
            (__tmp251418 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp251419
         '()
         __tmp251418
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args250696%_
        (apply make-instance gxc#::optimize-call::t _%$args250696%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp251420
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
        (__make-atomic-promise __tmp251420)))
    (define gxc#apply-optimize-call
      (lambda (_%stx250688%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self250691%_
                (let ((__obj251410
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj251410))
               (__tmp251421
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self250691%_ _%stx250688%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp251421
           gxc#current-compile-method
           _%self250691%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp251423 (list gxc#::void::t))
            (__tmp251422 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp251423
         '()
         __tmp251422
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args250685%_
        (apply make-instance gxc#::check-return-type::t _%$args250685%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp251424
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
        (__make-atomic-promise __tmp251424)))
    (define gxc#apply-check-return-type
      (lambda (_%stx250677%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self250680%_
                (let ((__obj251412
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj251412))
               (__tmp251425
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self250680%_ _%stx250677%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp251425
           gxc#current-compile-method
           _%self250680%_))))
    (define gxc#optimize-call%
      (lambda (_%self250284%_ _%stx250285%_)
        (let* ((_%__stx250765250766%_ _%stx250285%_)
               (_%g250288250334%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx250765250766%_)))))
          (let ((_%__kont250767250768%_
                 (lambda (_%g250290250473%_ _%g250291250474%_)
                   (let* ((_%rator-id250494%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g250291250474%_)))
                          (_%rator-type250496%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id250494%_))))
                     (if (or (not _%rator-type250496%_)
                             (eq? (##structure-ref
                                   _%rator-type250496%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self250284%_ _%stx250285%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type250496%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp251426
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type250496%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id250494%_
                                  '" => "
                                  _%rator-type250496%_
                                  '" "
                                  __tmp251426))
                               (let* ((_%optimized250511%_
                                       (let ((__method251413
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type250496%_
                                                 'optimize-call))))
                                         (if __method251413
                                             (let ((__tmp251427
                                                    (let ((__tmp251428
                                                           (lambda (_%g250503250506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g250504250508%_)
                     (cons _%g250503250506%_ _%g250504250508%_))))
              (declare (not safe))
              (foldr__0 __tmp251428 '() _%g250290250473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method251413
                                                _%rator-type250496%_
                                                _%self250284%_
                                                _%stx250285%_
                                                __tmp251427))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type250496%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx250713250714%_
                                       _%optimized250511%_)
                                      (_%g250514250543%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx250713250714%_)))))
                                 (let ((_%__kont250715250716%_
                                        (lambda (_%g250516250609%_
                                                 _%g250517250610%_)
                                          (let* ((_%optimized-rator-id250637%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g250517250610%_)))
                                                 (_%rator-type250642%_
                                                  (let ((_%$e250639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id250637%_))))
                                                    (if _%$e250639%_
                                                        _%$e250639%_
                                                        _%rator-type250496%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type250642%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id250637%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type250642%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type250642%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized250511%_
                                                (let ((__tmp251429
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g250517250610%_ '()))
                           (let ((__tmp251430
                                  (lambda (_%g250650250653%_ _%g250651250655%_)
                                    (cons _%g250650250653%_
                                          _%g250651250655%_))))
                             (declare (not safe))
                             (foldr__0 __tmp251430 '() _%g250516250609%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251429
                                                   _%stx250285%_))))))
                                       (_%__kont250719250720%_
                                        (lambda () _%optimized250511%_)))
                                   (let ((_%__match250762250763%_
                                          (lambda (_%e250518250555%_
                                                   _%hd250519250558%_
                                                   _%tl250520250560%_
                                                   _%e250521250563%_
                                                   _%hd250522250566%_
                                                   _%tl250523250568%_
                                                   _%e250524250571%_
                                                   _%hd250525250574%_
                                                   _%tl250526250576%_
                                                   _%e250527250579%_
                                                   _%hd250528250582%_
                                                   _%tl250529250584%_
                                                   _%__splice250717250718%_
                                                   _%target250530250587%_
                                                   _%tl250532250589%_)
                                            (letrec ((_%loop250533250592%_
                                                      (lambda (_%hd250531250595%_
                                                               _%arg250537250597%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd250531250595%_))
                                                            (let ((_%e250534250599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd250531250595%_))))
                      (let ((_%lp-tl250536250604%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250534250599%_)))
                            (_%lp-hd250535250602%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250534250599%_))))
                        (_%loop250533250592%_
                         _%lp-tl250536250604%_
                         (cons _%lp-hd250535250602%_ _%arg250537250597%_))))
                    (let ((_%arg250538250607%_ (reverse _%arg250537250597%_)))
                      (_%__kont250715250716%_
                       _%arg250538250607%_
                       _%hd250528250582%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop250533250592%_
                                               _%target250530250587%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx250713250714%_))
                                         (let ((_%e250518250555%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx250713250714%_))))
                                           (let ((_%tl250520250560%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e250518250555%_)))
                                                 (_%hd250519250558%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e250518250555%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd250519250558%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd250519250558%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl250520250560%_))
                                                         (let ((_%e250521250563%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl250520250560%_))))
                   (let ((_%tl250523250568%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e250521250563%_)))
                         (_%hd250522250566%_
                          (let ()
                            (declare (not safe))
                            (##car _%e250521250563%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd250522250566%_))
                         (let ((_%e250524250571%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd250522250566%_))))
                           (let ((_%tl250526250576%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e250524250571%_)))
                                 (_%hd250525250574%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e250524250571%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd250525250574%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd250525250574%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl250526250576%_))
                                         (let ((_%e250527250579%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl250526250576%_))))
                                           (let ((_%tl250529250584%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e250527250579%_)))
                                                 (_%hd250528250582%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e250527250579%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl250529250584%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl250523250568%_))
                                                     (let ((_%__splice250717250718%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl250523250568%_
                                                               '0))))
                                                       (let ((_%tl250532250589%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice250717250718%_ '1)))
                     (_%target250530250587%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice250717250718%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl250532250589%_))
                     (_%__match250762250763%_
                      _%e250518250555%_
                      _%hd250519250558%_
                      _%tl250520250560%_
                      _%e250521250563%_
                      _%hd250522250566%_
                      _%tl250523250568%_
                      _%e250524250571%_
                      _%hd250525250574%_
                      _%tl250526250576%_
                      _%e250527250579%_
                      _%hd250528250582%_
                      _%tl250529250584%_
                      _%__splice250717250718%_
                      _%target250530250587%_
                      _%tl250532250589%_)
                     (_%__kont250719250720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont250719250720%_))
                                                 (_%__kont250719250720%_))))
                                         (_%__kont250719250720%_))
                                     (_%__kont250719250720%_))
                                 (_%__kont250719250720%_))))
                         (_%__kont250719250720%_))))
                 (_%__kont250719250720%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont250719250720%_))
                                                 (_%__kont250719250720%_))))
                                         (_%__kont250719250720%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type250496%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type250496%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp251431
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g250291250474%_
                                                                '()))
                                                    (map (lambda (_%g250661250663%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self250284%_
                                                              _%g250661250663%_)))
                                                         (let ((__tmp251432
                                                                (lambda (_%g250665250668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g250666250670%_)
                          (cons _%g250665250668%_ _%g250666250670%_))))
                   (declare (not safe))
                   (foldr__0 __tmp251432 '() _%g250290250473%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp251431
                                    _%stx250285%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx250285%_
                                    _%rator-type250496%_))))))))
                (_%__kont250771250772%_
                 (lambda (_%g250313250377%_ _%g250314250378%_)
                   (let ((_%rator-type250395%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g250314250378%_))))
                     (if (and _%rator-type250395%_
                              (eq? (##structure-ref
                                    _%rator-type250395%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type250395%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type250395%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type250395%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp251433
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self250284%_
                                               _%g250314250378%_))
                                            (map (lambda (_%g250397250399%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self250284%_
                                                      _%g250397250399%_)))
                                                 (let ((__tmp251434
                                                        (lambda (_%g250401250404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g250402250406%_)
                  (cons _%g250401250404%_ _%g250402250406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp251434
                                                    '()
                                                    _%g250313250377%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp251433 _%stx250285%_))
                         (if (or (not _%rator-type250395%_)
                                 (let ((__tmp251435
                                        (##structure-ref
                                         _%rator-type250395%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp251435 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self250284%_ _%stx250285%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx250285%_
                                _%rator-type250395%_))))))))
            (let* ((_%__match250832250833%_
                    (lambda (_%e250315250339%_
                             _%hd250316250342%_
                             _%tl250317250344%_
                             _%e250318250347%_
                             _%hd250319250350%_
                             _%tl250320250352%_
                             _%__splice250773250774%_
                             _%target250321250355%_
                             _%tl250323250357%_)
                      (letrec ((_%loop250324250360%_
                                (lambda (_%hd250322250363%_
                                         _%rand250328250365%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd250322250363%_))
                                      (let ((_%e250325250367%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd250322250363%_))))
                                        (let ((_%lp-tl250327250372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250325250367%_)))
                                              (_%lp-hd250326250370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250325250367%_))))
                                          (_%loop250324250360%_
                                           _%lp-tl250327250372%_
                                           (cons _%lp-hd250326250370%_
                                                 _%rand250328250365%_))))
                                      (let ((_%rand250329250375%_
                                             (reverse _%rand250328250365%_)))
                                        (_%__kont250771250772%_
                                         _%rand250329250375%_
                                         _%hd250319250350%_))))))
                        (_%loop250324250360%_ _%target250321250355%_ '()))))
                   (_%__match250812250813%_
                    (lambda (_%e250292250419%_
                             _%hd250293250422%_
                             _%tl250294250424%_
                             _%e250295250427%_
                             _%hd250296250430%_
                             _%tl250297250432%_
                             _%e250298250435%_
                             _%hd250299250438%_
                             _%tl250300250440%_
                             _%e250301250443%_
                             _%hd250302250446%_
                             _%tl250303250448%_
                             _%__splice250769250770%_
                             _%target250304250451%_
                             _%tl250306250453%_)
                      (letrec ((_%loop250307250456%_
                                (lambda (_%hd250305250459%_
                                         _%rand250311250461%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd250305250459%_))
                                      (let ((_%e250308250463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd250305250459%_))))
                                        (let ((_%lp-tl250310250468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250308250463%_)))
                                              (_%lp-hd250309250466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250308250463%_))))
                                          (_%loop250307250456%_
                                           _%lp-tl250310250468%_
                                           (cons _%lp-hd250309250466%_
                                                 _%rand250311250461%_))))
                                      (let ((_%rand250312250471%_
                                             (reverse _%rand250311250461%_)))
                                        (_%__kont250767250768%_
                                         _%rand250312250471%_
                                         _%hd250302250446%_))))))
                        (_%loop250307250456%_ _%target250304250451%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx250765250766%_))
                  (let ((_%e250292250419%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx250765250766%_))))
                    (let ((_%tl250294250424%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250292250419%_)))
                          (_%hd250293250422%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250292250419%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250294250424%_))
                          (let ((_%e250295250427%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250294250424%_))))
                            (let ((_%tl250297250432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250295250427%_)))
                                  (_%hd250296250430%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250295250427%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250296250430%_))
                                  (let ((_%e250298250435%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250296250430%_))))
                                    (let ((_%tl250300250440%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250298250435%_)))
                                          (_%hd250299250438%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250298250435%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250299250438%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd250299250438%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250300250440%_))
                                                  (let ((_%e250301250443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250300250440%_))))
                                                    (let ((_%tl250303250448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250301250443%_)))
                                                          (_%hd250302250446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250301250443%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250303250448%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl250297250432%_))
                      (let ((_%__splice250769250770%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl250297250432%_
                                '0))))
                        (let ((_%tl250306250453%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250769250770%_ '1)))
                              (_%target250304250451%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250769250770%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250306250453%_))
                              (_%__match250812250813%_
                               _%e250292250419%_
                               _%hd250293250422%_
                               _%tl250294250424%_
                               _%e250295250427%_
                               _%hd250296250430%_
                               _%tl250297250432%_
                               _%e250298250435%_
                               _%hd250299250438%_
                               _%tl250300250440%_
                               _%e250301250443%_
                               _%hd250302250446%_
                               _%tl250303250448%_
                               _%__splice250769250770%_
                               _%target250304250451%_
                               _%tl250306250453%_)
                              (let ()
                                (declare (not safe))
                                (_%g250288250334%_)))))
                      (let () (declare (not safe)) (_%g250288250334%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl250297250432%_))
                      (let ((_%__splice250773250774%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl250297250432%_
                                '0))))
                        (let ((_%tl250323250357%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250773250774%_ '1)))
                              (_%target250321250355%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250773250774%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250323250357%_))
                              (_%__match250832250833%_
                               _%e250292250419%_
                               _%hd250293250422%_
                               _%tl250294250424%_
                               _%e250295250427%_
                               _%hd250296250430%_
                               _%tl250297250432%_
                               _%__splice250773250774%_
                               _%target250321250355%_
                               _%tl250323250357%_)
                              (let ()
                                (declare (not safe))
                                (_%g250288250334%_)))))
                      (let () (declare (not safe)) (_%g250288250334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl250297250432%_))
                                                      (let ((_%__splice250773250774%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl250297250432%_
                        '0))))
                (let ((_%tl250323250357%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice250773250774%_ '1)))
                      (_%target250321250355%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice250773250774%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250323250357%_))
                      (_%__match250832250833%_
                       _%e250292250419%_
                       _%hd250293250422%_
                       _%tl250294250424%_
                       _%e250295250427%_
                       _%hd250296250430%_
                       _%tl250297250432%_
                       _%__splice250773250774%_
                       _%target250321250355%_
                       _%tl250323250357%_)
                      (let () (declare (not safe)) (_%g250288250334%_)))))
              (let () (declare (not safe)) (_%g250288250334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl250297250432%_))
                                                  (let ((_%__splice250773250774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl250297250432%_
                                                            '0))))
                                                    (let ((_%tl250323250357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice250773250774%_
                                                              '1)))
                                                          (_%target250321250355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice250773250774%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250323250357%_))
                                                          (_%__match250832250833%_
                                                           _%e250292250419%_
                                                           _%hd250293250422%_
                                                           _%tl250294250424%_
                                                           _%e250295250427%_
                                                           _%hd250296250430%_
                                                           _%tl250297250432%_
                                                           _%__splice250773250774%_
                                                           _%target250321250355%_
                                                           _%tl250323250357%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250288250334%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250288250334%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl250297250432%_))
                                              (let ((_%__splice250773250774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl250297250432%_
                                                        '0))))
                                                (let ((_%tl250323250357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice250773250774%_
                                                          '1)))
                                                      (_%target250321250355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice250773250774%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250323250357%_))
                                                      (_%__match250832250833%_
                                                       _%e250292250419%_
                                                       _%hd250293250422%_
                                                       _%tl250294250424%_
                                                       _%e250295250427%_
                                                       _%hd250296250430%_
                                                       _%tl250297250432%_
                                                       _%__splice250773250774%_
                                                       _%target250321250355%_
                                                       _%tl250323250357%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250288250334%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250288250334%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl250297250432%_))
                                      (let ((_%__splice250773250774%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl250297250432%_
                                                '0))))
                                        (let ((_%tl250323250357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250773250774%_
                                                  '1)))
                                              (_%target250321250355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250773250774%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250323250357%_))
                                              (_%__match250832250833%_
                                               _%e250292250419%_
                                               _%hd250293250422%_
                                               _%tl250294250424%_
                                               _%e250295250427%_
                                               _%hd250296250430%_
                                               _%tl250297250432%_
                                               _%__splice250773250774%_
                                               _%target250321250355%_
                                               _%tl250323250357%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g250288250334%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250288250334%_))))))
                          (let () (declare (not safe)) (_%g250288250334%_)))))
                  (let () (declare (not safe)) (_%g250288250334%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self250246%_ _%ctx250247%_ _%stx250248%_ _%args250249%_)
        (let ((_%self250252%_ _%self250246%_))
          (if (let ((__method251414
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self250252%_ 'check-arguments))))
                (if __method251414
                    (let ()
                      (declare (not safe))
                      (__method251414
                       _%self250252%_
                       _%ctx250247%_
                       _%stx250248%_
                       _%args250249%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self250252%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature250262%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self250252%_ '2 '#f '#f)))
                     (_%signature250264%_ _%signature250262%_)
                     (_%$e250274%_
                      (if _%signature250264%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature250264%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e250274%_
                    ((lambda (_%unchecked250277%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked250277%_))
                           (let ((__tmp251436
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked250277%_
                                                          '()))
                                              (map (lambda (_%g250278250280%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx250247%_
                                                        _%g250278250280%_)))
                                                   _%args250249%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp251436
                              _%stx250248%_
                              _%ctx250247%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx250247%_ _%stx250248%_))))
                     _%$e250274%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx250247%_ _%stx250248%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx250247%_ _%stx250248%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass250698 __method-table250699)
        (let ((__check-arguments250700
               (let ((__tmp251437
                      (lambda ()
                        (let ((__method250701
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table250699
                                  'check-arguments
                                  '#f))))
                          (if __method250701
                              __method250701
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp251437))))
          (lambda (_%self250246%_ _%ctx250247%_ _%stx250248%_ _%args250249%_)
            (let ((_%self250252%_ _%self250246%_))
              (if ((force __check-arguments250700)
                   _%self250252%_
                   _%ctx250247%_
                   _%stx250248%_
                   _%args250249%_)
                  (let* ((_%signature250262%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self250252%_
                             '2
                             '#f
                             '#f)))
                         (_%signature250264%_ _%signature250262%_)
                         (_%$e250274%_
                          (if _%signature250264%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature250264%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e250274%_
                        ((lambda (_%unchecked250277%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked250277%_))
                               (let ((__tmp251438
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked250277%_
                                                              '()))
                                                  (map (lambda (_%g250278250280%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx250247%_
                                                            _%g250278250280%_)))
                                                       _%args250249%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp251438
                                  _%stx250248%_
                                  _%ctx250247%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx250247%_
                                  _%stx250248%_))))
                         _%$e250274%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx250247%_ _%stx250248%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx250247%_ _%stx250248%_))))))))
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
      (lambda (_%self249999%_ _%ctx250000%_ _%stx250001%_ _%args250002%_)
        (let* ((_%self250005%_ _%self249999%_)
               (_%signature250014250016%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250005%_ '2 '#f '#f))))
          (if _%signature250014250016%_
              (let* ((_%signature250018%_ _%signature250014250016%_)
                     (_%argument-types250019250021%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature250018%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types250019250021%_
                    (let* ((_%argument-types250023%_
                            _%argument-types250019250021%_)
                           (_%argument-types250028%_
                            (let ((__tmp251439
                                   (lambda (_%t250026%_)
                                     (if _%t250026%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx250001%_
                                            _%t250026%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp251439
                               _%argument-types250023%_))))
                      (let _%loop250030%_ ((_%rest-args250032%_ _%args250002%_)
                                           (_%rest-types250033%_
                                            _%argument-types250028%_)
                                           (_%result250034%_ '#t))
                        (let* ((_%rest-args250035250043%_ _%rest-args250032%_)
                               (_%else250037250051%_
                                (lambda () _%result250034%_))
                               (_%K250039250112%_
                                (lambda (_%rest-args250054%_ _%arg250055%_)
                                  (let* ((_%rest-types250056250067%_
                                          _%rest-types250033%_)
                                         (_%E250060250071%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types250056250067%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K250063250100%_
                                           (lambda (_%rest-types250097%_
                                                    _%type250098%_)
                                             (_%loop250030%_
                                              _%rest-args250054%_
                                              _%rest-types250097%_
                                              (if (gxc#check-expression-type!
                                                   _%stx250001%_
                                                   _%arg250055%_
                                                   _%type250098%_)
                                                  _%result250034%_
                                                  '#f))))
                                          (_%K250062250091%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx250001%_
                                                _%argument-types250028%_))))
                                          (_%K250061250081%_
                                           (lambda (_%tail-type250075%_)
                                             (if (let ((__tmp251440
                                                        (lambda (_%g250076250078%_)
                                                          (gxc#check-expression-type!
                                                           _%stx250001%_
                                                           _%g250076250078%_
                                                           _%tail-type250075%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp251440
                                                    _%rest-args250054%_))
                                                 _%result250034%_
                                                 '#f))))
                                      (let ((_%try-match250058250094%_
                                             (lambda ()
                                               (if (null? _%rest-types250056250067%_)
                                                   (_%K250062250091%_)
                                                   (let ((_%tail-type250084%_
                                                          _%rest-types250056250067%_))
                                                     (_%K250061250081%_
                                                      _%tail-type250084%_))))))
                                        (if (pair? _%rest-types250056250067%_)
                                            (let ((_%tl250065250105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types250056250067%_)))
                                                  (_%hd250064250103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types250056250067%_))))
                                              (let ((_%type250108%_
                                                     _%hd250064250103%_)
                                                    (_%rest-types250110%_
                                                     _%tl250065250105%_))
                                                (_%K250063250100%_
                                                 _%rest-types250110%_
                                                 _%type250108%_)))
                                            (_%try-match250058250094%_))))))))
                          (if (pair? _%rest-args250035250043%_)
                              (let ((_%hd250040250115%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args250035250043%_)))
                                    (_%tl250041250117%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args250035250043%_))))
                                (let* ((_%arg250120%_ _%hd250040250115%_)
                                       (_%rest-args250122%_
                                        _%tl250041250117%_))
                                  (_%K250039250112%_
                                   _%rest-args250122%_
                                   _%arg250120%_)))
                              (_%else250037250051%_)))))
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
      (lambda (_%self249810%_ _%ctx249811%_ _%stx249812%_ _%args249813%_)
        (let* ((_%self249816%_ _%self249810%_)
               (_%g249826249836%_
                (lambda (_%g249827249833%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249827249833%_))))
               (_%g249825249874%_
                (lambda (_%g249827249839%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249827249839%_))
                      (let ((_%e249829249841%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g249827249839%_))))
                        (let ((_%hd249830249844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249829249841%_)))
                              (_%tl249831249846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249829249841%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249831249846%_))
                              ((lambda (_%g249828249849%_)
                                 (let* ((_%klass249861%_
                                         (let ((__tmp251441
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self249816%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx249812%_
                                            __tmp251441)))
                                        (_%object249863%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx249811%_
                                            _%g249828249849%_)))
                                        (_%instance?249868%_
                                         (let ((_%$e249865%_
                                                (gxc#expression-type?
                                                 _%object249863%_
                                                 _%klass249861%_)))
                                           (if _%$e249865%_
                                               _%$e249865%_
                                               (gxc#expression-type?
                                                _%g249828249849%_
                                                _%klass249861%_)))))
                                   (if _%instance?249868%_
                                       (let ((__tmp251442
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object249863%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g249828249849%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object249863%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251442
                                          _%stx249812%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx249811%_
                                          _%stx249812%_)))))
                               _%hd249830249844%_)
                              (_%g249826249836%_ _%g249827249839%_))))
                      (_%g249826249836%_ _%g249827249839%_)))))
          (_%g249825249874%_ _%args249813%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self249606%_ _%ctx249607%_ _%stx249608%_ _%args249609%_)
        (let* ((_%self249612%_ _%self249606%_)
               (_%g249622249632%_
                (lambda (_%g249623249629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249623249629%_))))
               (_%g249621249685%_
                (lambda (_%g249623249635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249623249635%_))
                      (let ((_%e249625249637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g249623249635%_))))
                        (let ((_%hd249626249640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249625249637%_)))
                              (_%tl249627249642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249625249637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249627249642%_))
                              ((lambda (_%g249624249645%_)
                                 (let* ((_%klass249657%_
                                         (let ((__tmp251443
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self249612%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx249608%_
                                            __tmp251443)))
                                        (_%object249659%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx249607%_
                                            _%g249624249645%_)))
                                        (_%instance?249664%_
                                         (let ((_%$e249661%_
                                                (gxc#expression-type?
                                                 _%object249659%_
                                                 _%klass249657%_)))
                                           (if _%$e249661%_
                                               _%$e249661%_
                                               (gxc#expression-type?
                                                _%g249624249645%_
                                                _%klass249657%_))))
                                        (_%klass249667%_ _%klass249657%_))
                                   (if _%instance?249664%_
                                       (let ((__tmp251444
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object249659%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g249624249645%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object249659%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251444
                                          _%stx249608%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass249667%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp251445
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass249667%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object249659%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251445
                                              _%stx249608%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass249667%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp251446
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass249667%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object249659%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251446
                                                  _%stx249608%_))
                                               (let ((__tmp251447
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self249612%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object249659%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251447
                                                  _%stx249608%_)))))))
                               _%hd249626249640%_)
                              (_%g249622249632%_ _%g249623249635%_))))
                      (_%g249622249632%_ _%g249623249635%_)))))
          (_%g249621249685%_ _%args249609%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx249274%_)
        (let* ((_%__stx250842250843%_ _%stx249274%_)
               (_%g249279249320%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx250842250843%_)))))
          (let ((_%__kont250844250845%_ (lambda () '#t))
                (_%__kont250846250847%_ (lambda () '#t))
                (_%__kont250848250849%_
                 (lambda (_%g249293249386%_ _%g249294249387%_)
                   (let ((_%rator-type249408249410%_
                          (let ((__tmp251448
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g249294249387%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp251448))))
                     (if _%rator-type249408249410%_
                         (let* ((_%rator-type249412%_
                                 _%rator-type249408249410%_)
                                (_%rator-signature249413249415%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type249412%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type249412%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature249413249415%_
                               (let* ((_%rator-signature249417%_
                                       _%rator-signature249413249415%_)
                                      (_%rator-effect249418249420%_
                                       (if _%rator-signature249417%_
                                           (##direct-structure-ref
                                            _%rator-signature249417%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect249418249420%_
                                     (let ((_%rator-effect249422%_
                                            _%rator-effect249418249420%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect249422%_)
                                               (equal? '(alloc)
                                                       _%rator-effect249422%_))
                                           (let ((__tmp251449
                                                  (let ((__tmp251450
                                                         (lambda (_%g249427249430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g249428249432%_)
                   (cons _%g249427249430%_ _%g249428249432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp251450
                                                     '()
                                                     _%g249293249386%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp251449))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont250852250853%_ (lambda () '#f)))
            (let ((_%__match250931250932%_
                   (lambda (_%e249295249332%_
                            _%hd249296249335%_
                            _%tl249297249337%_
                            _%e249298249340%_
                            _%hd249299249343%_
                            _%tl249300249345%_
                            _%e249301249348%_
                            _%hd249302249351%_
                            _%tl249303249353%_
                            _%e249304249356%_
                            _%hd249305249359%_
                            _%tl249306249361%_
                            _%__splice250850250851%_
                            _%target249307249364%_
                            _%tl249309249366%_)
                     (letrec ((_%loop249310249369%_
                               (lambda (_%hd249308249372%_
                                        _%rand249314249374%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd249308249372%_))
                                     (let ((_%e249311249376%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd249308249372%_))))
                                       (let ((_%lp-tl249313249381%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e249311249376%_)))
                                             (_%lp-hd249312249379%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e249311249376%_))))
                                         (_%loop249310249369%_
                                          _%lp-tl249313249381%_
                                          (cons _%lp-hd249312249379%_
                                                _%rand249314249374%_))))
                                     (let ((_%rand249315249384%_
                                            (reverse _%rand249314249374%_)))
                                       (_%__kont250848250849%_
                                        _%rand249315249384%_
                                        _%hd249305249359%_))))))
                       (_%loop249310249369%_ _%target249307249364%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx250842250843%_))
                  (let ((_%e249281249463%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx250842250843%_))))
                    (let ((_%tl249283249468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249281249463%_)))
                          (_%hd249282249466%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249281249463%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd249282249466%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd249282249466%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249283249468%_))
                                  (let ((_%e249284249471%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249283249468%_))))
                                    (let ((_%tl249286249476%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249284249471%_)))
                                          (_%hd249285249474%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249284249471%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249286249476%_))
                                          (_%__kont250844250845%_)
                                          (_%__kont250852250853%_))))
                                  (_%__kont250852250853%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd249282249466%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249283249468%_))
                                      (let ((_%e249290249448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249283249468%_))))
                                        (let ((_%tl249292249453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249290249448%_)))
                                              (_%hd249291249451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249290249448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249292249453%_))
                                              (_%__kont250846250847%_)
                                              (_%__kont250852250853%_))))
                                      (_%__kont250852250853%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd249282249466%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249283249468%_))
                                          (let ((_%e249298249340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249283249468%_))))
                                            (let ((_%tl249300249345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249298249340%_)))
                                                  (_%hd249299249343%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249298249340%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd249299249343%_))
                                                  (let ((_%e249301249348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd249299249343%_))))
                                                    (let ((_%tl249303249353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249301249348%_)))
                                                          (_%hd249302249351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249301249348%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd249302249351%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd249302249351%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249303249353%_))
                          (let ((_%e249304249356%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249303249353%_))))
                            (let ((_%tl249306249361%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249304249356%_)))
                                  (_%hd249305249359%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249304249356%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249306249361%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl249300249345%_))
                                      (let ((_%__splice250850250851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl249300249345%_
                                                '0))))
                                        (let ((_%tl249309249366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250850250851%_
                                                  '1)))
                                              (_%target249307249364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250850250851%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249309249366%_))
                                              (_%__match250931250932%_
                                               _%e249281249463%_
                                               _%hd249282249466%_
                                               _%tl249283249468%_
                                               _%e249298249340%_
                                               _%hd249299249343%_
                                               _%tl249300249345%_
                                               _%e249301249348%_
                                               _%hd249302249351%_
                                               _%tl249303249353%_
                                               _%e249304249356%_
                                               _%hd249305249359%_
                                               _%tl249306249361%_
                                               _%__splice250850250851%_
                                               _%target249307249364%_
                                               _%tl249309249366%_)
                                              (_%__kont250852250853%_))))
                                      (_%__kont250852250853%_))
                                  (_%__kont250852250853%_))))
                          (_%__kont250852250853%_))
                      (_%__kont250852250853%_))
                  (_%__kont250852250853%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont250852250853%_))))
                                          (_%__kont250852250853%_))
                                      (_%__kont250852250853%_))))
                          (_%__kont250852250853%_))))
                  (_%__kont250852250853%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx249269%_ _%klass249270%_)
        (let ((_%expr-type249272%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx249269%_))))
          (if _%expr-type249272%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type249272%_ _%klass249270%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx249247%_ _%expr249248%_ _%type249249%_)
        (if (not _%type249249%_)
            '#f
            (let ((_%$e249252%_
                   (eq? (##structure-ref _%type249249%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e249252%_
                  _%$e249252%_
                  (let ((_%expr-type249256%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr249248%_))))
                    (if (not _%expr-type249256%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type249256%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e249260%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type249256%_
                                      'gxc#!abort::t))))
                              (if _%$e249260%_
                                  _%$e249260%_
                                  (let ((_%$e249263%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type249256%_
                                            _%type249249%_))))
                                    (if _%$e249263%_
                                        _%$e249263%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type249249%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type249249%_
                                                   _%expr-type249256%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx249247%_
                                                   _%expr249248%_
                                                   _%expr-type249256%_
                                                   _%type249249%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self249061%_ _%ctx249062%_ _%stx249063%_ _%args249064%_)
        (let* ((_%self249067%_ _%self249061%_)
               (_%klass249077%_
                (let ((__tmp251451
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self249067%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx249063%_ __tmp251451)))
               (_%fields249079%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass249077%_
                           '5
                           '#f
                           '#f))))
               (_%args249085%_
                (map (lambda (_%g249080249082%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx249062%_ _%g249080249082%_)))
                     _%args249064%_))
               (_%inline-make-object249087%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self249067%_
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
                           _%self249067%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields249079%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass249090%_ _%klass249077%_)
               (_%$e249104%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass249090%_ '6 '#f '#f))))
          (if _%$e249104%_
              ((lambda (_%ctor249107%_)
                 (let ((_%$obj249109%_
                        (let ((__tmp251452
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp251452)))
                       (_%ctor-impl249110%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass249090%_
                           _%ctor249107%_))))
                   (let ((__tmp251453
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj249109%_ '())
                                                  (cons _%inline-make-object249087%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl249110%_
                                                            (let ((__tmp251454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl249110%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj249109%_ '()))
                                             _%args249085%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp251454
                       _%stx249063%_
                       _%ctx249062%_))
                    (let ((_%$ctor249112%_
                           (let ((__tmp251455
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp251455))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor249112%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self249067%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj249109%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor249107%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor249112%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor249112%_ '()))
                              (cons (cons '%#ref (cons _%$obj249109%_ '()))
                                    _%args249085%_)))
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
                             _%self249067%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor249107%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj249109%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp251453 _%stx249063%_))))
               _%$e249104%_)
              (let ((_%$e249114%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass249090%_
                        '10
                        '#f
                        '#f))))
                (if _%$e249114%_
                    ((lambda (_%metaclass249117%_)
                       (let* ((_%$obj249119%_
                               (let ((__tmp251456
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp251456)))
                              (_%metakons249121%_
                               (let ((__tmp251457
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx249063%_
                                         _%metaclass249117%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp251457
                                  'instance-init!)))
                              (__tmp251458
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj249119%_
                                                             '())
                                                       (cons _%inline-make-object249087%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons249121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251459
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons249121%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self249067%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj249119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args249085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp251459
                            _%stx249063%_
                            _%ctx249062%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self249067%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj249119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args249085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj249119%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp251458 _%stx249063%_)))
                     _%$e249114%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass249090%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp251460
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args249085%_))))
                              (declare (not safe))
                              (##fx= __tmp251460 _%fields249079%_))
                            (let ((__tmp251461
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self249067%_
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
                                              _%self249067%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args249085%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251461
                               _%stx249063%_))
                            (let ((__tmp251463
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self249067%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp251462
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass249090%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx249063%_
                               __tmp251463
                               __tmp251462)))
                        (let ((_%$obj249126%_
                               (let ((__tmp251464
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp251464))))
                          (let _%lp249128%_ ((_%rest249130%_ _%args249085%_)
                                             (_%initializers249131%_ '()))
                            (let* ((_%__stx250934250935%_ _%rest249130%_)
                                   (_%g249135249156%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx250934250935%_)))))
                              (let ((_%__kont250936250937%_
                                     (lambda (_%g249137249210%_
                                              _%g249138249211%_
                                              _%g249139249212%_)
                                       (let* ((_%slot249239%_
                                               (let ((__tmp251465
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g249139249212%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp251465)))
                                              (_%off249241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass249090%_
                                                  _%slot249239%_))))
                                         (if _%off249241%_
                                             (_%lp249128%_
                                              _%g249137249210%_
                                              (cons (cons _%off249241%_
                                                          _%g249138249211%_)
                                                    _%initializers249131%_))
                                             (let ((__tmp251466
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self249067%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx249063%_
                                                __tmp251466
                                                _%slot249239%_))))))
                                    (_%__kont250938250939%_
                                     (lambda ()
                                       (let ((__tmp251467
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj249126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object249087%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp251470
                                     (cons (cons '%#ref
                                                 (cons _%$obj249126%_ '()))
                                           '()))
                                    (__tmp251468
                                     (let ((__tmp251469
                                            (lambda (_%i249170%_ _%r249171%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self249067%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i249170%_) '()))
                              (cons (cons '%#ref (cons _%$obj249126%_ '()))
                                    (cons (cdr _%i249170%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r249171%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp251469
                                        '()
                                        _%initializers249131%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp251470 __tmp251468)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251467
                                          _%stx249063%_))))
                                    (_%__kont250940250941%_
                                     (lambda ()
                                       (let ((__tmp251471
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj249126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object249087%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj249126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args249085%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj249126%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251471
                                          _%stx249063%_)))))
                                (let* ((_%g249133249173%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx250934250935%_))
                                              (_%__kont250938250939%_)
                                              (_%__kont250940250941%_))))
                                       (_%__match250971250972%_
                                        (lambda (_%e249140249178%_
                                                 _%hd249141249181%_
                                                 _%tl249142249183%_
                                                 _%e249143249186%_
                                                 _%hd249144249189%_
                                                 _%tl249145249191%_
                                                 _%e249146249194%_
                                                 _%hd249147249197%_
                                                 _%tl249148249199%_
                                                 _%e249149249202%_
                                                 _%hd249150249205%_
                                                 _%tl249151249207%_)
                                          (let ((_%g249137249210%_
                                                 _%tl249151249207%_)
                                                (_%g249138249211%_
                                                 _%hd249150249205%_)
                                                (_%g249139249212%_
                                                 _%hd249147249197%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g249139249212%_))
                                                (_%__kont250936250937%_
                                                 _%g249137249210%_
                                                 _%g249138249211%_
                                                 _%g249139249212%_)
                                                (_%__kont250940250941%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx250934250935%_))
                                      (let ((_%e249140249178%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx250934250935%_))))
                                        (let ((_%tl249142249183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249140249178%_)))
                                              (_%hd249141249181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249140249178%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd249141249181%_))
                                              (let ((_%e249143249186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd249141249181%_))))
                                                (let ((_%tl249145249191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249143249186%_)))
                                                      (_%hd249144249189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249143249186%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd249144249189%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd249144249189%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl249145249191%_))
                      (let ((_%e249146249194%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249145249191%_))))
                        (let ((_%tl249148249199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249146249194%_)))
                              (_%hd249147249197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249146249194%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249148249199%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249142249183%_))
                                  (let ((_%e249149249202%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249142249183%_))))
                                    (let ((_%tl249151249207%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249149249202%_)))
                                          (_%hd249150249205%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249149249202%_))))
                                      (_%__match250971250972%_
                                       _%e249140249178%_
                                       _%hd249141249181%_
                                       _%tl249142249183%_
                                       _%e249143249186%_
                                       _%hd249144249189%_
                                       _%tl249145249191%_
                                       _%e249146249194%_
                                       _%hd249147249197%_
                                       _%tl249148249199%_
                                       _%e249149249202%_
                                       _%hd249150249205%_
                                       _%tl249151249207%_)))
                                  (_%__kont250940250941%_))
                              (_%__kont250940250941%_))))
                      (_%__kont250940250941%_))
                  (_%__kont250940250941%_))
              (_%__kont250940250941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont250940250941%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249133249173%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self248844%_ _%ctx248845%_ _%stx248846%_ _%args248847%_)
        (let* ((_%self248850%_ _%self248844%_)
               (_%arguments-ok?248860%_
                (let ((__method251415
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self248850%_ 'check-arguments))))
                  (if __method251415
                      (let ()
                        (declare (not safe))
                        (__method251415
                         _%self248850%_
                         _%ctx248845%_
                         _%stx248846%_
                         _%args248847%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self248850%_
                                 'check-arguments))
                        '#!void))))
               (_%g248862248872%_
                (lambda (_%g248863248869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g248863248869%_))))
               (_%g248861248936%_
                (lambda (_%g248863248875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g248863248875%_))
                      (let ((_%e248865248877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g248863248875%_))))
                        (let ((_%hd248866248880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e248865248877%_)))
                              (_%tl248867248882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e248865248877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl248867248882%_))
                              ((lambda (_%g248864248885%_)
                                 (let* ((_%klass248898%_
                                         (let ((__tmp251472
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self248850%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx248846%_
                                            __tmp251472)))
                                        (_%field248900%_
                                         (let ((__tmp251473
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self248850%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass248898%_
                                            __tmp251473)))
                                        (_%object248902%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx248845%_
                                            _%g248864248885%_)))
                                        (_%klass248905%_ _%klass248898%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass248905%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp251474
                                              (cons (if (or _%arguments-ok?248860%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self248850%_
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
                                 _%self248850%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field248900%_ '()))
                        (cons _%object248902%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251474
                                          _%stx248846%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass248905%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp251475
                                                  (cons (if (or _%arguments-ok?248860%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self248850%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self248850%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field248900%_ '()))
                            (cons _%object248902%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251475
                                              _%stx248846%_))
                                           (let ((_%$e248924%_
                                                  (let ((__tmp251476
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self248850%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass248905%_
                                                     __tmp251476))))
                                             (if _%$e248924%_
                                                 ((lambda (_%klass248927%_)
                                                    (let ((__tmp251477
                                                           (cons (if (or _%arguments-ok?248860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248850%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self248850%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field248900%_ '()))
                                     (cons _%object248902%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp251477 _%stx248846%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e248924%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self248850%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp251478
                                                            (let ((_%$obj248933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp251479
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp251479))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj248933%_ '())
                                              (cons _%object248902%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass248905%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj248933%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248850%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field248900%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj248933%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?248860%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj248933%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self248850%_
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
                                                             _%self248850%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj248933%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self248850%_
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
               (gxc#xform-wrap-source __tmp251478 _%stx248846%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp251480
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object248902%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self248850%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp251480 _%stx248846%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd248866248880%_)
                              (_%g248862248872%_ _%g248863248875%_))))
                      (_%g248862248872%_ _%g248863248875%_)))))
          (_%g248861248936%_ _%args248847%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass250702 __method-table250703)
        (let ((__check-arguments250704
               (let ((__tmp251481
                      (lambda ()
                        (let ((__method250705
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table250703
                                  'check-arguments
                                  '#f))))
                          (if __method250705
                              __method250705
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp251481)))
              (__slot250706
               (let ((__slot250707
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass250702 'slot))))
                 (if __slot250707
                     __slot250707
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self248844%_ _%ctx248845%_ _%stx248846%_ _%args248847%_)
            (let* ((_%self248850%_ _%self248844%_)
                   (_%arguments-ok?248860%_
                    ((force __check-arguments250704)
                     _%self248850%_
                     _%ctx248845%_
                     _%stx248846%_
                     _%args248847%_))
                   (_%g248862248872%_
                    (lambda (_%g248863248869%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g248863248869%_))))
                   (_%g248861248936%_
                    (lambda (_%g248863248875%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g248863248875%_))
                          (let ((_%e248865248877%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g248863248875%_))))
                            (let ((_%hd248866248880%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248865248877%_)))
                                  (_%tl248867248882%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248865248877%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl248867248882%_))
                                  ((lambda (_%g248864248885%_)
                                     (let* ((_%klass248898%_
                                             (let ((__tmp251482
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self248850%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx248846%_
                                                __tmp251482)))
                                            (_%field248900%_
                                             (let ((__tmp251483
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self248850%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass248898%_
                                                __tmp251483)))
                                            (_%object248902%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx248845%_
                                                _%g248864248885%_)))
                                            (_%klass248905%_ _%klass248898%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass248905%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp251484
                                                  (cons (if (or _%arguments-ok?248860%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self248850%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self248850%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field248900%_ '()))
                            (cons _%object248902%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251484
                                              _%stx248846%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass248905%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp251485
                                                      (cons (if (or _%arguments-ok?248860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self248850%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248850%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field248900%_ '()))
                                (cons _%object248902%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251485
                                                  _%stx248846%_))
                                               (let ((_%$e248924%_
                                                      (let ((__tmp251486
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self248850%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass248905%_ __tmp251486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e248924%_
                                                     ((lambda (_%klass248927%_)
                                                        (let ((__tmp251487
                                                               (cons (if (or _%arguments-ok?248860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248850%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self248850%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field248900%_ '()))
                                         (cons _%object248902%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp251487 _%stx248846%_)))
              _%$e248924%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self248850%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp251488
                                                                (let ((_%$obj248933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp251489
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp251489))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj248933%_ '())
                                                  (cons _%object248902%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass248905%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj248933%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self248850%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field248900%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj248933%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?248860%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj248933%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self248850%_
                               __slot250706
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
                        (##unchecked-structure-ref _%self248850%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj248933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self248850%_
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
                   (gxc#xform-wrap-source __tmp251488 _%stx248846%_))
                 (let ((__tmp251490
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object248902%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self248850%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp251490 _%stx248846%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd248866248880%_)
                                  (_%g248862248872%_ _%g248863248875%_))))
                          (_%g248862248872%_ _%g248863248875%_)))))
              (_%g248861248936%_ _%args248847%_))))))
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
      (lambda (_%self248608%_ _%ctx248609%_ _%stx248610%_ _%args248611%_)
        (let* ((_%self248614%_ _%self248608%_)
               (_%arguments-ok?248624%_
                (let ((__method251416
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self248614%_ 'check-arguments))))
                  (if __method251416
                      (let ()
                        (declare (not safe))
                        (__method251416
                         _%self248614%_
                         _%ctx248609%_
                         _%stx248610%_
                         _%args248611%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self248614%_
                                 'check-arguments))
                        '#!void))))
               (_%g248626248640%_
                (lambda (_%g248627248637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g248627248637%_))))
               (_%g248625248719%_
                (lambda (_%g248627248643%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g248627248643%_))
                      (let ((_%e248630248645%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g248627248643%_))))
                        (let ((_%hd248631248648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e248630248645%_)))
                              (_%tl248632248650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e248630248645%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl248632248650%_))
                              (let ((_%e248633248653%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl248632248650%_))))
                                (let ((_%hd248634248656%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e248633248653%_)))
                                      (_%tl248635248658%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e248633248653%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl248635248658%_))
                                      ((lambda (_%g248628248661%_
                                                _%g248629248662%_)
                                         (let* ((_%klass248678%_
                                                 (let ((__tmp251491
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self248614%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx248610%_
                                                    __tmp251491)))
                                                (_%field248680%_
                                                 (let ((__tmp251492
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self248614%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass248678%_
                                                    __tmp251492)))
                                                (_%object248682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx248609%_
                                                    _%g248629248662%_)))
                                                (_%value248684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx248609%_
                                                    _%g248628248661%_)))
                                                (_%klass248687%_
                                                 _%klass248678%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass248687%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp251493
                                                      (cons (if (or _%arguments-ok?248624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self248614%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248614%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field248680%_ '()))
                                (cons _%object248682%_
                                      (cons _%value248684%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251493
                                                  _%stx248610%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass248687%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp251494
                                                          (cons (if (or _%arguments-ok?248624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self248614%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248614%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field248680%_ '()))
                                    (cons _%object248682%_
                                          (cons _%value248684%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp251494
                                                      _%stx248610%_))
                                                   (let ((_%$e248707%_
                                                          (let ((__tmp251495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self248614%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass248687%_
                     __tmp251495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e248707%_
                                                         ((lambda (_%klass248710%_)
                                                            (let ((__tmp251496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?248624%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self248614%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self248614%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field248680%_ '()))
                                             (cons _%object248682%_
                                                   (cons _%value248684%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251496 _%stx248610%_)))
                  _%$e248707%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self248614%_ '4 '#f '#f))
                     (let ((__tmp251497
                            (let ((_%$obj248716%_
                                   (let ((__tmp251498
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp251498))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj248716%_ '())
                                                      (cons _%object248682%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass248687%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj248716%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self248614%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field248680%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj248716%_
                                                              '()))
                                                  (cons _%value248684%_
                                                        '())))))
                          (cons (if _%arguments-ok?248624%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj248716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self248614%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value248684%_ '())))))
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
                             _%self248614%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj248716%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248614%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value248684%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp251497 _%stx248610%_))
                     (let ((__tmp251499
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object248682%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self248614%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value248684%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp251499
                        _%stx248610%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd248634248656%_
                                       _%hd248631248648%_)
                                      (_%g248626248640%_ _%g248627248643%_))))
                              (_%g248626248640%_ _%g248627248643%_))))
                      (_%g248626248640%_ _%g248627248643%_)))))
          (_%g248625248719%_ _%args248611%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass250708 __method-table250709)
        (let ((__check-arguments250710
               (let ((__tmp251500
                      (lambda ()
                        (let ((__method250711
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table250709
                                  'check-arguments
                                  '#f))))
                          (if __method250711
                              __method250711
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp251500))))
          (lambda (_%self248608%_ _%ctx248609%_ _%stx248610%_ _%args248611%_)
            (let* ((_%self248614%_ _%self248608%_)
                   (_%arguments-ok?248624%_
                    ((force __check-arguments250710)
                     _%self248614%_
                     _%ctx248609%_
                     _%stx248610%_
                     _%args248611%_))
                   (_%g248626248640%_
                    (lambda (_%g248627248637%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g248627248637%_))))
                   (_%g248625248719%_
                    (lambda (_%g248627248643%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g248627248643%_))
                          (let ((_%e248630248645%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g248627248643%_))))
                            (let ((_%hd248631248648%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248630248645%_)))
                                  (_%tl248632248650%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248630248645%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl248632248650%_))
                                  (let ((_%e248633248653%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl248632248650%_))))
                                    (let ((_%hd248634248656%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e248633248653%_)))
                                          (_%tl248635248658%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e248633248653%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl248635248658%_))
                                          ((lambda (_%g248628248661%_
                                                    _%g248629248662%_)
                                             (let* ((_%klass248678%_
                                                     (let ((__tmp251501
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self248614%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx248610%_
                                                        __tmp251501)))
                                                    (_%field248680%_
                                                     (let ((__tmp251502
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self248614%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass248678%_
                                                        __tmp251502)))
                                                    (_%object248682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx248609%_
                                                        _%g248629248662%_)))
                                                    (_%value248684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx248609%_
                                                        _%g248628248661%_)))
                                                    (_%klass248687%_
                                                     _%klass248678%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass248687%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp251503
                                                          (cons (if (or _%arguments-ok?248624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self248614%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248614%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field248680%_ '()))
                                    (cons _%object248682%_
                                          (cons _%value248684%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp251503
                                                      _%stx248610%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass248687%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp251504
                                                              (cons (if (or _%arguments-ok?248624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self248614%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self248614%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field248680%_ '()))
                                        (cons _%object248682%_
                                              (cons _%value248684%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp251504 _%stx248610%_))
               (let ((_%$e248707%_
                      (let ((__tmp251505
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self248614%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass248687%_
                         __tmp251505))))
                 (if _%$e248707%_
                     ((lambda (_%klass248710%_)
                        (let ((__tmp251506
                               (cons (if (or _%arguments-ok?248624%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self248614%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self248614%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field248680%_
                                                             '()))
                                                 (cons _%object248682%_
                                                       (cons _%value248684%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp251506 _%stx248610%_)))
                      _%$e248707%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self248614%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp251507
                                (let ((_%$obj248716%_
                                       (let ((__tmp251508
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp251508))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj248716%_
                                                                '())
                                                          (cons _%object248682%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass248687%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj248716%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self248614%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field248680%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj248716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value248684%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?248624%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj248716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self248614%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value248684%_ '())))))
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
                                 _%self248614%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj248716%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248614%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value248684%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp251507 _%stx248610%_))
                         (let ((__tmp251509
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object248682%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self248614%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value248684%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp251509
                            _%stx248610%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd248634248656%_
                                           _%hd248631248648%_)
                                          (_%g248626248640%_
                                           _%g248627248643%_))))
                                  (_%g248626248640%_ _%g248627248643%_))))
                          (_%g248626248640%_ _%g248627248643%_)))))
              (_%g248625248719%_ _%args248611%_))))))
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
      (lambda (_%self248424%_ _%ctx248425%_ _%stx248426%_ _%args248427%_)
        (let* ((_%self248430%_ _%self248424%_)
               (_%self248439248449%_ _%self248430%_)
               (_%E248441248452%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self248439248449%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K248442248462%_
                (lambda (_%inline248455%_ _%dispatch248456%_ _%arity248457%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self248430%_
                         _%args248427%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx248426%_
                         _%arity248457%_)))
                  (if _%inline248455%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp251510 (_%inline248455%_ _%stx248426%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp251510
                           _%stx248426%_
                           _%ctx248425%_)))
                      (if (and _%dispatch248456%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch248456%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch248456%_))
                            (let ((__tmp251511
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch248456%_
                                                           '()))
                                               _%args248427%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp251511
                               _%stx248426%_
                               _%ctx248425%_)))
                          (gxc#!procedure::optimize-call
                           _%self248430%_
                           _%ctx248425%_
                           _%stx248426%_
                           _%args248427%_)))))
               (_%e248443248465%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248439248449%_ '1 '#f '#f)))
               (_%e248444248468%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248439248449%_ '2 '#f '#f)))
               (_%e248445248471%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248439248449%_ '3 '#f '#f)))
               (_%arity248474%_ _%e248445248471%_)
               (_%e248446248476%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248439248449%_ '4 '#f '#f)))
               (_%dispatch248479%_ _%e248446248476%_)
               (_%e248447248481%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248439248449%_ '5 '#f '#f)))
               (_%inline248484%_ _%e248447248481%_))
          (_%K248442248462%_
           _%inline248484%_
           _%dispatch248479%_
           _%arity248474%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self248276%_ _%ctx248277%_ _%stx248278%_ _%args248279%_)
        (let* ((_%self248282%_ _%self248276%_)
               (_%$e248296%_
                (let ((__tmp251513
                       (lambda (_%g248291248293%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g248291248293%_
                            _%args248279%_))))
                      (__tmp251512
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self248282%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp251513 __tmp251512))))
          (if _%$e248296%_
              ((lambda (_%clause248299%_)
                 (let ((__method251417
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause248299%_ 'optimize-call))))
                   (if __method251417
                       (let ()
                         (declare (not safe))
                         (__method251417
                          _%clause248299%_
                          _%ctx248277%_
                          _%stx248278%_
                          _%args248279%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause248299%_
                                  'optimize-call))
                         '#!void))))
               _%$e248296%_)
              (let ((__tmp251514
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self248282%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx248278%_
                 __tmp251514))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self248017%_ _%ctx248018%_ _%stx248019%_ _%args248020%_)
        (let* ((_%self248023%_ _%self248017%_)
               (_%self248032248041%_ _%self248023%_)
               (_%E248034248044%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self248032248041%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K248035248135%_
                (lambda (_%dispatch248047%_ _%table248048%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch248047%_))
                      (let* ((_%g248049248059%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch248047%_)))
                             (_%else248051248067%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch248047%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx248018%_
                                   _%stx248019%_))))
                             (_%K248053248116%_
                              (lambda (_%main248070%_ _%keys248071%_)
                                (let ((_g251515_
                                       (gxc#!kw-lambda-split-args
                                        _%stx248019%_
                                        _%args248020%_)))
                                  (begin
                                    (let ((_g251516_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g251515_)
                                                 (##values-length _g251515_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g251516_ 2)))
                                          (error "Context expects 2 values"
                                                 _g251516_)))
                                    (let ((_%pargs248073%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g251515_ 0)))
                                          (_%kwargs248074%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g251515_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main248070%_))
                                        (if _%table248048%_
                                            (let ((_%xargs248082%_
                                                   (map (lambda (_%key248076%_)
                                                          (let ((_%$e248078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key248076%_ _%kwargs248074%_))))
                    (if _%$e248078%_ _%$e248078%_ '(%#ref absent-value))))
                _%keys248071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw248084%_)
                                                 (if (memq (car _%kw248084%_)
                                                           _%keys248071%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx248019%_
                                                        _%keys248071%_
                                                        _%kw248084%_))))
                                               _%kwargs248074%_)
                                              (let ((__tmp251517
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main248070%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs248073%_
                                  _%xargs248082%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp251517
                                                 _%stx248019%_
                                                 _%ctx248018%_)))
                                            (let* ((_%kwt248086%_
                                                    (let ((__tmp251518
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp251518)))
                                                   (_%kwvars248090%_
                                                    (map (lambda (_%_248088%_)
                                                           (let ((__tmp251519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp251519)))
                 _%kwargs248074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind248095%_
                                                    (map (lambda (_%kw248092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar248093%_)
                   (cons (cons _%kwvar248093%_ '())
                         (cons (cdr _%kw248092%_) '())))
                 _%kwargs248074%_
                 _%kwvars248090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset248100%_
                                                    (map (lambda (_%kw248097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar248098%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt248086%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw248097%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar248098%_
                                                             '()))
                                                 '()))))))
                 _%kwargs248074%_
                 _%kwvars248090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs248105%_
                                                    (map (lambda (_%kw248102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar248103%_)
                   (cons (car _%kw248102%_)
                         (cons '%#ref (cons _%kwvar248103%_ '()))))
                 _%kwargs248074%_
                 _%kwvars248090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs248113%_
                                                    (map (lambda (_%key248107%_)
                                                           (let ((_%$e248109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key248107%_ _%xkwargs248105%_))))
                     (if _%$e248109%_ _%$e248109%_ '(%#ref absent-value))))
                 _%keys248071%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp251520
                                                    (cons '%#let-values
                                                          (cons _%kwbind248095%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt248086%_ '())
                                                      (cons (let ((__tmp251521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs248074%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251521 _%stx248019%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp251522
                                                             (cons (let ((__tmp251523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main248070%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt248086%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs248073%_
                                                       _%xargs248113%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp251523 _%stx248019%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp251522 _%kwset248100%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp251520
                                               _%stx248019%_
                                               _%ctx248018%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g248049248059%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e248054248119%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248049248059%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e248055248122%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248049248059%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e248056248125%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248049248059%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys248128%_ _%e248056248125%_)
                                   (_%e248057248130%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248049248059%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main248133%_ _%e248057248130%_))
                              (_%K248053248116%_
                               _%main248133%_
                               _%keys248128%_))
                            (_%else248051248067%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx248018%_ _%stx248019%_)))))
               (_%e248036248138%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248032248041%_ '1 '#f '#f)))
               (_%e248037248141%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248032248041%_ '2 '#f '#f)))
               (_%e248038248144%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248032248041%_ '3 '#f '#f)))
               (_%table248147%_ _%e248038248144%_)
               (_%e248039248149%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248032248041%_ '4 '#f '#f)))
               (_%dispatch248152%_ _%e248039248149%_))
          (_%K248035248135%_ _%dispatch248152%_ _%table248147%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx247630%_ _%args247631%_)
        (let _%lp247633%_ ((_%rest247635%_ _%args247631%_)
                           (_%pargs247636%_ '())
                           (_%kwargs247637%_ '()))
          (let* ((_%__stx250976250977%_ _%rest247635%_)
                 (_%g247643247695%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx250976250977%_)))))
            (let ((_%__kont250978250979%_
                   (lambda (_%g247645247874%_ _%g247646247875%_)
                     (_%lp247633%_
                      _%g247645247874%_
                      (cons _%g247646247875%_ _%pargs247636%_)
                      _%kwargs247637%_)))
                  (_%__kont250980250981%_
                   (lambda (_%g247660247820%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g247660247820%_
                                _%pargs247636%_))
                             (reverse _%kwargs247637%_))))
                  (_%__kont250982250983%_
                   (lambda (_%g247671247767%_
                            _%g247672247768%_
                            _%g247673247769%_)
                     (let ((_%kw247786%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g247673247769%_))))
                       (if (assq _%kw247786%_ _%kwargs247637%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx247630%_
                              _%kw247786%_))
                           (_%lp247633%_
                            _%g247671247767%_
                            _%pargs247636%_
                            (cons (cons _%kw247786%_ _%g247672247768%_)
                                  _%kwargs247637%_))))))
                  (_%__kont250984250985%_
                   (lambda (_%g247686247715%_ _%g247687247716%_)
                     (_%lp247633%_
                      _%g247686247715%_
                      (cons _%g247687247716%_ _%pargs247636%_)
                      _%kwargs247637%_)))
                  (_%__kont250986250987%_
                   (lambda ()
                     (values (reverse _%pargs247636%_)
                             (reverse _%kwargs247637%_)))))
              (let ((_%__match251083251084%_
                     (lambda (_%e247674247735%_
                              _%hd247675247738%_
                              _%tl247676247740%_
                              _%e247677247743%_
                              _%hd247678247746%_
                              _%tl247679247748%_
                              _%e247680247751%_
                              _%hd247681247754%_
                              _%tl247682247756%_
                              _%e247683247759%_
                              _%hd247684247762%_
                              _%tl247685247764%_)
                       (let ((_%g247671247767%_ _%tl247685247764%_)
                             (_%g247672247768%_ _%hd247684247762%_)
                             (_%g247673247769%_ _%hd247681247754%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g247673247769%_))
                             (_%__kont250982250983%_
                              _%g247671247767%_
                              _%g247672247768%_
                              _%g247673247769%_)
                             (_%__kont250984250985%_
                              _%tl247676247740%_
                              _%hd247675247738%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx250976250977%_))
                    (let ((_%e247647247839%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx250976250977%_))))
                      (let ((_%tl247649247844%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e247647247839%_)))
                            (_%hd247648247842%_
                             (let ()
                               (declare (not safe))
                               (##car _%e247647247839%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd247648247842%_))
                            (let ((_%e247650247847%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd247648247842%_))))
                              (let ((_%tl247652247852%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e247650247847%_)))
                                    (_%hd247651247850%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e247650247847%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd247651247850%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd247651247850%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl247652247852%_))
                                            (let ((_%e247653247855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl247652247852%_))))
                                              (let ((_%tl247655247860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e247653247855%_)))
                                                    (_%hd247654247858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e247653247855%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd247654247858%_))
                                                    (let ((_%e247656247863%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd247654247858%_))))
                                                      (if (equal? _%e247656247863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247655247860%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247649247844%_))
                          (let ((_%e247657247866%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247649247844%_))))
                            (let ((_%tl247659247871%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247657247866%_)))
                                  (_%hd247658247869%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247657247866%_))))
                              (_%__kont250978250979%_
                               _%tl247659247871%_
                               _%hd247658247869%_)))
                          (_%__kont250984250985%_
                           _%tl247649247844%_
                           _%hd247648247842%_))
                      (_%__kont250984250985%_
                       _%tl247649247844%_
                       _%hd247648247842%_))
                  (if (equal? _%e247656247863%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247655247860%_))
                          (_%__kont250980250981%_ _%tl247649247844%_)
                          (_%__kont250984250985%_
                           _%tl247649247844%_
                           _%hd247648247842%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247655247860%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl247649247844%_))
                              (let ((_%e247683247759%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl247649247844%_))))
                                (let ((_%tl247685247764%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e247683247759%_)))
                                      (_%hd247684247762%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e247683247759%_))))
                                  (_%__match251083251084%_
                                   _%e247647247839%_
                                   _%hd247648247842%_
                                   _%tl247649247844%_
                                   _%e247650247847%_
                                   _%hd247651247850%_
                                   _%tl247652247852%_
                                   _%e247653247855%_
                                   _%hd247654247858%_
                                   _%tl247655247860%_
                                   _%e247683247759%_
                                   _%hd247684247762%_
                                   _%tl247685247764%_)))
                              (_%__kont250984250985%_
                               _%tl247649247844%_
                               _%hd247648247842%_))
                          (_%__kont250984250985%_
                           _%tl247649247844%_
                           _%hd247648247842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl247655247860%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl247649247844%_))
                                                            (let ((_%e247683247759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl247649247844%_))))
                      (let ((_%tl247685247764%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e247683247759%_)))
                            (_%hd247684247762%_
                             (let ()
                               (declare (not safe))
                               (##car _%e247683247759%_))))
                        (_%__match251083251084%_
                         _%e247647247839%_
                         _%hd247648247842%_
                         _%tl247649247844%_
                         _%e247650247847%_
                         _%hd247651247850%_
                         _%tl247652247852%_
                         _%e247653247855%_
                         _%hd247654247858%_
                         _%tl247655247860%_
                         _%e247683247759%_
                         _%hd247684247762%_
                         _%tl247685247764%_)))
                    (_%__kont250984250985%_
                     _%tl247649247844%_
                     _%hd247648247842%_))
                (_%__kont250984250985%_
                 _%tl247649247844%_
                 _%hd247648247842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont250984250985%_
                                             _%tl247649247844%_
                                             _%hd247648247842%_))
                                        (_%__kont250984250985%_
                                         _%tl247649247844%_
                                         _%hd247648247842%_))
                                    (_%__kont250984250985%_
                                     _%tl247649247844%_
                                     _%hd247648247842%_))))
                            (_%__kont250984250985%_
                             _%tl247649247844%_
                             _%hd247648247842%_))))
                    (_%__kont250986250987%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self247614%_ _%ctx247615%_ _%stx247616%_ _%args247617%_)
        (let ((_%self247620%_ _%self247614%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx247615%_ _%stx247616%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self247304%_ _%stx247305%_)
        (let* ((_%__stx251092251093%_ _%stx247305%_)
               (_%g247308247348%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx251092251093%_)))))
          (let ((_%__kont251094251095%_
                 (lambda (_%g247310247452%_ _%g247311247453%_)
                   (let ((_%$e247480%_
                          (member 'return:
                                  (let ((__tmp251524
                                         (lambda (_%g247472247475%_
                                                  _%g247473247477%_)
                                           (cons _%g247472247475%_
                                                 _%g247473247477%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp251524
                                     '()
                                     _%g247311247453%_))
                                  gx#stx-eq?)))
                     (if _%$e247480%_
                         ((lambda (_%tail247483%_)
                            (let ((_%type247485%_
                                   (let ((__tmp251525
                                          (let ((__tmp251526
                                                 (cadr _%tail247483%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp251526))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx247305%_
                                      __tmp251525))))
                              (gxc#check-return-type!
                               _%stx247305%_
                               _%g247310247452%_
                               _%type247485%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self247304%_
                                 _%g247310247452%_))))
                          _%$e247480%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self247304%_
                            _%g247310247452%_))))))
                (_%__kont251098251099%_
                 (lambda (_%g247333247377%_ _%g247334247378%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self247304%_ _%g247333247377%_)))))
            (let ((_%__match251129251130%_
                   (lambda (_%e247312247398%_
                            _%hd247313247401%_
                            _%tl247314247403%_
                            _%e247315247406%_
                            _%hd247316247409%_
                            _%tl247317247411%_
                            _%e247318247414%_
                            _%hd247319247417%_
                            _%tl247320247419%_
                            _%__splice251096251097%_
                            _%target247321247422%_
                            _%tl247323247424%_)
                     (letrec ((_%loop247324247427%_
                               (lambda (_%hd247322247430%_
                                        _%signature247328247432%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd247322247430%_))
                                     (let ((_%e247325247434%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd247322247430%_))))
                                       (let ((_%lp-tl247327247439%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e247325247434%_)))
                                             (_%lp-hd247326247437%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e247325247434%_))))
                                         (_%loop247324247427%_
                                          _%lp-tl247327247439%_
                                          (cons _%lp-hd247326247437%_
                                                _%signature247328247432%_))))
                                     (let ((_%signature247329247442%_
                                            (reverse _%signature247328247432%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl247317247411%_))
                                           (let ((_%e247330247444%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl247317247411%_))))
                                             (let ((_%tl247332247449%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e247330247444%_)))
                                                   (_%hd247331247447%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e247330247444%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl247332247449%_))
                                                   (_%__kont251094251095%_
                                                    _%hd247331247447%_
                                                    _%signature247329247442%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g247308247348%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g247308247348%_))))))))
                       (_%loop247324247427%_ _%target247321247422%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx251092251093%_))
                  (let ((_%e247312247398%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx251092251093%_))))
                    (let ((_%tl247314247403%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247312247398%_)))
                          (_%hd247313247401%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247312247398%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247314247403%_))
                          (let ((_%e247315247406%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247314247403%_))))
                            (let ((_%tl247317247411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247315247406%_)))
                                  (_%hd247316247409%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247315247406%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd247316247409%_))
                                  (let ((_%e247318247414%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd247316247409%_))))
                                    (let ((_%tl247320247419%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247318247414%_)))
                                          (_%hd247319247417%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247318247414%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd247319247417%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd247319247417%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl247320247419%_))
                                                  (let ((_%__splice251096251097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl247320247419%_
                                                            '0))))
                                                    (let ((_%tl247323247424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251096251097%_
                                                              '1)))
                                                          (_%target247321247422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251096251097%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247323247424%_))
                                                          (_%__match251129251130%_
                                                           _%e247312247398%_
                                                           _%hd247313247401%_
                                                           _%tl247314247403%_
                                                           _%e247315247406%_
                                                           _%hd247316247409%_
                                                           _%tl247317247411%_
                                                           _%e247318247414%_
                                                           _%hd247319247417%_
                                                           _%tl247320247419%_
                                                           _%__splice251096251097%_
                                                           _%target247321247422%_
                                                           _%tl247323247424%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl247317247411%_))
                      (let ((_%e247341247369%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247317247411%_))))
                        (let ((_%tl247343247374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247341247369%_)))
                              (_%hd247342247372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247341247369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247343247374%_))
                              (_%__kont251098251099%_
                               _%hd247342247372%_
                               _%hd247316247409%_)
                              (let ()
                                (declare (not safe))
                                (_%g247308247348%_)))))
                      (let () (declare (not safe)) (_%g247308247348%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247317247411%_))
                                                      (let ((_%e247341247369%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247317247411%_))))
                (let ((_%tl247343247374%_
                       (let () (declare (not safe)) (##cdr _%e247341247369%_)))
                      (_%hd247342247372%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247341247369%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247343247374%_))
                      (_%__kont251098251099%_
                       _%hd247342247372%_
                       _%hd247316247409%_)
                      (let () (declare (not safe)) (_%g247308247348%_)))))
              (let () (declare (not safe)) (_%g247308247348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247317247411%_))
                                                  (let ((_%e247341247369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247317247411%_))))
                                                    (let ((_%tl247343247374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247341247369%_)))
                                                          (_%hd247342247372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247341247369%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247343247374%_))
                                                          (_%__kont251098251099%_
                                                           _%hd247342247372%_
                                                           _%hd247316247409%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g247308247348%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247308247348%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247317247411%_))
                                              (let ((_%e247341247369%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247317247411%_))))
                                                (let ((_%tl247343247374%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247341247369%_)))
                                                      (_%hd247342247372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247341247369%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247343247374%_))
                                                      (_%__kont251098251099%_
                                                       _%hd247342247372%_
                                                       _%hd247316247409%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247308247348%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247308247348%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247317247411%_))
                                      (let ((_%e247341247369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247317247411%_))))
                                        (let ((_%tl247343247374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247341247369%_)))
                                              (_%hd247342247372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247341247369%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl247343247374%_))
                                              (_%__kont251098251099%_
                                               _%hd247342247372%_
                                               _%hd247316247409%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g247308247348%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247308247348%_))))))
                          (let () (declare (not safe)) (_%g247308247348%_)))))
                  (let () (declare (not safe)) (_%g247308247348%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx247279%_ _%expr247280%_ _%type247281%_)
        (let ((_%$e247283%_ (not _%type247281%_)))
          (if _%$e247283%_
              _%$e247283%_
              (let ((_%$e247286%_
                     (eq? (##structure-ref _%type247281%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e247286%_
                    _%$e247286%_
                    (let ((_%$e247289%_
                           (eq? (##structure-ref
                                 _%type247281%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e247289%_
                          _%$e247289%_
                          (let ((_%expr-type247293%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr247280%_))))
                            (if (not _%expr-type247293%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx247279%_
                                   _%type247281%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type247293%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx247279%_
                                       _%type247281%_
                                       _%expr-type247293%_))
                                    (let ((_%$e247297%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type247293%_
                                              'gxc#!abort::t))))
                                      (if _%$e247297%_
                                          _%$e247297%_
                                          (let ((_%$e247300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type247293%_
                                                    _%type247281%_))))
                                            (if _%$e247300%_
                                                _%$e247300%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx247279%_
                                                   _%type247281%_
                                                   _%expr-type247293%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self246705%_ _%stx246706%_)
        (let* ((_%__stx251174251175%_ _%stx246706%_)
               (_%g246711246821%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx251174251175%_)))))
          (let ((_%__kont251176251177%_
                 (lambda (_%g246713247253%_
                          _%g246714247254%_
                          _%g246715247255%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g246715247255%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self246705%_ _%g246714247254%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self246705%_
                          _%g246713247253%_)))))
                (_%__kont251178251179%_
                 (lambda (_%g246734247079%_
                          _%g246735247080%_
                          _%g246736247081%_
                          _%g246737247082%_)
                   (let ((_%$e247114%_
                          (let ((__tmp251527
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g246737247082%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp251527))))
                     (if _%$e247114%_
                         ((lambda (_%pred-type247117%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type247117%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type247117%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test247122%_
                                        (let ((__tmp251528
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g246737247082%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g246736247081%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp251528
                                           _%stx246706%_
                                           _%self246705%_)))
                                       (_%K247126%_
                                        (let ((__tmp251529
                                               (lambda ()
                                                 (let ((__tmp251532
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self246705%_
                                                             _%g246735247080%_))))
                                                       (__tmp251530
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g246736247081%_))
                            (let ((__tmp251531
                                   (##structure-ref
                                    _%pred-type247117%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx246706%_
                               __tmp251531)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp251532
                                                    gxc#current-compile-path-type
                                                    __tmp251530)))))
                                          (declare (not safe))
                                          (__make-promise __tmp251529)))
                                       (_%E247129%_
                                        (let ((__tmp251533
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self246705%_
                                                    _%g246734247079%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp251533)))
                                       (_%__stx251152251153%_ _%test247122%_)
                                       (_%g247133247147%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx251152251153%_)))))
                                  (let ((_%__kont251154251155%_
                                         (lambda (_%g247135247175%_
                                                  _%g247136247176%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g247135247175%_))
                                               (force _%K247126%_)
                                               (force _%E247129%_))))
                                        (_%__kont251156251157%_
                                         (lambda ()
                                           (let ((__tmp251534
                                                  (cons '%#if
                                                        (cons _%test247122%_
                                                              (cons (force _%K247126%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E247129%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251534
                                              _%stx246706%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx251152251153%_))
                                        (let ((_%e247137247159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx251152251153%_))))
                                          (let ((_%tl247139247164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e247137247159%_)))
                                                (_%hd247138247162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e247137247159%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl247139247164%_))
                                                (let ((_%e247140247167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl247139247164%_))))
                                                  (let ((_%tl247142247172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e247140247167%_)))
                                                        (_%hd247141247170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e247140247167%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl247142247172%_))
                                                        (_%__kont251154251155%_
                                                         _%hd247141247170%_
                                                         _%hd247138247162%_)
                                                        (_%__kont251156251157%_))))
                                                (_%__kont251156251157%_))))
                                        (_%__kont251156251157%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self246705%_
                                   _%stx246706%_))))
                          _%$e247114%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self246705%_
                            _%stx246706%_))))))
                (_%__kont251180251181%_
                 (lambda (_%g246771246955%_
                          _%g246772246956%_
                          _%g246773246957%_
                          _%g246774246958%_)
                   (gxc#optimize-if%
                    _%self246705%_
                    (let ((__tmp251535
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g246773246957%_
                                       (cons _%g246771246955%_
                                             (cons _%g246772246956%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251535 _%stx246706%_)))))
                (_%__kont251182251183%_
                 (lambda (_%g246802246858%_
                          _%g246803246859%_
                          _%g246804246860%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self246705%_ _%stx246706%_)))))
            (let ((_%__match251381251382%_
                   (lambda (_%e246775246883%_
                            _%hd246776246886%_
                            _%tl246777246888%_
                            _%e246778246891%_
                            _%hd246779246894%_
                            _%tl246780246896%_
                            _%e246781246899%_
                            _%hd246782246902%_
                            _%tl246783246904%_
                            _%e246784246907%_
                            _%hd246785246910%_
                            _%tl246786246912%_
                            _%e246787246915%_
                            _%hd246788246918%_
                            _%tl246789246920%_
                            _%e246790246923%_
                            _%hd246791246926%_
                            _%tl246792246928%_
                            _%e246793246931%_
                            _%hd246794246934%_
                            _%tl246795246936%_
                            _%e246796246939%_
                            _%hd246797246942%_
                            _%tl246798246944%_
                            _%e246799246947%_
                            _%hd246800246950%_
                            _%tl246801246952%_)
                     (let ((_%g246771246955%_ _%hd246800246950%_)
                           (_%g246772246956%_ _%hd246797246942%_)
                           (_%g246773246957%_ _%hd246794246934%_)
                           (_%g246774246958%_ _%hd246791246926%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g246774246958%_ 'not))
                           (_%__kont251180251181%_
                            _%g246771246955%_
                            _%g246772246956%_
                            _%g246773246957%_
                            _%g246774246958%_)
                           (_%__kont251182251183%_
                            _%hd246800246950%_
                            _%hd246797246942%_
                            _%hd246779246894%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx251174251175%_))
                  (let ((_%e246716247205%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx251174251175%_))))
                    (let ((_%tl246718247210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246716247205%_)))
                          (_%hd246717247208%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246716247205%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246718247210%_))
                          (let ((_%e246719247213%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246718247210%_))))
                            (let ((_%tl246721247218%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246719247213%_)))
                                  (_%hd246720247216%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246719247213%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd246720247216%_))
                                  (let ((_%e246722247221%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd246720247216%_))))
                                    (let ((_%tl246724247226%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246722247221%_)))
                                          (_%hd246723247224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246722247221%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd246723247224%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd246723247224%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246724247226%_))
                                                  (let ((_%e246725247229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246724247226%_))))
                                                    (let ((_%tl246727247234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246725247229%_)))
                                                          (_%hd246726247232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246725247229%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246727247234%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl246721247218%_))
                      (let ((_%e246728247237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246721247218%_))))
                        (let ((_%tl246730247242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246728247237%_)))
                              (_%hd246729247240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246728247237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl246730247242%_))
                              (let ((_%e246731247245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl246730247242%_))))
                                (let ((_%tl246733247250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e246731247245%_)))
                                      (_%hd246732247248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e246731247245%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl246733247250%_))
                                      (_%__kont251176251177%_
                                       _%hd246732247248%_
                                       _%hd246729247240%_
                                       _%hd246726247232%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g246711246821%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g246711246821%_)))))
                      (let () (declare (not safe)) (_%g246711246821%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246721247218%_))
                      (let ((_%e246811246842%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246721247218%_))))
                        (let ((_%tl246813246847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246811246842%_)))
                              (_%hd246812246845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246811246842%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl246813246847%_))
                              (let ((_%e246814246850%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl246813246847%_))))
                                (let ((_%tl246816246855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e246814246850%_)))
                                      (_%hd246815246853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e246814246850%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl246816246855%_))
                                      (_%__kont251182251183%_
                                       _%hd246815246853%_
                                       _%hd246812246845%_
                                       _%hd246720247216%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g246711246821%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g246711246821%_)))))
                      (let () (declare (not safe)) (_%g246711246821%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246721247218%_))
                                                      (let ((_%e246811246842%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246721247218%_))))
                (let ((_%tl246813246847%_
                       (let () (declare (not safe)) (##cdr _%e246811246842%_)))
                      (_%hd246812246845%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246811246842%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246813246847%_))
                      (let ((_%e246814246850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246813246847%_))))
                        (let ((_%tl246816246855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246814246850%_)))
                              (_%hd246815246853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246814246850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246816246855%_))
                              (_%__kont251182251183%_
                               _%hd246815246853%_
                               _%hd246812246845%_
                               _%hd246720247216%_)
                              (let ()
                                (declare (not safe))
                                (_%g246711246821%_)))))
                      (let () (declare (not safe)) (_%g246711246821%_)))))
              (let () (declare (not safe)) (_%g246711246821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd246723247224%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246724247226%_))
                                                      (let ((_%e246747247015%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246724247226%_))))
                (let ((_%tl246749247020%_
                       (let () (declare (not safe)) (##cdr _%e246747247015%_)))
                      (_%hd246748247018%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246747247015%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd246748247018%_))
                      (let ((_%e246750247023%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd246748247018%_))))
                        (let ((_%tl246752247028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246750247023%_)))
                              (_%hd246751247026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246750247023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd246751247026%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd246751247026%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246752247028%_))
                                      (let ((_%e246753247031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246752247028%_))))
                                        (let ((_%tl246755247036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246753247031%_)))
                                              (_%hd246754247034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246753247031%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246755247036%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246749247020%_))
                                                  (let ((_%e246756247039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246749247020%_))))
                                                    (let ((_%tl246758247044%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246756247039%_)))
                                                          (_%hd246757247042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246756247039%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd246757247042%_))
                                                          (let ((_%e246759247047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd246757247042%_))))
                    (let ((_%tl246761247052%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246759247047%_)))
                          (_%hd246760247050%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246759247047%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd246760247050%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd246760247050%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246761247052%_))
                                  (let ((_%e246762247055%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246761247052%_))))
                                    (let ((_%tl246764247060%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246762247055%_)))
                                          (_%hd246763247058%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246762247055%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246764247060%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246758247044%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246721247218%_))
                                                  (let ((_%e246765247063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246721247218%_))))
                                                    (let ((_%tl246767247068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246765247063%_)))
                                                          (_%hd246766247066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246765247063%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246767247068%_))
                                                          (let ((_%e246768247071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246767247068%_))))
                    (let ((_%tl246770247076%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246768247071%_)))
                          (_%hd246769247074%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246768247071%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246770247076%_))
                          (_%__kont251178251179%_
                           _%hd246769247074%_
                           _%hd246766247066%_
                           _%hd246763247058%_
                           _%hd246754247034%_)
                          (let () (declare (not safe)) (_%g246711246821%_)))))
                  (let () (declare (not safe)) (_%g246711246821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246721247218%_))
                                                  (let ((_%e246811246842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246721247218%_))))
                                                    (let ((_%tl246813246847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246811246842%_)))
                                                          (_%hd246812246845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246811246842%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246813246847%_))
                                                          (let ((_%e246814246850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246813246847%_))))
                    (let ((_%tl246816246855%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246814246850%_)))
                          (_%hd246815246853%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246814246850%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246816246855%_))
                          (_%__kont251182251183%_
                           _%hd246815246853%_
                           _%hd246812246845%_
                           _%hd246720247216%_)
                          (let () (declare (not safe)) (_%g246711246821%_)))))
                  (let () (declare (not safe)) (_%g246711246821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246758247044%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246721247218%_))
                                                  (let ((_%e246796246939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246721247218%_))))
                                                    (let ((_%tl246798246944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246796246939%_)))
                                                          (_%hd246797246942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246796246939%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246798246944%_))
                                                          (let ((_%e246799246947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246798246944%_))))
                    (let ((_%tl246801246952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246799246947%_)))
                          (_%hd246800246950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246799246947%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246801246952%_))
                          (_%__match251381251382%_
                           _%e246716247205%_
                           _%hd246717247208%_
                           _%tl246718247210%_
                           _%e246719247213%_
                           _%hd246720247216%_
                           _%tl246721247218%_
                           _%e246722247221%_
                           _%hd246723247224%_
                           _%tl246724247226%_
                           _%e246747247015%_
                           _%hd246748247018%_
                           _%tl246749247020%_
                           _%e246750247023%_
                           _%hd246751247026%_
                           _%tl246752247028%_
                           _%e246753247031%_
                           _%hd246754247034%_
                           _%tl246755247036%_
                           _%e246756247039%_
                           _%hd246757247042%_
                           _%tl246758247044%_
                           _%e246796246939%_
                           _%hd246797246942%_
                           _%tl246798246944%_
                           _%e246799246947%_
                           _%hd246800246950%_
                           _%tl246801246952%_)
                          (let () (declare (not safe)) (_%g246711246821%_)))))
                  (let () (declare (not safe)) (_%g246711246821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246721247218%_))
                                                  (let ((_%e246811246842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246721247218%_))))
                                                    (let ((_%tl246813246847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246811246842%_)))
                                                          (_%hd246812246845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246811246842%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246813246847%_))
                                                          (let ((_%e246814246850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246813246847%_))))
                    (let ((_%tl246816246855%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246814246850%_)))
                          (_%hd246815246853%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246814246850%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246816246855%_))
                          (_%__kont251182251183%_
                           _%hd246815246853%_
                           _%hd246812246845%_
                           _%hd246720247216%_)
                          (let () (declare (not safe)) (_%g246711246821%_)))))
                  (let () (declare (not safe)) (_%g246711246821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl246758247044%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246721247218%_))
                                          (let ((_%e246796246939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246721247218%_))))
                                            (let ((_%tl246798246944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246796246939%_)))
                                                  (_%hd246797246942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246796246939%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246798246944%_))
                                                  (let ((_%e246799246947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246798246944%_))))
                                                    (let ((_%tl246801246952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246799246947%_)))
                                                          (_%hd246800246950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246799246947%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246801246952%_))
                                                          (_%__match251381251382%_
                                                           _%e246716247205%_
                                                           _%hd246717247208%_
                                                           _%tl246718247210%_
                                                           _%e246719247213%_
                                                           _%hd246720247216%_
                                                           _%tl246721247218%_
                                                           _%e246722247221%_
                                                           _%hd246723247224%_
                                                           _%tl246724247226%_
                                                           _%e246747247015%_
                                                           _%hd246748247018%_
                                                           _%tl246749247020%_
                                                           _%e246750247023%_
                                                           _%hd246751247026%_
                                                           _%tl246752247028%_
                                                           _%e246753247031%_
                                                           _%hd246754247034%_
                                                           _%tl246755247036%_
                                                           _%e246756247039%_
                                                           _%hd246757247042%_
                                                           _%tl246758247044%_
                                                           _%e246796246939%_
                                                           _%hd246797246942%_
                                                           _%tl246798246944%_
                                                           _%e246799246947%_
                                                           _%hd246800246950%_
                                                           _%tl246801246952%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g246711246821%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246711246821%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246721247218%_))
                                          (let ((_%e246811246842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246721247218%_))))
                                            (let ((_%tl246813246847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246811246842%_)))
                                                  (_%hd246812246845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246811246842%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246813246847%_))
                                                  (let ((_%e246814246850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246813246847%_))))
                                                    (let ((_%tl246816246855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246814246850%_)))
                                                          (_%hd246815246853%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246814246850%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246816246855%_))
                                                          (_%__kont251182251183%_
                                                           _%hd246815246853%_
                                                           _%hd246812246845%_
                                                           _%hd246720247216%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g246711246821%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246711246821%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl246758247044%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246721247218%_))
                                      (let ((_%e246796246939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246721247218%_))))
                                        (let ((_%tl246798246944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246796246939%_)))
                                              (_%hd246797246942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246796246939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246798246944%_))
                                              (let ((_%e246799246947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246798246944%_))))
                                                (let ((_%tl246801246952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246799246947%_)))
                                                      (_%hd246800246950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246799246947%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246801246952%_))
                                                      (_%__match251381251382%_
                                                       _%e246716247205%_
                                                       _%hd246717247208%_
                                                       _%tl246718247210%_
                                                       _%e246719247213%_
                                                       _%hd246720247216%_
                                                       _%tl246721247218%_
                                                       _%e246722247221%_
                                                       _%hd246723247224%_
                                                       _%tl246724247226%_
                                                       _%e246747247015%_
                                                       _%hd246748247018%_
                                                       _%tl246749247020%_
                                                       _%e246750247023%_
                                                       _%hd246751247026%_
                                                       _%tl246752247028%_
                                                       _%e246753247031%_
                                                       _%hd246754247034%_
                                                       _%tl246755247036%_
                                                       _%e246756247039%_
                                                       _%hd246757247042%_
                                                       _%tl246758247044%_
                                                       _%e246796246939%_
                                                       _%hd246797246942%_
                                                       _%tl246798246944%_
                                                       _%e246799246947%_
                                                       _%hd246800246950%_
                                                       _%tl246801246952%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246711246821%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246711246821%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246711246821%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246721247218%_))
                                      (let ((_%e246811246842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246721247218%_))))
                                        (let ((_%tl246813246847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246811246842%_)))
                                              (_%hd246812246845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246811246842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246813246847%_))
                                              (let ((_%e246814246850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246813246847%_))))
                                                (let ((_%tl246816246855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246814246850%_)))
                                                      (_%hd246815246853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246814246850%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246816246855%_))
                                                      (_%__kont251182251183%_
                                                       _%hd246815246853%_
                                                       _%hd246812246845%_
                                                       _%hd246720247216%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246711246821%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246711246821%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246711246821%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246758247044%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246721247218%_))
                                  (let ((_%e246796246939%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246721247218%_))))
                                    (let ((_%tl246798246944%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246796246939%_)))
                                          (_%hd246797246942%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246796246939%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246798246944%_))
                                          (let ((_%e246799246947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246798246944%_))))
                                            (let ((_%tl246801246952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246799246947%_)))
                                                  (_%hd246800246950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246799246947%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246801246952%_))
                                                  (_%__match251381251382%_
                                                   _%e246716247205%_
                                                   _%hd246717247208%_
                                                   _%tl246718247210%_
                                                   _%e246719247213%_
                                                   _%hd246720247216%_
                                                   _%tl246721247218%_
                                                   _%e246722247221%_
                                                   _%hd246723247224%_
                                                   _%tl246724247226%_
                                                   _%e246747247015%_
                                                   _%hd246748247018%_
                                                   _%tl246749247020%_
                                                   _%e246750247023%_
                                                   _%hd246751247026%_
                                                   _%tl246752247028%_
                                                   _%e246753247031%_
                                                   _%hd246754247034%_
                                                   _%tl246755247036%_
                                                   _%e246756247039%_
                                                   _%hd246757247042%_
                                                   _%tl246758247044%_
                                                   _%e246796246939%_
                                                   _%hd246797246942%_
                                                   _%tl246798246944%_
                                                   _%e246799246947%_
                                                   _%hd246800246950%_
                                                   _%tl246801246952%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246711246821%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246711246821%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246721247218%_))
                                  (let ((_%e246811246842%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246721247218%_))))
                                    (let ((_%tl246813246847%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246811246842%_)))
                                          (_%hd246812246845%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246811246842%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246813246847%_))
                                          (let ((_%e246814246850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246813246847%_))))
                                            (let ((_%tl246816246855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246814246850%_)))
                                                  (_%hd246815246853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246814246850%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246816246855%_))
                                                  (_%__kont251182251183%_
                                                   _%hd246815246853%_
                                                   _%hd246812246845%_
                                                   _%hd246720247216%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246711246821%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246711246821%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl246758247044%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246721247218%_))
                          (let ((_%e246796246939%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246721247218%_))))
                            (let ((_%tl246798246944%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246796246939%_)))
                                  (_%hd246797246942%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246796246939%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246798246944%_))
                                  (let ((_%e246799246947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246798246944%_))))
                                    (let ((_%tl246801246952%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246799246947%_)))
                                          (_%hd246800246950%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246799246947%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246801246952%_))
                                          (_%__match251381251382%_
                                           _%e246716247205%_
                                           _%hd246717247208%_
                                           _%tl246718247210%_
                                           _%e246719247213%_
                                           _%hd246720247216%_
                                           _%tl246721247218%_
                                           _%e246722247221%_
                                           _%hd246723247224%_
                                           _%tl246724247226%_
                                           _%e246747247015%_
                                           _%hd246748247018%_
                                           _%tl246749247020%_
                                           _%e246750247023%_
                                           _%hd246751247026%_
                                           _%tl246752247028%_
                                           _%e246753247031%_
                                           _%hd246754247034%_
                                           _%tl246755247036%_
                                           _%e246756247039%_
                                           _%hd246757247042%_
                                           _%tl246758247044%_
                                           _%e246796246939%_
                                           _%hd246797246942%_
                                           _%tl246798246944%_
                                           _%e246799246947%_
                                           _%hd246800246950%_
                                           _%tl246801246952%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g246711246821%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246711246821%_)))))
                          (let () (declare (not safe)) (_%g246711246821%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246721247218%_))
                          (let ((_%e246811246842%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246721247218%_))))
                            (let ((_%tl246813246847%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246811246842%_)))
                                  (_%hd246812246845%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246811246842%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246813246847%_))
                                  (let ((_%e246814246850%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246813246847%_))))
                                    (let ((_%tl246816246855%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246814246850%_)))
                                          (_%hd246815246853%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246814246850%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246816246855%_))
                                          (_%__kont251182251183%_
                                           _%hd246815246853%_
                                           _%hd246812246845%_
                                           _%hd246720247216%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g246711246821%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246711246821%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g246711246821%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246721247218%_))
                                                      (let ((_%e246811246842%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246721247218%_))))
                (let ((_%tl246813246847%_
                       (let () (declare (not safe)) (##cdr _%e246811246842%_)))
                      (_%hd246812246845%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246811246842%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246813246847%_))
                      (let ((_%e246814246850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246813246847%_))))
                        (let ((_%tl246816246855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246814246850%_)))
                              (_%hd246815246853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246814246850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246816246855%_))
                              (_%__kont251182251183%_
                               _%hd246815246853%_
                               _%hd246812246845%_
                               _%hd246720247216%_)
                              (let ()
                                (declare (not safe))
                                (_%g246711246821%_)))))
                      (let () (declare (not safe)) (_%g246711246821%_)))))
              (let () (declare (not safe)) (_%g246711246821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246721247218%_))
                                                  (let ((_%e246811246842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246721247218%_))))
                                                    (let ((_%tl246813246847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246811246842%_)))
                                                          (_%hd246812246845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246811246842%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246813246847%_))
                                                          (let ((_%e246814246850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246813246847%_))))
                    (let ((_%tl246816246855%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246814246850%_)))
                          (_%hd246815246853%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246814246850%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246816246855%_))
                          (_%__kont251182251183%_
                           _%hd246815246853%_
                           _%hd246812246845%_
                           _%hd246720247216%_)
                          (let () (declare (not safe)) (_%g246711246821%_)))))
                  (let () (declare (not safe)) (_%g246711246821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246721247218%_))
                                          (let ((_%e246811246842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246721247218%_))))
                                            (let ((_%tl246813246847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246811246842%_)))
                                                  (_%hd246812246845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246811246842%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246813246847%_))
                                                  (let ((_%e246814246850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246813246847%_))))
                                                    (let ((_%tl246816246855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246814246850%_)))
                                                          (_%hd246815246853%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246814246850%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246816246855%_))
                                                          (_%__kont251182251183%_
                                                           _%hd246815246853%_
                                                           _%hd246812246845%_
                                                           _%hd246720247216%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g246711246821%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246711246821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246721247218%_))
                                      (let ((_%e246811246842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246721247218%_))))
                                        (let ((_%tl246813246847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246811246842%_)))
                                              (_%hd246812246845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246811246842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246813246847%_))
                                              (let ((_%e246814246850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246813246847%_))))
                                                (let ((_%tl246816246855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246814246850%_)))
                                                      (_%hd246815246853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246814246850%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246816246855%_))
                                                      (_%__kont251182251183%_
                                                       _%hd246815246853%_
                                                       _%hd246812246845%_
                                                       _%hd246720247216%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246711246821%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246711246821%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246711246821%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246721247218%_))
                                  (let ((_%e246811246842%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246721247218%_))))
                                    (let ((_%tl246813246847%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246811246842%_)))
                                          (_%hd246812246845%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246811246842%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246813246847%_))
                                          (let ((_%e246814246850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246813246847%_))))
                                            (let ((_%tl246816246855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246814246850%_)))
                                                  (_%hd246815246853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246814246850%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246816246855%_))
                                                  (_%__kont251182251183%_
                                                   _%hd246815246853%_
                                                   _%hd246812246845%_
                                                   _%hd246720247216%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246711246821%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246711246821%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246711246821%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246721247218%_))
                          (let ((_%e246811246842%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246721247218%_))))
                            (let ((_%tl246813246847%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246811246842%_)))
                                  (_%hd246812246845%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246811246842%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246813246847%_))
                                  (let ((_%e246814246850%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246813246847%_))))
                                    (let ((_%tl246816246855%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246814246850%_)))
                                          (_%hd246815246853%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246814246850%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246816246855%_))
                                          (_%__kont251182251183%_
                                           _%hd246815246853%_
                                           _%hd246812246845%_
                                           _%hd246720247216%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g246711246821%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246711246821%_)))))
                          (let () (declare (not safe)) (_%g246711246821%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl246721247218%_))
                  (let ((_%e246811246842%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246721247218%_))))
                    (let ((_%tl246813246847%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246811246842%_)))
                          (_%hd246812246845%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246811246842%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246813246847%_))
                          (let ((_%e246814246850%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246813246847%_))))
                            (let ((_%tl246816246855%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246814246850%_)))
                                  (_%hd246815246853%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246814246850%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl246816246855%_))
                                  (_%__kont251182251183%_
                                   _%hd246815246853%_
                                   _%hd246812246845%_
                                   _%hd246720247216%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g246711246821%_)))))
                          (let () (declare (not safe)) (_%g246711246821%_)))))
                  (let () (declare (not safe)) (_%g246711246821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246721247218%_))
                                                      (let ((_%e246811246842%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246721247218%_))))
                (let ((_%tl246813246847%_
                       (let () (declare (not safe)) (##cdr _%e246811246842%_)))
                      (_%hd246812246845%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246811246842%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246813246847%_))
                      (let ((_%e246814246850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246813246847%_))))
                        (let ((_%tl246816246855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246814246850%_)))
                              (_%hd246815246853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246814246850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246816246855%_))
                              (_%__kont251182251183%_
                               _%hd246815246853%_
                               _%hd246812246845%_
                               _%hd246720247216%_)
                              (let ()
                                (declare (not safe))
                                (_%g246711246821%_)))))
                      (let () (declare (not safe)) (_%g246711246821%_)))))
              (let () (declare (not safe)) (_%g246711246821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246721247218%_))
                                              (let ((_%e246811246842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246721247218%_))))
                                                (let ((_%tl246813246847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246811246842%_)))
                                                      (_%hd246812246845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246811246842%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246813246847%_))
                                                      (let ((_%e246814246850%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246813246847%_))))
                (let ((_%tl246816246855%_
                       (let () (declare (not safe)) (##cdr _%e246814246850%_)))
                      (_%hd246815246853%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246814246850%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl246816246855%_))
                      (_%__kont251182251183%_
                       _%hd246815246853%_
                       _%hd246812246845%_
                       _%hd246720247216%_)
                      (let () (declare (not safe)) (_%g246711246821%_)))))
              (let () (declare (not safe)) (_%g246711246821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g246711246821%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246721247218%_))
                                      (let ((_%e246811246842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246721247218%_))))
                                        (let ((_%tl246813246847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246811246842%_)))
                                              (_%hd246812246845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246811246842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246813246847%_))
                                              (let ((_%e246814246850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246813246847%_))))
                                                (let ((_%tl246816246855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246814246850%_)))
                                                      (_%hd246815246853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246814246850%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246816246855%_))
                                                      (_%__kont251182251183%_
                                                       _%hd246815246853%_
                                                       _%hd246812246845%_
                                                       _%hd246720247216%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246711246821%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246711246821%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246711246821%_))))))
                          (let () (declare (not safe)) (_%g246711246821%_)))))
                  (let () (declare (not safe)) (_%g246711246821%_))))))))))
