(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770505733)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp251427 (list gxc#::basic-xform::t))
            (__tmp251426 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp251427
         '()
         __tmp251426
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args250704%_
        (apply make-instance gxc#::optimize-call::t _%$args250704%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp251428
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
        (__make-atomic-promise __tmp251428)))
    (define gxc#apply-optimize-call
      (lambda (_%stx250696%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self250699%_
                (let ((__obj251418
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj251418))
               (__tmp251429
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self250699%_ _%stx250696%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp251429
           gxc#current-compile-method
           _%self250699%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp251431 (list gxc#::void::t))
            (__tmp251430 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp251431
         '()
         __tmp251430
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args250693%_
        (apply make-instance gxc#::check-return-type::t _%$args250693%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp251432
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
        (__make-atomic-promise __tmp251432)))
    (define gxc#apply-check-return-type
      (lambda (_%stx250685%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self250688%_
                (let ((__obj251420
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj251420))
               (__tmp251433
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self250688%_ _%stx250685%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp251433
           gxc#current-compile-method
           _%self250688%_))))
    (define gxc#optimize-call%
      (lambda (_%self250292%_ _%stx250293%_)
        (let* ((_%__stx250773250774%_ _%stx250293%_)
               (_%g250296250342%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx250773250774%_)))))
          (let ((_%__kont250775250776%_
                 (lambda (_%g250298250481%_ _%g250299250482%_)
                   (let* ((_%rator-id250502%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g250299250482%_)))
                          (_%rator-type250504%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id250502%_))))
                     (if (or (not _%rator-type250504%_)
                             (eq? (##structure-ref
                                   _%rator-type250504%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self250292%_ _%stx250293%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type250504%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp251434
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type250504%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id250502%_
                                  '" => "
                                  _%rator-type250504%_
                                  '" "
                                  __tmp251434))
                               (let* ((_%optimized250519%_
                                       (let ((__method251421
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type250504%_
                                                 'optimize-call))))
                                         (if __method251421
                                             (let ((__tmp251435
                                                    (let ((__tmp251436
                                                           (lambda (_%g250511250514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g250512250516%_)
                     (cons _%g250511250514%_ _%g250512250516%_))))
              (declare (not safe))
              (foldr__0 __tmp251436 '() _%g250298250481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method251421
                                                _%rator-type250504%_
                                                _%self250292%_
                                                _%stx250293%_
                                                __tmp251435))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type250504%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx250721250722%_
                                       _%optimized250519%_)
                                      (_%g250522250551%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx250721250722%_)))))
                                 (let ((_%__kont250723250724%_
                                        (lambda (_%g250524250617%_
                                                 _%g250525250618%_)
                                          (let* ((_%optimized-rator-id250645%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g250525250618%_)))
                                                 (_%rator-type250650%_
                                                  (let ((_%$e250647%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id250645%_))))
                                                    (if _%$e250647%_
                                                        _%$e250647%_
                                                        _%rator-type250504%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type250650%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id250645%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type250650%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type250650%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized250519%_
                                                (let ((__tmp251437
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g250525250618%_ '()))
                           (let ((__tmp251438
                                  (lambda (_%g250658250661%_ _%g250659250663%_)
                                    (cons _%g250658250661%_
                                          _%g250659250663%_))))
                             (declare (not safe))
                             (foldr__0 __tmp251438 '() _%g250524250617%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251437
                                                   _%stx250293%_))))))
                                       (_%__kont250727250728%_
                                        (lambda () _%optimized250519%_)))
                                   (let ((_%__match250770250771%_
                                          (lambda (_%e250526250563%_
                                                   _%hd250527250566%_
                                                   _%tl250528250568%_
                                                   _%e250529250571%_
                                                   _%hd250530250574%_
                                                   _%tl250531250576%_
                                                   _%e250532250579%_
                                                   _%hd250533250582%_
                                                   _%tl250534250584%_
                                                   _%e250535250587%_
                                                   _%hd250536250590%_
                                                   _%tl250537250592%_
                                                   _%__splice250725250726%_
                                                   _%target250538250595%_
                                                   _%tl250540250597%_)
                                            (letrec ((_%loop250541250600%_
                                                      (lambda (_%hd250539250603%_
                                                               _%arg250545250605%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd250539250603%_))
                                                            (let ((_%e250542250607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd250539250603%_))))
                      (let ((_%lp-tl250544250612%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250542250607%_)))
                            (_%lp-hd250543250610%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250542250607%_))))
                        (_%loop250541250600%_
                         _%lp-tl250544250612%_
                         (cons _%lp-hd250543250610%_ _%arg250545250605%_))))
                    (let ((_%arg250546250615%_ (reverse _%arg250545250605%_)))
                      (_%__kont250723250724%_
                       _%arg250546250615%_
                       _%hd250536250590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop250541250600%_
                                               _%target250538250595%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx250721250722%_))
                                         (let ((_%e250526250563%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx250721250722%_))))
                                           (let ((_%tl250528250568%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e250526250563%_)))
                                                 (_%hd250527250566%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e250526250563%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd250527250566%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd250527250566%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl250528250568%_))
                                                         (let ((_%e250529250571%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl250528250568%_))))
                   (let ((_%tl250531250576%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e250529250571%_)))
                         (_%hd250530250574%_
                          (let ()
                            (declare (not safe))
                            (##car _%e250529250571%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd250530250574%_))
                         (let ((_%e250532250579%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd250530250574%_))))
                           (let ((_%tl250534250584%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e250532250579%_)))
                                 (_%hd250533250582%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e250532250579%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd250533250582%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd250533250582%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl250534250584%_))
                                         (let ((_%e250535250587%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl250534250584%_))))
                                           (let ((_%tl250537250592%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e250535250587%_)))
                                                 (_%hd250536250590%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e250535250587%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl250537250592%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl250531250576%_))
                                                     (let ((_%__splice250725250726%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl250531250576%_
                                                               '0))))
                                                       (let ((_%tl250540250597%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice250725250726%_ '1)))
                     (_%target250538250595%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice250725250726%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl250540250597%_))
                     (_%__match250770250771%_
                      _%e250526250563%_
                      _%hd250527250566%_
                      _%tl250528250568%_
                      _%e250529250571%_
                      _%hd250530250574%_
                      _%tl250531250576%_
                      _%e250532250579%_
                      _%hd250533250582%_
                      _%tl250534250584%_
                      _%e250535250587%_
                      _%hd250536250590%_
                      _%tl250537250592%_
                      _%__splice250725250726%_
                      _%target250538250595%_
                      _%tl250540250597%_)
                     (_%__kont250727250728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont250727250728%_))
                                                 (_%__kont250727250728%_))))
                                         (_%__kont250727250728%_))
                                     (_%__kont250727250728%_))
                                 (_%__kont250727250728%_))))
                         (_%__kont250727250728%_))))
                 (_%__kont250727250728%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont250727250728%_))
                                                 (_%__kont250727250728%_))))
                                         (_%__kont250727250728%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type250504%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type250504%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp251439
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g250299250482%_
                                                                '()))
                                                    (map (lambda (_%g250669250671%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self250292%_
                                                              _%g250669250671%_)))
                                                         (let ((__tmp251440
                                                                (lambda (_%g250673250676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g250674250678%_)
                          (cons _%g250673250676%_ _%g250674250678%_))))
                   (declare (not safe))
                   (foldr__0 __tmp251440 '() _%g250298250481%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp251439
                                    _%stx250293%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx250293%_
                                    _%rator-type250504%_))))))))
                (_%__kont250779250780%_
                 (lambda (_%g250321250385%_ _%g250322250386%_)
                   (let ((_%rator-type250403%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g250322250386%_))))
                     (if (and _%rator-type250403%_
                              (eq? (##structure-ref
                                    _%rator-type250403%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type250403%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type250403%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type250403%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp251441
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self250292%_
                                               _%g250322250386%_))
                                            (map (lambda (_%g250405250407%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self250292%_
                                                      _%g250405250407%_)))
                                                 (let ((__tmp251442
                                                        (lambda (_%g250409250412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g250410250414%_)
                  (cons _%g250409250412%_ _%g250410250414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp251442
                                                    '()
                                                    _%g250321250385%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp251441 _%stx250293%_))
                         (if (or (not _%rator-type250403%_)
                                 (let ((__tmp251443
                                        (##structure-ref
                                         _%rator-type250403%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp251443 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self250292%_ _%stx250293%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx250293%_
                                _%rator-type250403%_))))))))
            (let* ((_%__match250840250841%_
                    (lambda (_%e250323250347%_
                             _%hd250324250350%_
                             _%tl250325250352%_
                             _%e250326250355%_
                             _%hd250327250358%_
                             _%tl250328250360%_
                             _%__splice250781250782%_
                             _%target250329250363%_
                             _%tl250331250365%_)
                      (letrec ((_%loop250332250368%_
                                (lambda (_%hd250330250371%_
                                         _%rand250336250373%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd250330250371%_))
                                      (let ((_%e250333250375%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd250330250371%_))))
                                        (let ((_%lp-tl250335250380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250333250375%_)))
                                              (_%lp-hd250334250378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250333250375%_))))
                                          (_%loop250332250368%_
                                           _%lp-tl250335250380%_
                                           (cons _%lp-hd250334250378%_
                                                 _%rand250336250373%_))))
                                      (let ((_%rand250337250383%_
                                             (reverse _%rand250336250373%_)))
                                        (_%__kont250779250780%_
                                         _%rand250337250383%_
                                         _%hd250327250358%_))))))
                        (_%loop250332250368%_ _%target250329250363%_ '()))))
                   (_%__match250820250821%_
                    (lambda (_%e250300250427%_
                             _%hd250301250430%_
                             _%tl250302250432%_
                             _%e250303250435%_
                             _%hd250304250438%_
                             _%tl250305250440%_
                             _%e250306250443%_
                             _%hd250307250446%_
                             _%tl250308250448%_
                             _%e250309250451%_
                             _%hd250310250454%_
                             _%tl250311250456%_
                             _%__splice250777250778%_
                             _%target250312250459%_
                             _%tl250314250461%_)
                      (letrec ((_%loop250315250464%_
                                (lambda (_%hd250313250467%_
                                         _%rand250319250469%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd250313250467%_))
                                      (let ((_%e250316250471%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd250313250467%_))))
                                        (let ((_%lp-tl250318250476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250316250471%_)))
                                              (_%lp-hd250317250474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250316250471%_))))
                                          (_%loop250315250464%_
                                           _%lp-tl250318250476%_
                                           (cons _%lp-hd250317250474%_
                                                 _%rand250319250469%_))))
                                      (let ((_%rand250320250479%_
                                             (reverse _%rand250319250469%_)))
                                        (_%__kont250775250776%_
                                         _%rand250320250479%_
                                         _%hd250310250454%_))))))
                        (_%loop250315250464%_ _%target250312250459%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx250773250774%_))
                  (let ((_%e250300250427%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx250773250774%_))))
                    (let ((_%tl250302250432%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250300250427%_)))
                          (_%hd250301250430%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250300250427%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250302250432%_))
                          (let ((_%e250303250435%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250302250432%_))))
                            (let ((_%tl250305250440%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250303250435%_)))
                                  (_%hd250304250438%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250303250435%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250304250438%_))
                                  (let ((_%e250306250443%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250304250438%_))))
                                    (let ((_%tl250308250448%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250306250443%_)))
                                          (_%hd250307250446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250306250443%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250307250446%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd250307250446%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250308250448%_))
                                                  (let ((_%e250309250451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250308250448%_))))
                                                    (let ((_%tl250311250456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250309250451%_)))
                                                          (_%hd250310250454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250309250451%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250311250456%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl250305250440%_))
                      (let ((_%__splice250777250778%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl250305250440%_
                                '0))))
                        (let ((_%tl250314250461%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250777250778%_ '1)))
                              (_%target250312250459%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250777250778%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250314250461%_))
                              (_%__match250820250821%_
                               _%e250300250427%_
                               _%hd250301250430%_
                               _%tl250302250432%_
                               _%e250303250435%_
                               _%hd250304250438%_
                               _%tl250305250440%_
                               _%e250306250443%_
                               _%hd250307250446%_
                               _%tl250308250448%_
                               _%e250309250451%_
                               _%hd250310250454%_
                               _%tl250311250456%_
                               _%__splice250777250778%_
                               _%target250312250459%_
                               _%tl250314250461%_)
                              (let ()
                                (declare (not safe))
                                (_%g250296250342%_)))))
                      (let () (declare (not safe)) (_%g250296250342%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl250305250440%_))
                      (let ((_%__splice250781250782%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl250305250440%_
                                '0))))
                        (let ((_%tl250331250365%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250781250782%_ '1)))
                              (_%target250329250363%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250781250782%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250331250365%_))
                              (_%__match250840250841%_
                               _%e250300250427%_
                               _%hd250301250430%_
                               _%tl250302250432%_
                               _%e250303250435%_
                               _%hd250304250438%_
                               _%tl250305250440%_
                               _%__splice250781250782%_
                               _%target250329250363%_
                               _%tl250331250365%_)
                              (let ()
                                (declare (not safe))
                                (_%g250296250342%_)))))
                      (let () (declare (not safe)) (_%g250296250342%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl250305250440%_))
                                                      (let ((_%__splice250781250782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl250305250440%_
                        '0))))
                (let ((_%tl250331250365%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice250781250782%_ '1)))
                      (_%target250329250363%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice250781250782%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250331250365%_))
                      (_%__match250840250841%_
                       _%e250300250427%_
                       _%hd250301250430%_
                       _%tl250302250432%_
                       _%e250303250435%_
                       _%hd250304250438%_
                       _%tl250305250440%_
                       _%__splice250781250782%_
                       _%target250329250363%_
                       _%tl250331250365%_)
                      (let () (declare (not safe)) (_%g250296250342%_)))))
              (let () (declare (not safe)) (_%g250296250342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl250305250440%_))
                                                  (let ((_%__splice250781250782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl250305250440%_
                                                            '0))))
                                                    (let ((_%tl250331250365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice250781250782%_
                                                              '1)))
                                                          (_%target250329250363%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice250781250782%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250331250365%_))
                                                          (_%__match250840250841%_
                                                           _%e250300250427%_
                                                           _%hd250301250430%_
                                                           _%tl250302250432%_
                                                           _%e250303250435%_
                                                           _%hd250304250438%_
                                                           _%tl250305250440%_
                                                           _%__splice250781250782%_
                                                           _%target250329250363%_
                                                           _%tl250331250365%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250296250342%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250296250342%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl250305250440%_))
                                              (let ((_%__splice250781250782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl250305250440%_
                                                        '0))))
                                                (let ((_%tl250331250365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice250781250782%_
                                                          '1)))
                                                      (_%target250329250363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice250781250782%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250331250365%_))
                                                      (_%__match250840250841%_
                                                       _%e250300250427%_
                                                       _%hd250301250430%_
                                                       _%tl250302250432%_
                                                       _%e250303250435%_
                                                       _%hd250304250438%_
                                                       _%tl250305250440%_
                                                       _%__splice250781250782%_
                                                       _%target250329250363%_
                                                       _%tl250331250365%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250296250342%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250296250342%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl250305250440%_))
                                      (let ((_%__splice250781250782%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl250305250440%_
                                                '0))))
                                        (let ((_%tl250331250365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250781250782%_
                                                  '1)))
                                              (_%target250329250363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250781250782%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250331250365%_))
                                              (_%__match250840250841%_
                                               _%e250300250427%_
                                               _%hd250301250430%_
                                               _%tl250302250432%_
                                               _%e250303250435%_
                                               _%hd250304250438%_
                                               _%tl250305250440%_
                                               _%__splice250781250782%_
                                               _%target250329250363%_
                                               _%tl250331250365%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g250296250342%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250296250342%_))))))
                          (let () (declare (not safe)) (_%g250296250342%_)))))
                  (let () (declare (not safe)) (_%g250296250342%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self250254%_ _%ctx250255%_ _%stx250256%_ _%args250257%_)
        (let ((_%self250260%_ _%self250254%_))
          (if (let ((__method251422
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self250260%_ 'check-arguments))))
                (if __method251422
                    (let ()
                      (declare (not safe))
                      (__method251422
                       _%self250260%_
                       _%ctx250255%_
                       _%stx250256%_
                       _%args250257%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self250260%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature250270%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self250260%_ '2 '#f '#f)))
                     (_%signature250272%_ _%signature250270%_)
                     (_%$e250282%_
                      (if _%signature250272%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature250272%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e250282%_
                    ((lambda (_%unchecked250285%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked250285%_))
                           (let ((__tmp251444
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked250285%_
                                                          '()))
                                              (map (lambda (_%g250286250288%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx250255%_
                                                        _%g250286250288%_)))
                                                   _%args250257%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp251444
                              _%stx250256%_
                              _%ctx250255%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx250255%_ _%stx250256%_))))
                     _%$e250282%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx250255%_ _%stx250256%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx250255%_ _%stx250256%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass250706 __method-table250707)
        (let ((__check-arguments250708
               (let ((__tmp251445
                      (lambda ()
                        (let ((__method250709
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table250707
                                  'check-arguments
                                  '#f))))
                          (if __method250709
                              __method250709
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp251445))))
          (lambda (_%self250254%_ _%ctx250255%_ _%stx250256%_ _%args250257%_)
            (let ((_%self250260%_ _%self250254%_))
              (if ((force __check-arguments250708)
                   _%self250260%_
                   _%ctx250255%_
                   _%stx250256%_
                   _%args250257%_)
                  (let* ((_%signature250270%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self250260%_
                             '2
                             '#f
                             '#f)))
                         (_%signature250272%_ _%signature250270%_)
                         (_%$e250282%_
                          (if _%signature250272%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature250272%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e250282%_
                        ((lambda (_%unchecked250285%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked250285%_))
                               (let ((__tmp251446
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked250285%_
                                                              '()))
                                                  (map (lambda (_%g250286250288%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx250255%_
                                                            _%g250286250288%_)))
                                                       _%args250257%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp251446
                                  _%stx250256%_
                                  _%ctx250255%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx250255%_
                                  _%stx250256%_))))
                         _%$e250282%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx250255%_ _%stx250256%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx250255%_ _%stx250256%_))))))))
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
      (lambda (_%self250007%_ _%ctx250008%_ _%stx250009%_ _%args250010%_)
        (let* ((_%self250013%_ _%self250007%_)
               (_%signature250022250024%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250013%_ '2 '#f '#f))))
          (if _%signature250022250024%_
              (let* ((_%signature250026%_ _%signature250022250024%_)
                     (_%argument-types250027250029%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature250026%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types250027250029%_
                    (let* ((_%argument-types250031%_
                            _%argument-types250027250029%_)
                           (_%argument-types250036%_
                            (let ((__tmp251447
                                   (lambda (_%t250034%_)
                                     (if _%t250034%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx250009%_
                                            _%t250034%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp251447
                               _%argument-types250031%_))))
                      (let _%loop250038%_ ((_%rest-args250040%_ _%args250010%_)
                                           (_%rest-types250041%_
                                            _%argument-types250036%_)
                                           (_%result250042%_ '#t))
                        (let* ((_%rest-args250043250051%_ _%rest-args250040%_)
                               (_%else250045250059%_
                                (lambda () _%result250042%_))
                               (_%K250047250120%_
                                (lambda (_%rest-args250062%_ _%arg250063%_)
                                  (let* ((_%rest-types250064250075%_
                                          _%rest-types250041%_)
                                         (_%E250068250079%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types250064250075%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K250071250108%_
                                           (lambda (_%rest-types250105%_
                                                    _%type250106%_)
                                             (_%loop250038%_
                                              _%rest-args250062%_
                                              _%rest-types250105%_
                                              (if (gxc#check-expression-type!
                                                   _%stx250009%_
                                                   _%arg250063%_
                                                   _%type250106%_)
                                                  _%result250042%_
                                                  '#f))))
                                          (_%K250070250099%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx250009%_
                                                _%argument-types250036%_))))
                                          (_%K250069250089%_
                                           (lambda (_%tail-type250083%_)
                                             (if (let ((__tmp251448
                                                        (lambda (_%g250084250086%_)
                                                          (gxc#check-expression-type!
                                                           _%stx250009%_
                                                           _%g250084250086%_
                                                           _%tail-type250083%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp251448
                                                    _%rest-args250062%_))
                                                 _%result250042%_
                                                 '#f))))
                                      (let ((_%try-match250066250102%_
                                             (lambda ()
                                               (if (null? _%rest-types250064250075%_)
                                                   (_%K250070250099%_)
                                                   (let ((_%tail-type250092%_
                                                          _%rest-types250064250075%_))
                                                     (_%K250069250089%_
                                                      _%tail-type250092%_))))))
                                        (if (pair? _%rest-types250064250075%_)
                                            (let ((_%tl250073250113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types250064250075%_)))
                                                  (_%hd250072250111%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types250064250075%_))))
                                              (let ((_%type250116%_
                                                     _%hd250072250111%_)
                                                    (_%rest-types250118%_
                                                     _%tl250073250113%_))
                                                (_%K250071250108%_
                                                 _%rest-types250118%_
                                                 _%type250116%_)))
                                            (_%try-match250066250102%_))))))))
                          (if (pair? _%rest-args250043250051%_)
                              (let ((_%hd250048250123%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args250043250051%_)))
                                    (_%tl250049250125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args250043250051%_))))
                                (let* ((_%arg250128%_ _%hd250048250123%_)
                                       (_%rest-args250130%_
                                        _%tl250049250125%_))
                                  (_%K250047250120%_
                                   _%rest-args250130%_
                                   _%arg250128%_)))
                              (_%else250045250059%_)))))
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
      (lambda (_%self249818%_ _%ctx249819%_ _%stx249820%_ _%args249821%_)
        (let* ((_%self249824%_ _%self249818%_)
               (_%g249834249844%_
                (lambda (_%g249835249841%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249835249841%_))))
               (_%g249833249882%_
                (lambda (_%g249835249847%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249835249847%_))
                      (let ((_%e249837249849%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g249835249847%_))))
                        (let ((_%hd249838249852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249837249849%_)))
                              (_%tl249839249854%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249837249849%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249839249854%_))
                              ((lambda (_%g249836249857%_)
                                 (let* ((_%klass249869%_
                                         (let ((__tmp251449
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self249824%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx249820%_
                                            __tmp251449)))
                                        (_%object249871%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx249819%_
                                            _%g249836249857%_)))
                                        (_%instance?249876%_
                                         (let ((_%$e249873%_
                                                (gxc#expression-type?
                                                 _%object249871%_
                                                 _%klass249869%_)))
                                           (if _%$e249873%_
                                               _%$e249873%_
                                               (gxc#expression-type?
                                                _%g249836249857%_
                                                _%klass249869%_)))))
                                   (if _%instance?249876%_
                                       (let ((__tmp251450
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object249871%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g249836249857%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object249871%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251450
                                          _%stx249820%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx249819%_
                                          _%stx249820%_)))))
                               _%hd249838249852%_)
                              (_%g249834249844%_ _%g249835249847%_))))
                      (_%g249834249844%_ _%g249835249847%_)))))
          (_%g249833249882%_ _%args249821%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self249614%_ _%ctx249615%_ _%stx249616%_ _%args249617%_)
        (let* ((_%self249620%_ _%self249614%_)
               (_%g249630249640%_
                (lambda (_%g249631249637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249631249637%_))))
               (_%g249629249693%_
                (lambda (_%g249631249643%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249631249643%_))
                      (let ((_%e249633249645%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g249631249643%_))))
                        (let ((_%hd249634249648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249633249645%_)))
                              (_%tl249635249650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249633249645%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249635249650%_))
                              ((lambda (_%g249632249653%_)
                                 (let* ((_%klass249665%_
                                         (let ((__tmp251451
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self249620%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx249616%_
                                            __tmp251451)))
                                        (_%object249667%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx249615%_
                                            _%g249632249653%_)))
                                        (_%instance?249672%_
                                         (let ((_%$e249669%_
                                                (gxc#expression-type?
                                                 _%object249667%_
                                                 _%klass249665%_)))
                                           (if _%$e249669%_
                                               _%$e249669%_
                                               (gxc#expression-type?
                                                _%g249632249653%_
                                                _%klass249665%_))))
                                        (_%klass249675%_ _%klass249665%_))
                                   (if _%instance?249672%_
                                       (let ((__tmp251452
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object249667%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g249632249653%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object249667%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251452
                                          _%stx249616%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass249675%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp251453
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass249675%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object249667%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251453
                                              _%stx249616%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass249675%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp251454
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass249675%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object249667%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251454
                                                  _%stx249616%_))
                                               (let ((__tmp251455
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self249620%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object249667%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251455
                                                  _%stx249616%_)))))))
                               _%hd249634249648%_)
                              (_%g249630249640%_ _%g249631249643%_))))
                      (_%g249630249640%_ _%g249631249643%_)))))
          (_%g249629249693%_ _%args249617%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx249282%_)
        (let* ((_%__stx250850250851%_ _%stx249282%_)
               (_%g249287249328%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx250850250851%_)))))
          (let ((_%__kont250852250853%_ (lambda () '#t))
                (_%__kont250854250855%_ (lambda () '#t))
                (_%__kont250856250857%_
                 (lambda (_%g249301249394%_ _%g249302249395%_)
                   (let ((_%rator-type249416249418%_
                          (let ((__tmp251456
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g249302249395%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp251456))))
                     (if _%rator-type249416249418%_
                         (let* ((_%rator-type249420%_
                                 _%rator-type249416249418%_)
                                (_%rator-signature249421249423%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type249420%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type249420%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature249421249423%_
                               (let* ((_%rator-signature249425%_
                                       _%rator-signature249421249423%_)
                                      (_%rator-effect249426249428%_
                                       (if _%rator-signature249425%_
                                           (##direct-structure-ref
                                            _%rator-signature249425%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect249426249428%_
                                     (let ((_%rator-effect249430%_
                                            _%rator-effect249426249428%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect249430%_)
                                               (equal? '(alloc)
                                                       _%rator-effect249430%_))
                                           (let ((__tmp251457
                                                  (let ((__tmp251458
                                                         (lambda (_%g249435249438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g249436249440%_)
                   (cons _%g249435249438%_ _%g249436249440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp251458
                                                     '()
                                                     _%g249301249394%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp251457))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont250860250861%_ (lambda () '#f)))
            (let ((_%__match250939250940%_
                   (lambda (_%e249303249340%_
                            _%hd249304249343%_
                            _%tl249305249345%_
                            _%e249306249348%_
                            _%hd249307249351%_
                            _%tl249308249353%_
                            _%e249309249356%_
                            _%hd249310249359%_
                            _%tl249311249361%_
                            _%e249312249364%_
                            _%hd249313249367%_
                            _%tl249314249369%_
                            _%__splice250858250859%_
                            _%target249315249372%_
                            _%tl249317249374%_)
                     (letrec ((_%loop249318249377%_
                               (lambda (_%hd249316249380%_
                                        _%rand249322249382%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd249316249380%_))
                                     (let ((_%e249319249384%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd249316249380%_))))
                                       (let ((_%lp-tl249321249389%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e249319249384%_)))
                                             (_%lp-hd249320249387%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e249319249384%_))))
                                         (_%loop249318249377%_
                                          _%lp-tl249321249389%_
                                          (cons _%lp-hd249320249387%_
                                                _%rand249322249382%_))))
                                     (let ((_%rand249323249392%_
                                            (reverse _%rand249322249382%_)))
                                       (_%__kont250856250857%_
                                        _%rand249323249392%_
                                        _%hd249313249367%_))))))
                       (_%loop249318249377%_ _%target249315249372%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx250850250851%_))
                  (let ((_%e249289249471%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx250850250851%_))))
                    (let ((_%tl249291249476%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249289249471%_)))
                          (_%hd249290249474%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249289249471%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd249290249474%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd249290249474%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249291249476%_))
                                  (let ((_%e249292249479%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249291249476%_))))
                                    (let ((_%tl249294249484%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249292249479%_)))
                                          (_%hd249293249482%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249292249479%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249294249484%_))
                                          (_%__kont250852250853%_)
                                          (_%__kont250860250861%_))))
                                  (_%__kont250860250861%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd249290249474%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249291249476%_))
                                      (let ((_%e249298249456%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249291249476%_))))
                                        (let ((_%tl249300249461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249298249456%_)))
                                              (_%hd249299249459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249298249456%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249300249461%_))
                                              (_%__kont250854250855%_)
                                              (_%__kont250860250861%_))))
                                      (_%__kont250860250861%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd249290249474%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249291249476%_))
                                          (let ((_%e249306249348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249291249476%_))))
                                            (let ((_%tl249308249353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249306249348%_)))
                                                  (_%hd249307249351%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249306249348%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd249307249351%_))
                                                  (let ((_%e249309249356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd249307249351%_))))
                                                    (let ((_%tl249311249361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249309249356%_)))
                                                          (_%hd249310249359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249309249356%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd249310249359%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd249310249359%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249311249361%_))
                          (let ((_%e249312249364%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249311249361%_))))
                            (let ((_%tl249314249369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249312249364%_)))
                                  (_%hd249313249367%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249312249364%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249314249369%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl249308249353%_))
                                      (let ((_%__splice250858250859%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl249308249353%_
                                                '0))))
                                        (let ((_%tl249317249374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250858250859%_
                                                  '1)))
                                              (_%target249315249372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250858250859%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249317249374%_))
                                              (_%__match250939250940%_
                                               _%e249289249471%_
                                               _%hd249290249474%_
                                               _%tl249291249476%_
                                               _%e249306249348%_
                                               _%hd249307249351%_
                                               _%tl249308249353%_
                                               _%e249309249356%_
                                               _%hd249310249359%_
                                               _%tl249311249361%_
                                               _%e249312249364%_
                                               _%hd249313249367%_
                                               _%tl249314249369%_
                                               _%__splice250858250859%_
                                               _%target249315249372%_
                                               _%tl249317249374%_)
                                              (_%__kont250860250861%_))))
                                      (_%__kont250860250861%_))
                                  (_%__kont250860250861%_))))
                          (_%__kont250860250861%_))
                      (_%__kont250860250861%_))
                  (_%__kont250860250861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont250860250861%_))))
                                          (_%__kont250860250861%_))
                                      (_%__kont250860250861%_))))
                          (_%__kont250860250861%_))))
                  (_%__kont250860250861%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx249277%_ _%klass249278%_)
        (let ((_%expr-type249280%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx249277%_))))
          (if _%expr-type249280%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type249280%_ _%klass249278%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx249255%_ _%expr249256%_ _%type249257%_)
        (if (not _%type249257%_)
            '#f
            (let ((_%$e249260%_
                   (eq? (##structure-ref _%type249257%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e249260%_
                  _%$e249260%_
                  (let ((_%expr-type249264%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr249256%_))))
                    (if (not _%expr-type249264%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type249264%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e249268%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type249264%_
                                      'gxc#!abort::t))))
                              (if _%$e249268%_
                                  _%$e249268%_
                                  (let ((_%$e249271%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type249264%_
                                            _%type249257%_))))
                                    (if _%$e249271%_
                                        _%$e249271%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type249257%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type249257%_
                                                   _%expr-type249264%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx249255%_
                                                   _%expr249256%_
                                                   _%expr-type249264%_
                                                   _%type249257%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self249069%_ _%ctx249070%_ _%stx249071%_ _%args249072%_)
        (let* ((_%self249075%_ _%self249069%_)
               (_%klass249085%_
                (let ((__tmp251459
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self249075%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx249071%_ __tmp251459)))
               (_%fields249087%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass249085%_
                           '5
                           '#f
                           '#f))))
               (_%args249093%_
                (map (lambda (_%g249088249090%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx249070%_ _%g249088249090%_)))
                     _%args249072%_))
               (_%inline-make-object249095%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self249075%_
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
                           _%self249075%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields249087%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass249098%_ _%klass249085%_)
               (_%$e249112%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass249098%_ '6 '#f '#f))))
          (if _%$e249112%_
              ((lambda (_%ctor249115%_)
                 (let ((_%$obj249117%_
                        (let ((__tmp251460
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp251460)))
                       (_%ctor-impl249118%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass249098%_
                           _%ctor249115%_))))
                   (let ((__tmp251461
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj249117%_ '())
                                                  (cons _%inline-make-object249095%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl249118%_
                                                            (let ((__tmp251462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl249118%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj249117%_ '()))
                                             _%args249093%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp251462
                       _%stx249071%_
                       _%ctx249070%_))
                    (let ((_%$ctor249120%_
                           (let ((__tmp251463
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp251463))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor249120%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self249075%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj249117%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor249115%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor249120%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor249120%_ '()))
                              (cons (cons '%#ref (cons _%$obj249117%_ '()))
                                    _%args249093%_)))
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
                             _%self249075%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor249115%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj249117%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp251461 _%stx249071%_))))
               _%$e249112%_)
              (let ((_%$e249122%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass249098%_
                        '10
                        '#f
                        '#f))))
                (if _%$e249122%_
                    ((lambda (_%metaclass249125%_)
                       (let* ((_%$obj249127%_
                               (let ((__tmp251464
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp251464)))
                              (_%metakons249129%_
                               (let ((__tmp251465
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx249071%_
                                         _%metaclass249125%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp251465
                                  'instance-init!)))
                              (__tmp251466
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj249127%_
                                                             '())
                                                       (cons _%inline-make-object249095%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons249129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251467
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons249129%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self249075%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj249127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args249093%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp251467
                            _%stx249071%_
                            _%ctx249070%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self249075%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj249127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args249093%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj249127%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp251466 _%stx249071%_)))
                     _%$e249122%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass249098%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp251468
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args249093%_))))
                              (declare (not safe))
                              (##fx= __tmp251468 _%fields249087%_))
                            (let ((__tmp251469
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self249075%_
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
                                              _%self249075%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args249093%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251469
                               _%stx249071%_))
                            (let ((__tmp251471
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self249075%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp251470
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass249098%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx249071%_
                               __tmp251471
                               __tmp251470)))
                        (let ((_%$obj249134%_
                               (let ((__tmp251472
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp251472))))
                          (let _%lp249136%_ ((_%rest249138%_ _%args249093%_)
                                             (_%initializers249139%_ '()))
                            (let* ((_%__stx250942250943%_ _%rest249138%_)
                                   (_%g249143249164%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx250942250943%_)))))
                              (let ((_%__kont250944250945%_
                                     (lambda (_%g249145249218%_
                                              _%g249146249219%_
                                              _%g249147249220%_)
                                       (let* ((_%slot249247%_
                                               (let ((__tmp251473
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g249147249220%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp251473)))
                                              (_%off249249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass249098%_
                                                  _%slot249247%_))))
                                         (if _%off249249%_
                                             (_%lp249136%_
                                              _%g249145249218%_
                                              (cons (cons _%off249249%_
                                                          _%g249146249219%_)
                                                    _%initializers249139%_))
                                             (let ((__tmp251474
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self249075%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx249071%_
                                                __tmp251474
                                                _%slot249247%_))))))
                                    (_%__kont250946250947%_
                                     (lambda ()
                                       (let ((__tmp251475
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj249134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object249095%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp251478
                                     (cons (cons '%#ref
                                                 (cons _%$obj249134%_ '()))
                                           '()))
                                    (__tmp251476
                                     (let ((__tmp251477
                                            (lambda (_%i249178%_ _%r249179%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self249075%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i249178%_) '()))
                              (cons (cons '%#ref (cons _%$obj249134%_ '()))
                                    (cons (cdr _%i249178%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r249179%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp251477
                                        '()
                                        _%initializers249139%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp251478 __tmp251476)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251475
                                          _%stx249071%_))))
                                    (_%__kont250948250949%_
                                     (lambda ()
                                       (let ((__tmp251479
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj249134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object249095%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj249134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args249093%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj249134%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251479
                                          _%stx249071%_)))))
                                (let* ((_%g249141249181%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx250942250943%_))
                                              (_%__kont250946250947%_)
                                              (_%__kont250948250949%_))))
                                       (_%__match250979250980%_
                                        (lambda (_%e249148249186%_
                                                 _%hd249149249189%_
                                                 _%tl249150249191%_
                                                 _%e249151249194%_
                                                 _%hd249152249197%_
                                                 _%tl249153249199%_
                                                 _%e249154249202%_
                                                 _%hd249155249205%_
                                                 _%tl249156249207%_
                                                 _%e249157249210%_
                                                 _%hd249158249213%_
                                                 _%tl249159249215%_)
                                          (let ((_%g249145249218%_
                                                 _%tl249159249215%_)
                                                (_%g249146249219%_
                                                 _%hd249158249213%_)
                                                (_%g249147249220%_
                                                 _%hd249155249205%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g249147249220%_))
                                                (_%__kont250944250945%_
                                                 _%g249145249218%_
                                                 _%g249146249219%_
                                                 _%g249147249220%_)
                                                (_%__kont250948250949%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx250942250943%_))
                                      (let ((_%e249148249186%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx250942250943%_))))
                                        (let ((_%tl249150249191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249148249186%_)))
                                              (_%hd249149249189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249148249186%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd249149249189%_))
                                              (let ((_%e249151249194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd249149249189%_))))
                                                (let ((_%tl249153249199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249151249194%_)))
                                                      (_%hd249152249197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249151249194%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd249152249197%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd249152249197%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl249153249199%_))
                      (let ((_%e249154249202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249153249199%_))))
                        (let ((_%tl249156249207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249154249202%_)))
                              (_%hd249155249205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249154249202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249156249207%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249150249191%_))
                                  (let ((_%e249157249210%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249150249191%_))))
                                    (let ((_%tl249159249215%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249157249210%_)))
                                          (_%hd249158249213%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249157249210%_))))
                                      (_%__match250979250980%_
                                       _%e249148249186%_
                                       _%hd249149249189%_
                                       _%tl249150249191%_
                                       _%e249151249194%_
                                       _%hd249152249197%_
                                       _%tl249153249199%_
                                       _%e249154249202%_
                                       _%hd249155249205%_
                                       _%tl249156249207%_
                                       _%e249157249210%_
                                       _%hd249158249213%_
                                       _%tl249159249215%_)))
                                  (_%__kont250948250949%_))
                              (_%__kont250948250949%_))))
                      (_%__kont250948250949%_))
                  (_%__kont250948250949%_))
              (_%__kont250948250949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont250948250949%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249141249181%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self248852%_ _%ctx248853%_ _%stx248854%_ _%args248855%_)
        (let* ((_%self248858%_ _%self248852%_)
               (_%arguments-ok?248868%_
                (let ((__method251423
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self248858%_ 'check-arguments))))
                  (if __method251423
                      (let ()
                        (declare (not safe))
                        (__method251423
                         _%self248858%_
                         _%ctx248853%_
                         _%stx248854%_
                         _%args248855%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self248858%_
                                 'check-arguments))
                        '#!void))))
               (_%g248870248880%_
                (lambda (_%g248871248877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g248871248877%_))))
               (_%g248869248944%_
                (lambda (_%g248871248883%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g248871248883%_))
                      (let ((_%e248873248885%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g248871248883%_))))
                        (let ((_%hd248874248888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e248873248885%_)))
                              (_%tl248875248890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e248873248885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl248875248890%_))
                              ((lambda (_%g248872248893%_)
                                 (let* ((_%klass248906%_
                                         (let ((__tmp251480
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self248858%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx248854%_
                                            __tmp251480)))
                                        (_%field248908%_
                                         (let ((__tmp251481
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self248858%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass248906%_
                                            __tmp251481)))
                                        (_%object248910%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx248853%_
                                            _%g248872248893%_)))
                                        (_%klass248913%_ _%klass248906%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass248913%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp251482
                                              (cons (if (or _%arguments-ok?248868%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self248858%_
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
                                 _%self248858%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field248908%_ '()))
                        (cons _%object248910%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251482
                                          _%stx248854%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass248913%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp251483
                                                  (cons (if (or _%arguments-ok?248868%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self248858%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self248858%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field248908%_ '()))
                            (cons _%object248910%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251483
                                              _%stx248854%_))
                                           (let ((_%$e248932%_
                                                  (let ((__tmp251484
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self248858%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass248913%_
                                                     __tmp251484))))
                                             (if _%$e248932%_
                                                 ((lambda (_%klass248935%_)
                                                    (let ((__tmp251485
                                                           (cons (if (or _%arguments-ok?248868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248858%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self248858%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field248908%_ '()))
                                     (cons _%object248910%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp251485 _%stx248854%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e248932%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self248858%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp251486
                                                            (let ((_%$obj248941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp251487
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp251487))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj248941%_ '())
                                              (cons _%object248910%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass248913%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj248941%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248858%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field248908%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj248941%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?248868%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj248941%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self248858%_
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
                                                             _%self248858%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj248941%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self248858%_
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
               (gxc#xform-wrap-source __tmp251486 _%stx248854%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp251488
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object248910%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self248858%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp251488 _%stx248854%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd248874248888%_)
                              (_%g248870248880%_ _%g248871248883%_))))
                      (_%g248870248880%_ _%g248871248883%_)))))
          (_%g248869248944%_ _%args248855%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass250710 __method-table250711)
        (let ((__check-arguments250712
               (let ((__tmp251489
                      (lambda ()
                        (let ((__method250713
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table250711
                                  'check-arguments
                                  '#f))))
                          (if __method250713
                              __method250713
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp251489)))
              (__slot250714
               (let ((__slot250715
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass250710 'slot))))
                 (if __slot250715
                     __slot250715
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self248852%_ _%ctx248853%_ _%stx248854%_ _%args248855%_)
            (let* ((_%self248858%_ _%self248852%_)
                   (_%arguments-ok?248868%_
                    ((force __check-arguments250712)
                     _%self248858%_
                     _%ctx248853%_
                     _%stx248854%_
                     _%args248855%_))
                   (_%g248870248880%_
                    (lambda (_%g248871248877%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g248871248877%_))))
                   (_%g248869248944%_
                    (lambda (_%g248871248883%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g248871248883%_))
                          (let ((_%e248873248885%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g248871248883%_))))
                            (let ((_%hd248874248888%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248873248885%_)))
                                  (_%tl248875248890%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248873248885%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl248875248890%_))
                                  ((lambda (_%g248872248893%_)
                                     (let* ((_%klass248906%_
                                             (let ((__tmp251490
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self248858%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx248854%_
                                                __tmp251490)))
                                            (_%field248908%_
                                             (let ((__tmp251491
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self248858%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass248906%_
                                                __tmp251491)))
                                            (_%object248910%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx248853%_
                                                _%g248872248893%_)))
                                            (_%klass248913%_ _%klass248906%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass248913%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp251492
                                                  (cons (if (or _%arguments-ok?248868%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self248858%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self248858%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field248908%_ '()))
                            (cons _%object248910%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251492
                                              _%stx248854%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass248913%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp251493
                                                      (cons (if (or _%arguments-ok?248868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self248858%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248858%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field248908%_ '()))
                                (cons _%object248910%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251493
                                                  _%stx248854%_))
                                               (let ((_%$e248932%_
                                                      (let ((__tmp251494
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self248858%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass248913%_ __tmp251494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e248932%_
                                                     ((lambda (_%klass248935%_)
                                                        (let ((__tmp251495
                                                               (cons (if (or _%arguments-ok?248868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248858%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self248858%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field248908%_ '()))
                                         (cons _%object248910%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp251495 _%stx248854%_)))
              _%$e248932%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self248858%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp251496
                                                                (let ((_%$obj248941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp251497
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp251497))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj248941%_ '())
                                                  (cons _%object248910%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass248913%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj248941%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self248858%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field248908%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj248941%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?248868%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj248941%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self248858%_
                               __slot250714
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
                        (##unchecked-structure-ref _%self248858%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj248941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self248858%_
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
                   (gxc#xform-wrap-source __tmp251496 _%stx248854%_))
                 (let ((__tmp251498
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object248910%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self248858%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp251498 _%stx248854%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd248874248888%_)
                                  (_%g248870248880%_ _%g248871248883%_))))
                          (_%g248870248880%_ _%g248871248883%_)))))
              (_%g248869248944%_ _%args248855%_))))))
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
      (lambda (_%self248616%_ _%ctx248617%_ _%stx248618%_ _%args248619%_)
        (let* ((_%self248622%_ _%self248616%_)
               (_%arguments-ok?248632%_
                (let ((__method251424
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self248622%_ 'check-arguments))))
                  (if __method251424
                      (let ()
                        (declare (not safe))
                        (__method251424
                         _%self248622%_
                         _%ctx248617%_
                         _%stx248618%_
                         _%args248619%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self248622%_
                                 'check-arguments))
                        '#!void))))
               (_%g248634248648%_
                (lambda (_%g248635248645%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g248635248645%_))))
               (_%g248633248727%_
                (lambda (_%g248635248651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g248635248651%_))
                      (let ((_%e248638248653%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g248635248651%_))))
                        (let ((_%hd248639248656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e248638248653%_)))
                              (_%tl248640248658%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e248638248653%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl248640248658%_))
                              (let ((_%e248641248661%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl248640248658%_))))
                                (let ((_%hd248642248664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e248641248661%_)))
                                      (_%tl248643248666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e248641248661%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl248643248666%_))
                                      ((lambda (_%g248636248669%_
                                                _%g248637248670%_)
                                         (let* ((_%klass248686%_
                                                 (let ((__tmp251499
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self248622%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx248618%_
                                                    __tmp251499)))
                                                (_%field248688%_
                                                 (let ((__tmp251500
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self248622%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass248686%_
                                                    __tmp251500)))
                                                (_%object248690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx248617%_
                                                    _%g248637248670%_)))
                                                (_%value248692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx248617%_
                                                    _%g248636248669%_)))
                                                (_%klass248695%_
                                                 _%klass248686%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass248695%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp251501
                                                      (cons (if (or _%arguments-ok?248632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self248622%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248622%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field248688%_ '()))
                                (cons _%object248690%_
                                      (cons _%value248692%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251501
                                                  _%stx248618%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass248695%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp251502
                                                          (cons (if (or _%arguments-ok?248632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self248622%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248622%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field248688%_ '()))
                                    (cons _%object248690%_
                                          (cons _%value248692%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp251502
                                                      _%stx248618%_))
                                                   (let ((_%$e248715%_
                                                          (let ((__tmp251503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self248622%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass248695%_
                     __tmp251503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e248715%_
                                                         ((lambda (_%klass248718%_)
                                                            (let ((__tmp251504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?248632%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self248622%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self248622%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field248688%_ '()))
                                             (cons _%object248690%_
                                                   (cons _%value248692%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251504 _%stx248618%_)))
                  _%$e248715%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self248622%_ '4 '#f '#f))
                     (let ((__tmp251505
                            (let ((_%$obj248724%_
                                   (let ((__tmp251506
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp251506))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj248724%_ '())
                                                      (cons _%object248690%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass248695%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj248724%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self248622%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field248688%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj248724%_
                                                              '()))
                                                  (cons _%value248692%_
                                                        '())))))
                          (cons (if _%arguments-ok?248632%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj248724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self248622%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value248692%_ '())))))
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
                             _%self248622%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj248724%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248622%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value248692%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp251505 _%stx248618%_))
                     (let ((__tmp251507
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object248690%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self248622%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value248692%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp251507
                        _%stx248618%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd248642248664%_
                                       _%hd248639248656%_)
                                      (_%g248634248648%_ _%g248635248651%_))))
                              (_%g248634248648%_ _%g248635248651%_))))
                      (_%g248634248648%_ _%g248635248651%_)))))
          (_%g248633248727%_ _%args248619%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass250716 __method-table250717)
        (let ((__check-arguments250718
               (let ((__tmp251508
                      (lambda ()
                        (let ((__method250719
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table250717
                                  'check-arguments
                                  '#f))))
                          (if __method250719
                              __method250719
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp251508))))
          (lambda (_%self248616%_ _%ctx248617%_ _%stx248618%_ _%args248619%_)
            (let* ((_%self248622%_ _%self248616%_)
                   (_%arguments-ok?248632%_
                    ((force __check-arguments250718)
                     _%self248622%_
                     _%ctx248617%_
                     _%stx248618%_
                     _%args248619%_))
                   (_%g248634248648%_
                    (lambda (_%g248635248645%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g248635248645%_))))
                   (_%g248633248727%_
                    (lambda (_%g248635248651%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g248635248651%_))
                          (let ((_%e248638248653%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g248635248651%_))))
                            (let ((_%hd248639248656%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248638248653%_)))
                                  (_%tl248640248658%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248638248653%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl248640248658%_))
                                  (let ((_%e248641248661%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl248640248658%_))))
                                    (let ((_%hd248642248664%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e248641248661%_)))
                                          (_%tl248643248666%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e248641248661%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl248643248666%_))
                                          ((lambda (_%g248636248669%_
                                                    _%g248637248670%_)
                                             (let* ((_%klass248686%_
                                                     (let ((__tmp251509
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self248622%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx248618%_
                                                        __tmp251509)))
                                                    (_%field248688%_
                                                     (let ((__tmp251510
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self248622%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass248686%_
                                                        __tmp251510)))
                                                    (_%object248690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx248617%_
                                                        _%g248637248670%_)))
                                                    (_%value248692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx248617%_
                                                        _%g248636248669%_)))
                                                    (_%klass248695%_
                                                     _%klass248686%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass248695%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp251511
                                                          (cons (if (or _%arguments-ok?248632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self248622%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248622%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field248688%_ '()))
                                    (cons _%object248690%_
                                          (cons _%value248692%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp251511
                                                      _%stx248618%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass248695%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp251512
                                                              (cons (if (or _%arguments-ok?248632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self248622%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self248622%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field248688%_ '()))
                                        (cons _%object248690%_
                                              (cons _%value248692%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp251512 _%stx248618%_))
               (let ((_%$e248715%_
                      (let ((__tmp251513
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self248622%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass248695%_
                         __tmp251513))))
                 (if _%$e248715%_
                     ((lambda (_%klass248718%_)
                        (let ((__tmp251514
                               (cons (if (or _%arguments-ok?248632%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self248622%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self248622%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field248688%_
                                                             '()))
                                                 (cons _%object248690%_
                                                       (cons _%value248692%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp251514 _%stx248618%_)))
                      _%$e248715%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self248622%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp251515
                                (let ((_%$obj248724%_
                                       (let ((__tmp251516
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp251516))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj248724%_
                                                                '())
                                                          (cons _%object248690%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass248695%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj248724%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self248622%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field248688%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj248724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value248692%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?248632%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj248724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self248622%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value248692%_ '())))))
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
                                 _%self248622%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj248724%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248622%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value248692%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp251515 _%stx248618%_))
                         (let ((__tmp251517
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object248690%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self248622%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value248692%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp251517
                            _%stx248618%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd248642248664%_
                                           _%hd248639248656%_)
                                          (_%g248634248648%_
                                           _%g248635248651%_))))
                                  (_%g248634248648%_ _%g248635248651%_))))
                          (_%g248634248648%_ _%g248635248651%_)))))
              (_%g248633248727%_ _%args248619%_))))))
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
      (lambda (_%self248432%_ _%ctx248433%_ _%stx248434%_ _%args248435%_)
        (let* ((_%self248438%_ _%self248432%_)
               (_%self248447248457%_ _%self248438%_)
               (_%E248449248460%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self248447248457%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K248450248470%_
                (lambda (_%inline248463%_ _%dispatch248464%_ _%arity248465%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self248438%_
                         _%args248435%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx248434%_
                         _%arity248465%_)))
                  (if _%inline248463%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp251518 (_%inline248463%_ _%stx248434%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp251518
                           _%stx248434%_
                           _%ctx248433%_)))
                      (if (and _%dispatch248464%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch248464%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch248464%_))
                            (let ((__tmp251519
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch248464%_
                                                           '()))
                                               _%args248435%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp251519
                               _%stx248434%_
                               _%ctx248433%_)))
                          (gxc#!procedure::optimize-call
                           _%self248438%_
                           _%ctx248433%_
                           _%stx248434%_
                           _%args248435%_)))))
               (_%e248451248473%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248447248457%_ '1 '#f '#f)))
               (_%e248452248476%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248447248457%_ '2 '#f '#f)))
               (_%e248453248479%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248447248457%_ '3 '#f '#f)))
               (_%arity248482%_ _%e248453248479%_)
               (_%e248454248484%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248447248457%_ '4 '#f '#f)))
               (_%dispatch248487%_ _%e248454248484%_)
               (_%e248455248489%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248447248457%_ '5 '#f '#f)))
               (_%inline248492%_ _%e248455248489%_))
          (_%K248450248470%_
           _%inline248492%_
           _%dispatch248487%_
           _%arity248482%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self248284%_ _%ctx248285%_ _%stx248286%_ _%args248287%_)
        (let* ((_%self248290%_ _%self248284%_)
               (_%$e248304%_
                (let ((__tmp251521
                       (lambda (_%g248299248301%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g248299248301%_
                            _%args248287%_))))
                      (__tmp251520
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self248290%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp251521 __tmp251520))))
          (if _%$e248304%_
              ((lambda (_%clause248307%_)
                 (let ((__method251425
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause248307%_ 'optimize-call))))
                   (if __method251425
                       (let ()
                         (declare (not safe))
                         (__method251425
                          _%clause248307%_
                          _%ctx248285%_
                          _%stx248286%_
                          _%args248287%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause248307%_
                                  'optimize-call))
                         '#!void))))
               _%$e248304%_)
              (let ((__tmp251522
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self248290%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx248286%_
                 __tmp251522))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self248025%_ _%ctx248026%_ _%stx248027%_ _%args248028%_)
        (let* ((_%self248031%_ _%self248025%_)
               (_%self248040248049%_ _%self248031%_)
               (_%E248042248052%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self248040248049%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K248043248143%_
                (lambda (_%dispatch248055%_ _%table248056%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch248055%_))
                      (let* ((_%g248057248067%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch248055%_)))
                             (_%else248059248075%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch248055%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx248026%_
                                   _%stx248027%_))))
                             (_%K248061248124%_
                              (lambda (_%main248078%_ _%keys248079%_)
                                (let ((_g251523_
                                       (gxc#!kw-lambda-split-args
                                        _%stx248027%_
                                        _%args248028%_)))
                                  (begin
                                    (let ((_g251524_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g251523_)
                                                 (##values-length _g251523_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g251524_ 2)))
                                          (error "Context expects 2 values"
                                                 _g251524_)))
                                    (let ((_%pargs248081%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g251523_ 0)))
                                          (_%kwargs248082%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g251523_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main248078%_))
                                        (if _%table248056%_
                                            (let ((_%xargs248090%_
                                                   (map (lambda (_%key248084%_)
                                                          (let ((_%$e248086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key248084%_ _%kwargs248082%_))))
                    (if _%$e248086%_ _%$e248086%_ '(%#ref absent-value))))
                _%keys248079%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw248092%_)
                                                 (if (memq (car _%kw248092%_)
                                                           _%keys248079%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx248027%_
                                                        _%keys248079%_
                                                        _%kw248092%_))))
                                               _%kwargs248082%_)
                                              (let ((__tmp251525
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main248078%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs248081%_
                                  _%xargs248090%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp251525
                                                 _%stx248027%_
                                                 _%ctx248026%_)))
                                            (let* ((_%kwt248094%_
                                                    (let ((__tmp251526
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp251526)))
                                                   (_%kwvars248098%_
                                                    (map (lambda (_%_248096%_)
                                                           (let ((__tmp251527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp251527)))
                 _%kwargs248082%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind248103%_
                                                    (map (lambda (_%kw248100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar248101%_)
                   (cons (cons _%kwvar248101%_ '())
                         (cons (cdr _%kw248100%_) '())))
                 _%kwargs248082%_
                 _%kwvars248098%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset248108%_
                                                    (map (lambda (_%kw248105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar248106%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt248094%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw248105%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar248106%_
                                                             '()))
                                                 '()))))))
                 _%kwargs248082%_
                 _%kwvars248098%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs248113%_
                                                    (map (lambda (_%kw248110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar248111%_)
                   (cons (car _%kw248110%_)
                         (cons '%#ref (cons _%kwvar248111%_ '()))))
                 _%kwargs248082%_
                 _%kwvars248098%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs248121%_
                                                    (map (lambda (_%key248115%_)
                                                           (let ((_%$e248117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key248115%_ _%xkwargs248113%_))))
                     (if _%$e248117%_ _%$e248117%_ '(%#ref absent-value))))
                 _%keys248079%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp251528
                                                    (cons '%#let-values
                                                          (cons _%kwbind248103%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt248094%_ '())
                                                      (cons (let ((__tmp251529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs248082%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251529 _%stx248027%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp251530
                                                             (cons (let ((__tmp251531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main248078%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt248094%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs248081%_
                                                       _%xargs248121%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp251531 _%stx248027%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp251530 _%kwset248108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp251528
                                               _%stx248027%_
                                               _%ctx248026%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g248057248067%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e248062248127%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248057248067%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e248063248130%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248057248067%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e248064248133%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248057248067%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys248136%_ _%e248064248133%_)
                                   (_%e248065248138%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248057248067%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main248141%_ _%e248065248138%_))
                              (_%K248061248124%_
                               _%main248141%_
                               _%keys248136%_))
                            (_%else248059248075%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx248026%_ _%stx248027%_)))))
               (_%e248044248146%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248040248049%_ '1 '#f '#f)))
               (_%e248045248149%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248040248049%_ '2 '#f '#f)))
               (_%e248046248152%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248040248049%_ '3 '#f '#f)))
               (_%table248155%_ _%e248046248152%_)
               (_%e248047248157%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248040248049%_ '4 '#f '#f)))
               (_%dispatch248160%_ _%e248047248157%_))
          (_%K248043248143%_ _%dispatch248160%_ _%table248155%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx247638%_ _%args247639%_)
        (let _%lp247641%_ ((_%rest247643%_ _%args247639%_)
                           (_%pargs247644%_ '())
                           (_%kwargs247645%_ '()))
          (let* ((_%__stx250984250985%_ _%rest247643%_)
                 (_%g247651247703%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx250984250985%_)))))
            (let ((_%__kont250986250987%_
                   (lambda (_%g247653247882%_ _%g247654247883%_)
                     (_%lp247641%_
                      _%g247653247882%_
                      (cons _%g247654247883%_ _%pargs247644%_)
                      _%kwargs247645%_)))
                  (_%__kont250988250989%_
                   (lambda (_%g247668247828%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g247668247828%_
                                _%pargs247644%_))
                             (reverse _%kwargs247645%_))))
                  (_%__kont250990250991%_
                   (lambda (_%g247679247775%_
                            _%g247680247776%_
                            _%g247681247777%_)
                     (let ((_%kw247794%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g247681247777%_))))
                       (if (assq _%kw247794%_ _%kwargs247645%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx247638%_
                              _%kw247794%_))
                           (_%lp247641%_
                            _%g247679247775%_
                            _%pargs247644%_
                            (cons (cons _%kw247794%_ _%g247680247776%_)
                                  _%kwargs247645%_))))))
                  (_%__kont250992250993%_
                   (lambda (_%g247694247723%_ _%g247695247724%_)
                     (_%lp247641%_
                      _%g247694247723%_
                      (cons _%g247695247724%_ _%pargs247644%_)
                      _%kwargs247645%_)))
                  (_%__kont250994250995%_
                   (lambda ()
                     (values (reverse _%pargs247644%_)
                             (reverse _%kwargs247645%_)))))
              (let ((_%__match251091251092%_
                     (lambda (_%e247682247743%_
                              _%hd247683247746%_
                              _%tl247684247748%_
                              _%e247685247751%_
                              _%hd247686247754%_
                              _%tl247687247756%_
                              _%e247688247759%_
                              _%hd247689247762%_
                              _%tl247690247764%_
                              _%e247691247767%_
                              _%hd247692247770%_
                              _%tl247693247772%_)
                       (let ((_%g247679247775%_ _%tl247693247772%_)
                             (_%g247680247776%_ _%hd247692247770%_)
                             (_%g247681247777%_ _%hd247689247762%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g247681247777%_))
                             (_%__kont250990250991%_
                              _%g247679247775%_
                              _%g247680247776%_
                              _%g247681247777%_)
                             (_%__kont250992250993%_
                              _%tl247684247748%_
                              _%hd247683247746%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx250984250985%_))
                    (let ((_%e247655247847%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx250984250985%_))))
                      (let ((_%tl247657247852%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e247655247847%_)))
                            (_%hd247656247850%_
                             (let ()
                               (declare (not safe))
                               (##car _%e247655247847%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd247656247850%_))
                            (let ((_%e247658247855%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd247656247850%_))))
                              (let ((_%tl247660247860%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e247658247855%_)))
                                    (_%hd247659247858%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e247658247855%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd247659247858%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd247659247858%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl247660247860%_))
                                            (let ((_%e247661247863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl247660247860%_))))
                                              (let ((_%tl247663247868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e247661247863%_)))
                                                    (_%hd247662247866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e247661247863%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd247662247866%_))
                                                    (let ((_%e247664247871%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd247662247866%_))))
                                                      (if (equal? _%e247664247871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247663247868%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247657247852%_))
                          (let ((_%e247665247874%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247657247852%_))))
                            (let ((_%tl247667247879%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247665247874%_)))
                                  (_%hd247666247877%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247665247874%_))))
                              (_%__kont250986250987%_
                               _%tl247667247879%_
                               _%hd247666247877%_)))
                          (_%__kont250992250993%_
                           _%tl247657247852%_
                           _%hd247656247850%_))
                      (_%__kont250992250993%_
                       _%tl247657247852%_
                       _%hd247656247850%_))
                  (if (equal? _%e247664247871%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247663247868%_))
                          (_%__kont250988250989%_ _%tl247657247852%_)
                          (_%__kont250992250993%_
                           _%tl247657247852%_
                           _%hd247656247850%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247663247868%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl247657247852%_))
                              (let ((_%e247691247767%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl247657247852%_))))
                                (let ((_%tl247693247772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e247691247767%_)))
                                      (_%hd247692247770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e247691247767%_))))
                                  (_%__match251091251092%_
                                   _%e247655247847%_
                                   _%hd247656247850%_
                                   _%tl247657247852%_
                                   _%e247658247855%_
                                   _%hd247659247858%_
                                   _%tl247660247860%_
                                   _%e247661247863%_
                                   _%hd247662247866%_
                                   _%tl247663247868%_
                                   _%e247691247767%_
                                   _%hd247692247770%_
                                   _%tl247693247772%_)))
                              (_%__kont250992250993%_
                               _%tl247657247852%_
                               _%hd247656247850%_))
                          (_%__kont250992250993%_
                           _%tl247657247852%_
                           _%hd247656247850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl247663247868%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl247657247852%_))
                                                            (let ((_%e247691247767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl247657247852%_))))
                      (let ((_%tl247693247772%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e247691247767%_)))
                            (_%hd247692247770%_
                             (let ()
                               (declare (not safe))
                               (##car _%e247691247767%_))))
                        (_%__match251091251092%_
                         _%e247655247847%_
                         _%hd247656247850%_
                         _%tl247657247852%_
                         _%e247658247855%_
                         _%hd247659247858%_
                         _%tl247660247860%_
                         _%e247661247863%_
                         _%hd247662247866%_
                         _%tl247663247868%_
                         _%e247691247767%_
                         _%hd247692247770%_
                         _%tl247693247772%_)))
                    (_%__kont250992250993%_
                     _%tl247657247852%_
                     _%hd247656247850%_))
                (_%__kont250992250993%_
                 _%tl247657247852%_
                 _%hd247656247850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont250992250993%_
                                             _%tl247657247852%_
                                             _%hd247656247850%_))
                                        (_%__kont250992250993%_
                                         _%tl247657247852%_
                                         _%hd247656247850%_))
                                    (_%__kont250992250993%_
                                     _%tl247657247852%_
                                     _%hd247656247850%_))))
                            (_%__kont250992250993%_
                             _%tl247657247852%_
                             _%hd247656247850%_))))
                    (_%__kont250994250995%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self247622%_ _%ctx247623%_ _%stx247624%_ _%args247625%_)
        (let ((_%self247628%_ _%self247622%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx247623%_ _%stx247624%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self247312%_ _%stx247313%_)
        (let* ((_%__stx251100251101%_ _%stx247313%_)
               (_%g247316247356%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx251100251101%_)))))
          (let ((_%__kont251102251103%_
                 (lambda (_%g247318247460%_ _%g247319247461%_)
                   (let ((_%$e247488%_
                          (member 'return:
                                  (let ((__tmp251532
                                         (lambda (_%g247480247483%_
                                                  _%g247481247485%_)
                                           (cons _%g247480247483%_
                                                 _%g247481247485%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp251532
                                     '()
                                     _%g247319247461%_))
                                  gx#stx-eq?)))
                     (if _%$e247488%_
                         ((lambda (_%tail247491%_)
                            (let ((_%type247493%_
                                   (let ((__tmp251533
                                          (let ((__tmp251534
                                                 (cadr _%tail247491%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp251534))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx247313%_
                                      __tmp251533))))
                              (gxc#check-return-type!
                               _%stx247313%_
                               _%g247318247460%_
                               _%type247493%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self247312%_
                                 _%g247318247460%_))))
                          _%$e247488%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self247312%_
                            _%g247318247460%_))))))
                (_%__kont251106251107%_
                 (lambda (_%g247341247385%_ _%g247342247386%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self247312%_ _%g247341247385%_)))))
            (let ((_%__match251137251138%_
                   (lambda (_%e247320247406%_
                            _%hd247321247409%_
                            _%tl247322247411%_
                            _%e247323247414%_
                            _%hd247324247417%_
                            _%tl247325247419%_
                            _%e247326247422%_
                            _%hd247327247425%_
                            _%tl247328247427%_
                            _%__splice251104251105%_
                            _%target247329247430%_
                            _%tl247331247432%_)
                     (letrec ((_%loop247332247435%_
                               (lambda (_%hd247330247438%_
                                        _%signature247336247440%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd247330247438%_))
                                     (let ((_%e247333247442%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd247330247438%_))))
                                       (let ((_%lp-tl247335247447%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e247333247442%_)))
                                             (_%lp-hd247334247445%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e247333247442%_))))
                                         (_%loop247332247435%_
                                          _%lp-tl247335247447%_
                                          (cons _%lp-hd247334247445%_
                                                _%signature247336247440%_))))
                                     (let ((_%signature247337247450%_
                                            (reverse _%signature247336247440%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl247325247419%_))
                                           (let ((_%e247338247452%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl247325247419%_))))
                                             (let ((_%tl247340247457%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e247338247452%_)))
                                                   (_%hd247339247455%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e247338247452%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl247340247457%_))
                                                   (_%__kont251102251103%_
                                                    _%hd247339247455%_
                                                    _%signature247337247450%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g247316247356%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g247316247356%_))))))))
                       (_%loop247332247435%_ _%target247329247430%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx251100251101%_))
                  (let ((_%e247320247406%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx251100251101%_))))
                    (let ((_%tl247322247411%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247320247406%_)))
                          (_%hd247321247409%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247320247406%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247322247411%_))
                          (let ((_%e247323247414%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247322247411%_))))
                            (let ((_%tl247325247419%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247323247414%_)))
                                  (_%hd247324247417%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247323247414%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd247324247417%_))
                                  (let ((_%e247326247422%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd247324247417%_))))
                                    (let ((_%tl247328247427%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247326247422%_)))
                                          (_%hd247327247425%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247326247422%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd247327247425%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd247327247425%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl247328247427%_))
                                                  (let ((_%__splice251104251105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl247328247427%_
                                                            '0))))
                                                    (let ((_%tl247331247432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251104251105%_
                                                              '1)))
                                                          (_%target247329247430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251104251105%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247331247432%_))
                                                          (_%__match251137251138%_
                                                           _%e247320247406%_
                                                           _%hd247321247409%_
                                                           _%tl247322247411%_
                                                           _%e247323247414%_
                                                           _%hd247324247417%_
                                                           _%tl247325247419%_
                                                           _%e247326247422%_
                                                           _%hd247327247425%_
                                                           _%tl247328247427%_
                                                           _%__splice251104251105%_
                                                           _%target247329247430%_
                                                           _%tl247331247432%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl247325247419%_))
                      (let ((_%e247349247377%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247325247419%_))))
                        (let ((_%tl247351247382%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247349247377%_)))
                              (_%hd247350247380%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247349247377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247351247382%_))
                              (_%__kont251106251107%_
                               _%hd247350247380%_
                               _%hd247324247417%_)
                              (let ()
                                (declare (not safe))
                                (_%g247316247356%_)))))
                      (let () (declare (not safe)) (_%g247316247356%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247325247419%_))
                                                      (let ((_%e247349247377%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247325247419%_))))
                (let ((_%tl247351247382%_
                       (let () (declare (not safe)) (##cdr _%e247349247377%_)))
                      (_%hd247350247380%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247349247377%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247351247382%_))
                      (_%__kont251106251107%_
                       _%hd247350247380%_
                       _%hd247324247417%_)
                      (let () (declare (not safe)) (_%g247316247356%_)))))
              (let () (declare (not safe)) (_%g247316247356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247325247419%_))
                                                  (let ((_%e247349247377%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247325247419%_))))
                                                    (let ((_%tl247351247382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247349247377%_)))
                                                          (_%hd247350247380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247349247377%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247351247382%_))
                                                          (_%__kont251106251107%_
                                                           _%hd247350247380%_
                                                           _%hd247324247417%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g247316247356%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247316247356%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247325247419%_))
                                              (let ((_%e247349247377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247325247419%_))))
                                                (let ((_%tl247351247382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247349247377%_)))
                                                      (_%hd247350247380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247349247377%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247351247382%_))
                                                      (_%__kont251106251107%_
                                                       _%hd247350247380%_
                                                       _%hd247324247417%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247316247356%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247316247356%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247325247419%_))
                                      (let ((_%e247349247377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247325247419%_))))
                                        (let ((_%tl247351247382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247349247377%_)))
                                              (_%hd247350247380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247349247377%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl247351247382%_))
                                              (_%__kont251106251107%_
                                               _%hd247350247380%_
                                               _%hd247324247417%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g247316247356%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247316247356%_))))))
                          (let () (declare (not safe)) (_%g247316247356%_)))))
                  (let () (declare (not safe)) (_%g247316247356%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx247287%_ _%expr247288%_ _%type247289%_)
        (let ((_%$e247291%_ (not _%type247289%_)))
          (if _%$e247291%_
              _%$e247291%_
              (let ((_%$e247294%_
                     (eq? (##structure-ref _%type247289%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e247294%_
                    _%$e247294%_
                    (let ((_%$e247297%_
                           (eq? (##structure-ref
                                 _%type247289%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e247297%_
                          _%$e247297%_
                          (let ((_%expr-type247301%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr247288%_))))
                            (if (not _%expr-type247301%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx247287%_
                                   _%type247289%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type247301%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx247287%_
                                       _%type247289%_
                                       _%expr-type247301%_))
                                    (let ((_%$e247305%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type247301%_
                                              'gxc#!abort::t))))
                                      (if _%$e247305%_
                                          _%$e247305%_
                                          (let ((_%$e247308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type247301%_
                                                    _%type247289%_))))
                                            (if _%$e247308%_
                                                _%$e247308%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx247287%_
                                                   _%type247289%_
                                                   _%expr-type247301%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self246713%_ _%stx246714%_)
        (let* ((_%__stx251182251183%_ _%stx246714%_)
               (_%g246719246829%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx251182251183%_)))))
          (let ((_%__kont251184251185%_
                 (lambda (_%g246721247261%_
                          _%g246722247262%_
                          _%g246723247263%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g246723247263%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self246713%_ _%g246722247262%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self246713%_
                          _%g246721247261%_)))))
                (_%__kont251186251187%_
                 (lambda (_%g246742247087%_
                          _%g246743247088%_
                          _%g246744247089%_
                          _%g246745247090%_)
                   (let ((_%$e247122%_
                          (let ((__tmp251535
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g246745247090%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp251535))))
                     (if _%$e247122%_
                         ((lambda (_%pred-type247125%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type247125%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type247125%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test247130%_
                                        (let ((__tmp251536
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g246745247090%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g246744247089%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp251536
                                           _%stx246714%_
                                           _%self246713%_)))
                                       (_%K247134%_
                                        (let ((__tmp251537
                                               (lambda ()
                                                 (let ((__tmp251540
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self246713%_
                                                             _%g246743247088%_))))
                                                       (__tmp251538
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g246744247089%_))
                            (let ((__tmp251539
                                   (##structure-ref
                                    _%pred-type247125%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx246714%_
                               __tmp251539)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp251540
                                                    gxc#current-compile-path-type
                                                    __tmp251538)))))
                                          (declare (not safe))
                                          (__make-promise __tmp251537)))
                                       (_%E247137%_
                                        (let ((__tmp251541
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self246713%_
                                                    _%g246742247087%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp251541)))
                                       (_%__stx251160251161%_ _%test247130%_)
                                       (_%g247141247155%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx251160251161%_)))))
                                  (let ((_%__kont251162251163%_
                                         (lambda (_%g247143247183%_
                                                  _%g247144247184%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g247143247183%_))
                                               (force _%K247134%_)
                                               (force _%E247137%_))))
                                        (_%__kont251164251165%_
                                         (lambda ()
                                           (let ((__tmp251542
                                                  (cons '%#if
                                                        (cons _%test247130%_
                                                              (cons (force _%K247134%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E247137%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251542
                                              _%stx246714%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx251160251161%_))
                                        (let ((_%e247145247167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx251160251161%_))))
                                          (let ((_%tl247147247172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e247145247167%_)))
                                                (_%hd247146247170%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e247145247167%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl247147247172%_))
                                                (let ((_%e247148247175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl247147247172%_))))
                                                  (let ((_%tl247150247180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e247148247175%_)))
                                                        (_%hd247149247178%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e247148247175%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl247150247180%_))
                                                        (_%__kont251162251163%_
                                                         _%hd247149247178%_
                                                         _%hd247146247170%_)
                                                        (_%__kont251164251165%_))))
                                                (_%__kont251164251165%_))))
                                        (_%__kont251164251165%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self246713%_
                                   _%stx246714%_))))
                          _%$e247122%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self246713%_
                            _%stx246714%_))))))
                (_%__kont251188251189%_
                 (lambda (_%g246779246963%_
                          _%g246780246964%_
                          _%g246781246965%_
                          _%g246782246966%_)
                   (gxc#optimize-if%
                    _%self246713%_
                    (let ((__tmp251543
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g246781246965%_
                                       (cons _%g246779246963%_
                                             (cons _%g246780246964%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251543 _%stx246714%_)))))
                (_%__kont251190251191%_
                 (lambda (_%g246810246866%_
                          _%g246811246867%_
                          _%g246812246868%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self246713%_ _%stx246714%_)))))
            (let ((_%__match251389251390%_
                   (lambda (_%e246783246891%_
                            _%hd246784246894%_
                            _%tl246785246896%_
                            _%e246786246899%_
                            _%hd246787246902%_
                            _%tl246788246904%_
                            _%e246789246907%_
                            _%hd246790246910%_
                            _%tl246791246912%_
                            _%e246792246915%_
                            _%hd246793246918%_
                            _%tl246794246920%_
                            _%e246795246923%_
                            _%hd246796246926%_
                            _%tl246797246928%_
                            _%e246798246931%_
                            _%hd246799246934%_
                            _%tl246800246936%_
                            _%e246801246939%_
                            _%hd246802246942%_
                            _%tl246803246944%_
                            _%e246804246947%_
                            _%hd246805246950%_
                            _%tl246806246952%_
                            _%e246807246955%_
                            _%hd246808246958%_
                            _%tl246809246960%_)
                     (let ((_%g246779246963%_ _%hd246808246958%_)
                           (_%g246780246964%_ _%hd246805246950%_)
                           (_%g246781246965%_ _%hd246802246942%_)
                           (_%g246782246966%_ _%hd246799246934%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g246782246966%_ 'not))
                           (_%__kont251188251189%_
                            _%g246779246963%_
                            _%g246780246964%_
                            _%g246781246965%_
                            _%g246782246966%_)
                           (_%__kont251190251191%_
                            _%hd246808246958%_
                            _%hd246805246950%_
                            _%hd246787246902%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx251182251183%_))
                  (let ((_%e246724247213%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx251182251183%_))))
                    (let ((_%tl246726247218%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246724247213%_)))
                          (_%hd246725247216%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246724247213%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246726247218%_))
                          (let ((_%e246727247221%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246726247218%_))))
                            (let ((_%tl246729247226%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246727247221%_)))
                                  (_%hd246728247224%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246727247221%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd246728247224%_))
                                  (let ((_%e246730247229%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd246728247224%_))))
                                    (let ((_%tl246732247234%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246730247229%_)))
                                          (_%hd246731247232%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246730247229%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd246731247232%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd246731247232%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246732247234%_))
                                                  (let ((_%e246733247237%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246732247234%_))))
                                                    (let ((_%tl246735247242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246733247237%_)))
                                                          (_%hd246734247240%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246733247237%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246735247242%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl246729247226%_))
                      (let ((_%e246736247245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246729247226%_))))
                        (let ((_%tl246738247250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246736247245%_)))
                              (_%hd246737247248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246736247245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl246738247250%_))
                              (let ((_%e246739247253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl246738247250%_))))
                                (let ((_%tl246741247258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e246739247253%_)))
                                      (_%hd246740247256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e246739247253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl246741247258%_))
                                      (_%__kont251184251185%_
                                       _%hd246740247256%_
                                       _%hd246737247248%_
                                       _%hd246734247240%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g246719246829%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g246719246829%_)))))
                      (let () (declare (not safe)) (_%g246719246829%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246729247226%_))
                      (let ((_%e246819246850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246729247226%_))))
                        (let ((_%tl246821246855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246819246850%_)))
                              (_%hd246820246853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246819246850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl246821246855%_))
                              (let ((_%e246822246858%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl246821246855%_))))
                                (let ((_%tl246824246863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e246822246858%_)))
                                      (_%hd246823246861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e246822246858%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl246824246863%_))
                                      (_%__kont251190251191%_
                                       _%hd246823246861%_
                                       _%hd246820246853%_
                                       _%hd246728247224%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g246719246829%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g246719246829%_)))))
                      (let () (declare (not safe)) (_%g246719246829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246729247226%_))
                                                      (let ((_%e246819246850%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246729247226%_))))
                (let ((_%tl246821246855%_
                       (let () (declare (not safe)) (##cdr _%e246819246850%_)))
                      (_%hd246820246853%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246819246850%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246821246855%_))
                      (let ((_%e246822246858%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246821246855%_))))
                        (let ((_%tl246824246863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246822246858%_)))
                              (_%hd246823246861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246822246858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246824246863%_))
                              (_%__kont251190251191%_
                               _%hd246823246861%_
                               _%hd246820246853%_
                               _%hd246728247224%_)
                              (let ()
                                (declare (not safe))
                                (_%g246719246829%_)))))
                      (let () (declare (not safe)) (_%g246719246829%_)))))
              (let () (declare (not safe)) (_%g246719246829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd246731247232%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246732247234%_))
                                                      (let ((_%e246755247023%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246732247234%_))))
                (let ((_%tl246757247028%_
                       (let () (declare (not safe)) (##cdr _%e246755247023%_)))
                      (_%hd246756247026%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246755247023%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd246756247026%_))
                      (let ((_%e246758247031%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd246756247026%_))))
                        (let ((_%tl246760247036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246758247031%_)))
                              (_%hd246759247034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246758247031%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd246759247034%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd246759247034%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246760247036%_))
                                      (let ((_%e246761247039%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246760247036%_))))
                                        (let ((_%tl246763247044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246761247039%_)))
                                              (_%hd246762247042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246761247039%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246763247044%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246757247028%_))
                                                  (let ((_%e246764247047%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246757247028%_))))
                                                    (let ((_%tl246766247052%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246764247047%_)))
                                                          (_%hd246765247050%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246764247047%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd246765247050%_))
                                                          (let ((_%e246767247055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd246765247050%_))))
                    (let ((_%tl246769247060%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246767247055%_)))
                          (_%hd246768247058%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246767247055%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd246768247058%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd246768247058%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246769247060%_))
                                  (let ((_%e246770247063%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246769247060%_))))
                                    (let ((_%tl246772247068%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246770247063%_)))
                                          (_%hd246771247066%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246770247063%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246772247068%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246766247052%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246729247226%_))
                                                  (let ((_%e246773247071%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246729247226%_))))
                                                    (let ((_%tl246775247076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246773247071%_)))
                                                          (_%hd246774247074%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246773247071%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246775247076%_))
                                                          (let ((_%e246776247079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246775247076%_))))
                    (let ((_%tl246778247084%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246776247079%_)))
                          (_%hd246777247082%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246776247079%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246778247084%_))
                          (_%__kont251186251187%_
                           _%hd246777247082%_
                           _%hd246774247074%_
                           _%hd246771247066%_
                           _%hd246762247042%_)
                          (let () (declare (not safe)) (_%g246719246829%_)))))
                  (let () (declare (not safe)) (_%g246719246829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246729247226%_))
                                                  (let ((_%e246819246850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246729247226%_))))
                                                    (let ((_%tl246821246855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246819246850%_)))
                                                          (_%hd246820246853%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246819246850%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246821246855%_))
                                                          (let ((_%e246822246858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246821246855%_))))
                    (let ((_%tl246824246863%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246822246858%_)))
                          (_%hd246823246861%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246822246858%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246824246863%_))
                          (_%__kont251190251191%_
                           _%hd246823246861%_
                           _%hd246820246853%_
                           _%hd246728247224%_)
                          (let () (declare (not safe)) (_%g246719246829%_)))))
                  (let () (declare (not safe)) (_%g246719246829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246766247052%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246729247226%_))
                                                  (let ((_%e246804246947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246729247226%_))))
                                                    (let ((_%tl246806246952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246804246947%_)))
                                                          (_%hd246805246950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246804246947%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246806246952%_))
                                                          (let ((_%e246807246955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246806246952%_))))
                    (let ((_%tl246809246960%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246807246955%_)))
                          (_%hd246808246958%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246807246955%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246809246960%_))
                          (_%__match251389251390%_
                           _%e246724247213%_
                           _%hd246725247216%_
                           _%tl246726247218%_
                           _%e246727247221%_
                           _%hd246728247224%_
                           _%tl246729247226%_
                           _%e246730247229%_
                           _%hd246731247232%_
                           _%tl246732247234%_
                           _%e246755247023%_
                           _%hd246756247026%_
                           _%tl246757247028%_
                           _%e246758247031%_
                           _%hd246759247034%_
                           _%tl246760247036%_
                           _%e246761247039%_
                           _%hd246762247042%_
                           _%tl246763247044%_
                           _%e246764247047%_
                           _%hd246765247050%_
                           _%tl246766247052%_
                           _%e246804246947%_
                           _%hd246805246950%_
                           _%tl246806246952%_
                           _%e246807246955%_
                           _%hd246808246958%_
                           _%tl246809246960%_)
                          (let () (declare (not safe)) (_%g246719246829%_)))))
                  (let () (declare (not safe)) (_%g246719246829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246729247226%_))
                                                  (let ((_%e246819246850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246729247226%_))))
                                                    (let ((_%tl246821246855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246819246850%_)))
                                                          (_%hd246820246853%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246819246850%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246821246855%_))
                                                          (let ((_%e246822246858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246821246855%_))))
                    (let ((_%tl246824246863%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246822246858%_)))
                          (_%hd246823246861%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246822246858%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246824246863%_))
                          (_%__kont251190251191%_
                           _%hd246823246861%_
                           _%hd246820246853%_
                           _%hd246728247224%_)
                          (let () (declare (not safe)) (_%g246719246829%_)))))
                  (let () (declare (not safe)) (_%g246719246829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl246766247052%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246729247226%_))
                                          (let ((_%e246804246947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246729247226%_))))
                                            (let ((_%tl246806246952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246804246947%_)))
                                                  (_%hd246805246950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246804246947%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246806246952%_))
                                                  (let ((_%e246807246955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246806246952%_))))
                                                    (let ((_%tl246809246960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246807246955%_)))
                                                          (_%hd246808246958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246807246955%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246809246960%_))
                                                          (_%__match251389251390%_
                                                           _%e246724247213%_
                                                           _%hd246725247216%_
                                                           _%tl246726247218%_
                                                           _%e246727247221%_
                                                           _%hd246728247224%_
                                                           _%tl246729247226%_
                                                           _%e246730247229%_
                                                           _%hd246731247232%_
                                                           _%tl246732247234%_
                                                           _%e246755247023%_
                                                           _%hd246756247026%_
                                                           _%tl246757247028%_
                                                           _%e246758247031%_
                                                           _%hd246759247034%_
                                                           _%tl246760247036%_
                                                           _%e246761247039%_
                                                           _%hd246762247042%_
                                                           _%tl246763247044%_
                                                           _%e246764247047%_
                                                           _%hd246765247050%_
                                                           _%tl246766247052%_
                                                           _%e246804246947%_
                                                           _%hd246805246950%_
                                                           _%tl246806246952%_
                                                           _%e246807246955%_
                                                           _%hd246808246958%_
                                                           _%tl246809246960%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g246719246829%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246719246829%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246729247226%_))
                                          (let ((_%e246819246850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246729247226%_))))
                                            (let ((_%tl246821246855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246819246850%_)))
                                                  (_%hd246820246853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246819246850%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246821246855%_))
                                                  (let ((_%e246822246858%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246821246855%_))))
                                                    (let ((_%tl246824246863%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246822246858%_)))
                                                          (_%hd246823246861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246822246858%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246824246863%_))
                                                          (_%__kont251190251191%_
                                                           _%hd246823246861%_
                                                           _%hd246820246853%_
                                                           _%hd246728247224%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g246719246829%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246719246829%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl246766247052%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246729247226%_))
                                      (let ((_%e246804246947%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246729247226%_))))
                                        (let ((_%tl246806246952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246804246947%_)))
                                              (_%hd246805246950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246804246947%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246806246952%_))
                                              (let ((_%e246807246955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246806246952%_))))
                                                (let ((_%tl246809246960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246807246955%_)))
                                                      (_%hd246808246958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246807246955%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246809246960%_))
                                                      (_%__match251389251390%_
                                                       _%e246724247213%_
                                                       _%hd246725247216%_
                                                       _%tl246726247218%_
                                                       _%e246727247221%_
                                                       _%hd246728247224%_
                                                       _%tl246729247226%_
                                                       _%e246730247229%_
                                                       _%hd246731247232%_
                                                       _%tl246732247234%_
                                                       _%e246755247023%_
                                                       _%hd246756247026%_
                                                       _%tl246757247028%_
                                                       _%e246758247031%_
                                                       _%hd246759247034%_
                                                       _%tl246760247036%_
                                                       _%e246761247039%_
                                                       _%hd246762247042%_
                                                       _%tl246763247044%_
                                                       _%e246764247047%_
                                                       _%hd246765247050%_
                                                       _%tl246766247052%_
                                                       _%e246804246947%_
                                                       _%hd246805246950%_
                                                       _%tl246806246952%_
                                                       _%e246807246955%_
                                                       _%hd246808246958%_
                                                       _%tl246809246960%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246719246829%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246719246829%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246719246829%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246729247226%_))
                                      (let ((_%e246819246850%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246729247226%_))))
                                        (let ((_%tl246821246855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246819246850%_)))
                                              (_%hd246820246853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246819246850%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246821246855%_))
                                              (let ((_%e246822246858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246821246855%_))))
                                                (let ((_%tl246824246863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246822246858%_)))
                                                      (_%hd246823246861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246822246858%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246824246863%_))
                                                      (_%__kont251190251191%_
                                                       _%hd246823246861%_
                                                       _%hd246820246853%_
                                                       _%hd246728247224%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246719246829%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246719246829%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246719246829%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246766247052%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246729247226%_))
                                  (let ((_%e246804246947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246729247226%_))))
                                    (let ((_%tl246806246952%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246804246947%_)))
                                          (_%hd246805246950%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246804246947%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246806246952%_))
                                          (let ((_%e246807246955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246806246952%_))))
                                            (let ((_%tl246809246960%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246807246955%_)))
                                                  (_%hd246808246958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246807246955%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246809246960%_))
                                                  (_%__match251389251390%_
                                                   _%e246724247213%_
                                                   _%hd246725247216%_
                                                   _%tl246726247218%_
                                                   _%e246727247221%_
                                                   _%hd246728247224%_
                                                   _%tl246729247226%_
                                                   _%e246730247229%_
                                                   _%hd246731247232%_
                                                   _%tl246732247234%_
                                                   _%e246755247023%_
                                                   _%hd246756247026%_
                                                   _%tl246757247028%_
                                                   _%e246758247031%_
                                                   _%hd246759247034%_
                                                   _%tl246760247036%_
                                                   _%e246761247039%_
                                                   _%hd246762247042%_
                                                   _%tl246763247044%_
                                                   _%e246764247047%_
                                                   _%hd246765247050%_
                                                   _%tl246766247052%_
                                                   _%e246804246947%_
                                                   _%hd246805246950%_
                                                   _%tl246806246952%_
                                                   _%e246807246955%_
                                                   _%hd246808246958%_
                                                   _%tl246809246960%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246719246829%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246719246829%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246729247226%_))
                                  (let ((_%e246819246850%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246729247226%_))))
                                    (let ((_%tl246821246855%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246819246850%_)))
                                          (_%hd246820246853%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246819246850%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246821246855%_))
                                          (let ((_%e246822246858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246821246855%_))))
                                            (let ((_%tl246824246863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246822246858%_)))
                                                  (_%hd246823246861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246822246858%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246824246863%_))
                                                  (_%__kont251190251191%_
                                                   _%hd246823246861%_
                                                   _%hd246820246853%_
                                                   _%hd246728247224%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246719246829%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246719246829%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl246766247052%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246729247226%_))
                          (let ((_%e246804246947%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246729247226%_))))
                            (let ((_%tl246806246952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246804246947%_)))
                                  (_%hd246805246950%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246804246947%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246806246952%_))
                                  (let ((_%e246807246955%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246806246952%_))))
                                    (let ((_%tl246809246960%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246807246955%_)))
                                          (_%hd246808246958%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246807246955%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246809246960%_))
                                          (_%__match251389251390%_
                                           _%e246724247213%_
                                           _%hd246725247216%_
                                           _%tl246726247218%_
                                           _%e246727247221%_
                                           _%hd246728247224%_
                                           _%tl246729247226%_
                                           _%e246730247229%_
                                           _%hd246731247232%_
                                           _%tl246732247234%_
                                           _%e246755247023%_
                                           _%hd246756247026%_
                                           _%tl246757247028%_
                                           _%e246758247031%_
                                           _%hd246759247034%_
                                           _%tl246760247036%_
                                           _%e246761247039%_
                                           _%hd246762247042%_
                                           _%tl246763247044%_
                                           _%e246764247047%_
                                           _%hd246765247050%_
                                           _%tl246766247052%_
                                           _%e246804246947%_
                                           _%hd246805246950%_
                                           _%tl246806246952%_
                                           _%e246807246955%_
                                           _%hd246808246958%_
                                           _%tl246809246960%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g246719246829%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246719246829%_)))))
                          (let () (declare (not safe)) (_%g246719246829%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246729247226%_))
                          (let ((_%e246819246850%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246729247226%_))))
                            (let ((_%tl246821246855%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246819246850%_)))
                                  (_%hd246820246853%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246819246850%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246821246855%_))
                                  (let ((_%e246822246858%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246821246855%_))))
                                    (let ((_%tl246824246863%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246822246858%_)))
                                          (_%hd246823246861%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246822246858%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246824246863%_))
                                          (_%__kont251190251191%_
                                           _%hd246823246861%_
                                           _%hd246820246853%_
                                           _%hd246728247224%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g246719246829%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246719246829%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g246719246829%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246729247226%_))
                                                      (let ((_%e246819246850%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246729247226%_))))
                (let ((_%tl246821246855%_
                       (let () (declare (not safe)) (##cdr _%e246819246850%_)))
                      (_%hd246820246853%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246819246850%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246821246855%_))
                      (let ((_%e246822246858%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246821246855%_))))
                        (let ((_%tl246824246863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246822246858%_)))
                              (_%hd246823246861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246822246858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246824246863%_))
                              (_%__kont251190251191%_
                               _%hd246823246861%_
                               _%hd246820246853%_
                               _%hd246728247224%_)
                              (let ()
                                (declare (not safe))
                                (_%g246719246829%_)))))
                      (let () (declare (not safe)) (_%g246719246829%_)))))
              (let () (declare (not safe)) (_%g246719246829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246729247226%_))
                                                  (let ((_%e246819246850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246729247226%_))))
                                                    (let ((_%tl246821246855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246819246850%_)))
                                                          (_%hd246820246853%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246819246850%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246821246855%_))
                                                          (let ((_%e246822246858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246821246855%_))))
                    (let ((_%tl246824246863%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246822246858%_)))
                          (_%hd246823246861%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246822246858%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246824246863%_))
                          (_%__kont251190251191%_
                           _%hd246823246861%_
                           _%hd246820246853%_
                           _%hd246728247224%_)
                          (let () (declare (not safe)) (_%g246719246829%_)))))
                  (let () (declare (not safe)) (_%g246719246829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246729247226%_))
                                          (let ((_%e246819246850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246729247226%_))))
                                            (let ((_%tl246821246855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246819246850%_)))
                                                  (_%hd246820246853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246819246850%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246821246855%_))
                                                  (let ((_%e246822246858%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246821246855%_))))
                                                    (let ((_%tl246824246863%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246822246858%_)))
                                                          (_%hd246823246861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246822246858%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246824246863%_))
                                                          (_%__kont251190251191%_
                                                           _%hd246823246861%_
                                                           _%hd246820246853%_
                                                           _%hd246728247224%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g246719246829%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246719246829%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246729247226%_))
                                      (let ((_%e246819246850%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246729247226%_))))
                                        (let ((_%tl246821246855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246819246850%_)))
                                              (_%hd246820246853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246819246850%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246821246855%_))
                                              (let ((_%e246822246858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246821246855%_))))
                                                (let ((_%tl246824246863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246822246858%_)))
                                                      (_%hd246823246861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246822246858%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246824246863%_))
                                                      (_%__kont251190251191%_
                                                       _%hd246823246861%_
                                                       _%hd246820246853%_
                                                       _%hd246728247224%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246719246829%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246719246829%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246719246829%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246729247226%_))
                                  (let ((_%e246819246850%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246729247226%_))))
                                    (let ((_%tl246821246855%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246819246850%_)))
                                          (_%hd246820246853%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246819246850%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246821246855%_))
                                          (let ((_%e246822246858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246821246855%_))))
                                            (let ((_%tl246824246863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246822246858%_)))
                                                  (_%hd246823246861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246822246858%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246824246863%_))
                                                  (_%__kont251190251191%_
                                                   _%hd246823246861%_
                                                   _%hd246820246853%_
                                                   _%hd246728247224%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246719246829%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246719246829%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246719246829%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246729247226%_))
                          (let ((_%e246819246850%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246729247226%_))))
                            (let ((_%tl246821246855%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246819246850%_)))
                                  (_%hd246820246853%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246819246850%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246821246855%_))
                                  (let ((_%e246822246858%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246821246855%_))))
                                    (let ((_%tl246824246863%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246822246858%_)))
                                          (_%hd246823246861%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246822246858%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246824246863%_))
                                          (_%__kont251190251191%_
                                           _%hd246823246861%_
                                           _%hd246820246853%_
                                           _%hd246728247224%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g246719246829%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246719246829%_)))))
                          (let () (declare (not safe)) (_%g246719246829%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl246729247226%_))
                  (let ((_%e246819246850%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246729247226%_))))
                    (let ((_%tl246821246855%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246819246850%_)))
                          (_%hd246820246853%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246819246850%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246821246855%_))
                          (let ((_%e246822246858%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246821246855%_))))
                            (let ((_%tl246824246863%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246822246858%_)))
                                  (_%hd246823246861%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246822246858%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl246824246863%_))
                                  (_%__kont251190251191%_
                                   _%hd246823246861%_
                                   _%hd246820246853%_
                                   _%hd246728247224%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g246719246829%_)))))
                          (let () (declare (not safe)) (_%g246719246829%_)))))
                  (let () (declare (not safe)) (_%g246719246829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246729247226%_))
                                                      (let ((_%e246819246850%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246729247226%_))))
                (let ((_%tl246821246855%_
                       (let () (declare (not safe)) (##cdr _%e246819246850%_)))
                      (_%hd246820246853%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246819246850%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246821246855%_))
                      (let ((_%e246822246858%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246821246855%_))))
                        (let ((_%tl246824246863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246822246858%_)))
                              (_%hd246823246861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246822246858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246824246863%_))
                              (_%__kont251190251191%_
                               _%hd246823246861%_
                               _%hd246820246853%_
                               _%hd246728247224%_)
                              (let ()
                                (declare (not safe))
                                (_%g246719246829%_)))))
                      (let () (declare (not safe)) (_%g246719246829%_)))))
              (let () (declare (not safe)) (_%g246719246829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246729247226%_))
                                              (let ((_%e246819246850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246729247226%_))))
                                                (let ((_%tl246821246855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246819246850%_)))
                                                      (_%hd246820246853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246819246850%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246821246855%_))
                                                      (let ((_%e246822246858%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246821246855%_))))
                (let ((_%tl246824246863%_
                       (let () (declare (not safe)) (##cdr _%e246822246858%_)))
                      (_%hd246823246861%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246822246858%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl246824246863%_))
                      (_%__kont251190251191%_
                       _%hd246823246861%_
                       _%hd246820246853%_
                       _%hd246728247224%_)
                      (let () (declare (not safe)) (_%g246719246829%_)))))
              (let () (declare (not safe)) (_%g246719246829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g246719246829%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246729247226%_))
                                      (let ((_%e246819246850%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246729247226%_))))
                                        (let ((_%tl246821246855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246819246850%_)))
                                              (_%hd246820246853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246819246850%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246821246855%_))
                                              (let ((_%e246822246858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246821246855%_))))
                                                (let ((_%tl246824246863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246822246858%_)))
                                                      (_%hd246823246861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246822246858%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246824246863%_))
                                                      (_%__kont251190251191%_
                                                       _%hd246823246861%_
                                                       _%hd246820246853%_
                                                       _%hd246728247224%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246719246829%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246719246829%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246719246829%_))))))
                          (let () (declare (not safe)) (_%g246719246829%_)))))
                  (let () (declare (not safe)) (_%g246719246829%_))))))))))
