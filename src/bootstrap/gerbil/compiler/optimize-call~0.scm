(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712786285)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp192262 (list gxc#::basic-xform::t))
            (__tmp192261 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp192262
         '()
         __tmp192261
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args191797%_
        (apply make-instance gxc#::optimize-call::t _%$args191797%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp192263
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
        (__make-promise __tmp192263)))
    (define gxc#apply-optimize-call
      (lambda (_%stx191789%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self191792%_
                (let ((__obj192253
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj192253))
               (__tmp192264
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self191792%_ _%stx191789%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp192264
           gxc#current-compile-method
           _%self191792%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp192266 (list gxc#::void::t))
            (__tmp192265 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp192266
         '()
         __tmp192265
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args191786%_
        (apply make-instance gxc#::check-return-type::t _%$args191786%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp192267
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
        (__make-promise __tmp192267)))
    (define gxc#apply-check-return-type
      (lambda (_%stx191778%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self191781%_
                (let ((__obj192255
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj192255))
               (__tmp192268
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self191781%_ _%stx191778%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp192268
           gxc#current-compile-method
           _%self191781%_))))
    (define gxc#optimize-call%
      (lambda (_%self191379%_ _%stx191380%_)
        (let* ((_%__stx191866191867%_ _%stx191380%_)
               (_%g191383191429%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191866191867%_)))))
          (let ((_%__kont191868191869%_
                 (lambda (_%L191572%_ _%L191573%_)
                   (let* ((_%rator-id191593%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L191573%_)))
                          (_%rator-type191595%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id191593%_))))
                     (if (or (not _%rator-type191595%_)
                             (eq? (##structure-ref
                                   _%rator-type191595%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self191379%_ _%stx191380%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type191595%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp192269
                                      (##structure-ref
                                       _%rator-type191595%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id191593%_
                                  '" => "
                                  _%rator-type191595%_
                                  '" "
                                  __tmp192269))
                               (let* ((_%optimized191610%_
                                       (let ((__method192256
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type191595%_
                                                 'optimize-call))))
                                         (if __method192256
                                             (let ((__tmp192270
                                                    (let ((__tmp192271
                                                           (lambda (_%g191602191605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g191603191607%_)
                     (cons _%g191602191605%_ _%g191603191607%_))))
              (declare (not safe))
              (__foldr1 __tmp192271 '() _%L191572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method192256
                                                _%rator-type191595%_
                                                _%self191379%_
                                                _%stx191380%_
                                                __tmp192270))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type191595%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx191814191815%_
                                       _%optimized191610%_)
                                      (_%g191613191642%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx191814191815%_)))))
                                 (let ((_%__kont191816191817%_
                                        (lambda (_%L191710%_ _%L191711%_)
                                          (let* ((_%optimized-rator-id191738%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L191711%_)))
                                                 (_%rator-type191743%_
                                                  (let ((_%$e191740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id191738%_))))
                                                    (if _%$e191740%_
                                                        _%$e191740%_
                                                        _%rator-type191595%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type191743%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id191738%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type191743%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type191743%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized191610%_
                                                (let ((__tmp192272
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L191711%_ '()))
                           (let ((__tmp192273
                                  (lambda (_%g191751191754%_ _%g191752191756%_)
                                    (cons _%g191751191754%_
                                          _%g191752191756%_))))
                             (declare (not safe))
                             (__foldr1 __tmp192273 '() _%L191710%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp192272
                                                   _%stx191380%_))))))
                                       (_%__kont191820191821%_
                                        (lambda () _%optimized191610%_)))
                                   (let ((_%__match191863191864%_
                                          (lambda (_%e191617191654%_
                                                   _%hd191618191657%_
                                                   _%tl191619191659%_
                                                   _%e191620191662%_
                                                   _%hd191621191665%_
                                                   _%tl191622191667%_
                                                   _%e191623191670%_
                                                   _%hd191624191673%_
                                                   _%tl191625191675%_
                                                   _%e191626191678%_
                                                   _%hd191627191681%_
                                                   _%tl191628191683%_
                                                   _%__splice191818191819%_
                                                   _%target191629191686%_
                                                   _%tl191631191688%_)
                                            (letrec ((_%loop191632191691%_
                                                      (lambda (_%hd191630191694%_
                                                               _%arg191636191696%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd191630191694%_))
                                                            (let ((_%e191633191699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd191630191694%_))))
                      (let ((_%lp-tl191635191704%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191633191699%_)))
                            (_%lp-hd191634191702%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191633191699%_))))
                        (_%loop191632191691%_
                         _%lp-tl191635191704%_
                         (cons _%lp-hd191634191702%_ _%arg191636191696%_))))
                    (let ((_%arg191637191707%_ (reverse _%arg191636191696%_)))
                      (_%__kont191816191817%_
                       _%arg191637191707%_
                       _%hd191627191681%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop191632191691%_
                                               _%target191629191686%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx191814191815%_))
                                         (let ((_%e191617191654%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx191814191815%_))))
                                           (let ((_%tl191619191659%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e191617191654%_)))
                                                 (_%hd191618191657%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e191617191654%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd191618191657%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd191618191657%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl191619191659%_))
                                                         (let ((_%e191620191662%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl191619191659%_))))
                   (let ((_%tl191622191667%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e191620191662%_)))
                         (_%hd191621191665%_
                          (let ()
                            (declare (not safe))
                            (##car _%e191620191662%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd191621191665%_))
                         (let ((_%e191623191670%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd191621191665%_))))
                           (let ((_%tl191625191675%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e191623191670%_)))
                                 (_%hd191624191673%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e191623191670%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd191624191673%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd191624191673%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl191625191675%_))
                                         (let ((_%e191626191678%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl191625191675%_))))
                                           (let ((_%tl191628191683%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e191626191678%_)))
                                                 (_%hd191627191681%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e191626191678%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl191628191683%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl191622191667%_))
                                                     (let ((_%__splice191818191819%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl191622191667%_
                                                               '0))))
                                                       (let ((_%tl191631191688%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice191818191819%_ '1)))
                     (_%target191629191686%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice191818191819%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl191631191688%_))
                     (_%__match191863191864%_
                      _%e191617191654%_
                      _%hd191618191657%_
                      _%tl191619191659%_
                      _%e191620191662%_
                      _%hd191621191665%_
                      _%tl191622191667%_
                      _%e191623191670%_
                      _%hd191624191673%_
                      _%tl191625191675%_
                      _%e191626191678%_
                      _%hd191627191681%_
                      _%tl191628191683%_
                      _%__splice191818191819%_
                      _%target191629191686%_
                      _%tl191631191688%_)
                     (_%__kont191820191821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191820191821%_))
                                                 (_%__kont191820191821%_))))
                                         (_%__kont191820191821%_))
                                     (_%__kont191820191821%_))
                                 (_%__kont191820191821%_))))
                         (_%__kont191820191821%_))))
                 (_%__kont191820191821%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191820191821%_))
                                                 (_%__kont191820191821%_))))
                                         (_%__kont191820191821%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type191595%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type191595%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp192274
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L191573%_
                                                                '()))
                                                    (map (lambda (_%g191762191764%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self191379%_
                                                              _%g191762191764%_)))
                                                         (let ((__tmp192275
                                                                (lambda (_%g191766191769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g191767191771%_)
                          (cons _%g191766191769%_ _%g191767191771%_))))
                   (declare (not safe))
                   (__foldr1 __tmp192275 '() _%L191572%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp192274
                                    _%stx191380%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx191380%_
                                    _%rator-type191595%_))))))))
                (_%__kont191872191873%_
                 (lambda (_%L191474%_ _%L191475%_)
                   (let ((_%rator-type191492%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L191475%_))))
                     (if (and _%rator-type191492%_
                              (eq? (##structure-ref
                                    _%rator-type191492%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type191492%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type191492%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type191492%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp192276
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self191379%_
                                               _%L191475%_))
                                            (map (lambda (_%g191494191496%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self191379%_
                                                      _%g191494191496%_)))
                                                 (let ((__tmp192277
                                                        (lambda (_%g191498191501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g191499191503%_)
                  (cons _%g191498191501%_ _%g191499191503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp192277
                                                    '()
                                                    _%L191474%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp192276 _%stx191380%_))
                         (if (or (not _%rator-type191492%_)
                                 (let ((__tmp192278
                                        (##structure-ref
                                         _%rator-type191492%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp192278 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self191379%_ _%stx191380%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx191380%_
                                _%rator-type191492%_))))))))
            (let* ((_%__match191933191934%_
                    (lambda (_%e191410191434%_
                             _%hd191411191437%_
                             _%tl191412191439%_
                             _%e191413191442%_
                             _%hd191414191445%_
                             _%tl191415191447%_
                             _%__splice191874191875%_
                             _%target191416191450%_
                             _%tl191418191452%_)
                      (letrec ((_%loop191419191455%_
                                (lambda (_%hd191417191458%_
                                         _%rand191423191460%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd191417191458%_))
                                      (let ((_%e191420191463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd191417191458%_))))
                                        (let ((_%lp-tl191422191468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191420191463%_)))
                                              (_%lp-hd191421191466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191420191463%_))))
                                          (_%loop191419191455%_
                                           _%lp-tl191422191468%_
                                           (cons _%lp-hd191421191466%_
                                                 _%rand191423191460%_))))
                                      (let ((_%rand191424191471%_
                                             (reverse _%rand191423191460%_)))
                                        (_%__kont191872191873%_
                                         _%rand191424191471%_
                                         _%hd191414191445%_))))))
                        (_%loop191419191455%_ _%target191416191450%_ '()))))
                   (_%__match191913191914%_
                    (lambda (_%e191387191516%_
                             _%hd191388191519%_
                             _%tl191389191521%_
                             _%e191390191524%_
                             _%hd191391191527%_
                             _%tl191392191529%_
                             _%e191393191532%_
                             _%hd191394191535%_
                             _%tl191395191537%_
                             _%e191396191540%_
                             _%hd191397191543%_
                             _%tl191398191545%_
                             _%__splice191870191871%_
                             _%target191399191548%_
                             _%tl191401191550%_)
                      (letrec ((_%loop191402191553%_
                                (lambda (_%hd191400191556%_
                                         _%rand191406191558%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd191400191556%_))
                                      (let ((_%e191403191561%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd191400191556%_))))
                                        (let ((_%lp-tl191405191566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191403191561%_)))
                                              (_%lp-hd191404191564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191403191561%_))))
                                          (_%loop191402191553%_
                                           _%lp-tl191405191566%_
                                           (cons _%lp-hd191404191564%_
                                                 _%rand191406191558%_))))
                                      (let ((_%rand191407191569%_
                                             (reverse _%rand191406191558%_)))
                                        (_%__kont191868191869%_
                                         _%rand191407191569%_
                                         _%hd191397191543%_))))))
                        (_%loop191402191553%_ _%target191399191548%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191866191867%_))
                  (let ((_%e191387191516%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191866191867%_))))
                    (let ((_%tl191389191521%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191387191516%_)))
                          (_%hd191388191519%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191387191516%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191389191521%_))
                          (let ((_%e191390191524%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191389191521%_))))
                            (let ((_%tl191392191529%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191390191524%_)))
                                  (_%hd191391191527%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191390191524%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191391191527%_))
                                  (let ((_%e191393191532%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191391191527%_))))
                                    (let ((_%tl191395191537%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191393191532%_)))
                                          (_%hd191394191535%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191393191532%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191394191535%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd191394191535%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191395191537%_))
                                                  (let ((_%e191396191540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191395191537%_))))
                                                    (let ((_%tl191398191545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191396191540%_)))
                                                          (_%hd191397191543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191396191540%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191398191545%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl191392191529%_))
                      (let ((_%__splice191870191871%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl191392191529%_
                                '0))))
                        (let ((_%tl191401191550%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191870191871%_ '1)))
                              (_%target191399191548%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191870191871%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191401191550%_))
                              (_%__match191913191914%_
                               _%e191387191516%_
                               _%hd191388191519%_
                               _%tl191389191521%_
                               _%e191390191524%_
                               _%hd191391191527%_
                               _%tl191392191529%_
                               _%e191393191532%_
                               _%hd191394191535%_
                               _%tl191395191537%_
                               _%e191396191540%_
                               _%hd191397191543%_
                               _%tl191398191545%_
                               _%__splice191870191871%_
                               _%target191399191548%_
                               _%tl191401191550%_)
                              (let ()
                                (declare (not safe))
                                (_%g191383191429%_)))))
                      (let () (declare (not safe)) (_%g191383191429%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl191392191529%_))
                      (let ((_%__splice191874191875%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl191392191529%_
                                '0))))
                        (let ((_%tl191418191452%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191874191875%_ '1)))
                              (_%target191416191450%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191874191875%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191418191452%_))
                              (_%__match191933191934%_
                               _%e191387191516%_
                               _%hd191388191519%_
                               _%tl191389191521%_
                               _%e191390191524%_
                               _%hd191391191527%_
                               _%tl191392191529%_
                               _%__splice191874191875%_
                               _%target191416191450%_
                               _%tl191418191452%_)
                              (let ()
                                (declare (not safe))
                                (_%g191383191429%_)))))
                      (let () (declare (not safe)) (_%g191383191429%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl191392191529%_))
                                                      (let ((_%__splice191874191875%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl191392191529%_ '0))))
                (let ((_%tl191418191452%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice191874191875%_ '1)))
                      (_%target191416191450%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice191874191875%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191418191452%_))
                      (_%__match191933191934%_
                       _%e191387191516%_
                       _%hd191388191519%_
                       _%tl191389191521%_
                       _%e191390191524%_
                       _%hd191391191527%_
                       _%tl191392191529%_
                       _%__splice191874191875%_
                       _%target191416191450%_
                       _%tl191418191452%_)
                      (let () (declare (not safe)) (_%g191383191429%_)))))
              (let () (declare (not safe)) (_%g191383191429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl191392191529%_))
                                                  (let ((_%__splice191874191875%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl191392191529%_
                                                            '0))))
                                                    (let ((_%tl191418191452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191874191875%_
                                                              '1)))
                                                          (_%target191416191450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191874191875%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191418191452%_))
                                                          (_%__match191933191934%_
                                                           _%e191387191516%_
                                                           _%hd191388191519%_
                                                           _%tl191389191521%_
                                                           _%e191390191524%_
                                                           _%hd191391191527%_
                                                           _%tl191392191529%_
                                                           _%__splice191874191875%_
                                                           _%target191416191450%_
                                                           _%tl191418191452%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191383191429%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191383191429%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl191392191529%_))
                                              (let ((_%__splice191874191875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl191392191529%_
                                                        '0))))
                                                (let ((_%tl191418191452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice191874191875%_
                                                          '1)))
                                                      (_%target191416191450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice191874191875%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191418191452%_))
                                                      (_%__match191933191934%_
                                                       _%e191387191516%_
                                                       _%hd191388191519%_
                                                       _%tl191389191521%_
                                                       _%e191390191524%_
                                                       _%hd191391191527%_
                                                       _%tl191392191529%_
                                                       _%__splice191874191875%_
                                                       _%target191416191450%_
                                                       _%tl191418191452%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191383191429%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191383191429%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl191392191529%_))
                                      (let ((_%__splice191874191875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl191392191529%_
                                                '0))))
                                        (let ((_%tl191418191452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191874191875%_
                                                  '1)))
                                              (_%target191416191450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191874191875%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191418191452%_))
                                              (_%__match191933191934%_
                                               _%e191387191516%_
                                               _%hd191388191519%_
                                               _%tl191389191521%_
                                               _%e191390191524%_
                                               _%hd191391191527%_
                                               _%tl191392191529%_
                                               _%__splice191874191875%_
                                               _%target191416191450%_
                                               _%tl191418191452%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g191383191429%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191383191429%_))))))
                          (let () (declare (not safe)) (_%g191383191429%_)))))
                  (let () (declare (not safe)) (_%g191383191429%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self188332191339%_ _%ctx191341%_ _%stx191342%_ _%args191343%_)
        (let* ((_%self191345%_ _%self188332191339%_)
               (_%self191347%_ _%self191345%_))
          (if (let ((__method192257
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self191347%_ 'check-arguments))))
                (if __method192257
                    (let ()
                      (declare (not safe))
                      (__method192257
                       _%self191347%_
                       _%ctx191341%_
                       _%stx191342%_
                       _%args191343%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self191347%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature191357%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191347%_ '2 '#f '#f)))
                     (_%signature191359%_ _%signature191357%_)
                     (_%$e191369%_
                      (if _%signature191359%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature191359%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e191369%_
                    ((lambda (_%unchecked191372%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked191372%_))
                           (let ((__tmp192279
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked191372%_
                                                          '()))
                                              (map (lambda (_%g191373191375%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx191341%_
                                                        _%g191373191375%_)))
                                                   _%args191343%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp192279 _%stx191342%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx191341%_ _%stx191342%_))))
                     _%$e191369%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx191341%_ _%stx191342%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx191341%_ _%stx191342%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass191799 __method-table191800)
        (let ((__check-arguments191801
               (let ((__tmp192280
                      (lambda ()
                        (let ((__method191802
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table191800
                                  'check-arguments
                                  '#f))))
                          (if __method191802
                              __method191802
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp192280))))
          (lambda (_%self188332191339%_
                   _%ctx191341%_
                   _%stx191342%_
                   _%args191343%_)
            (let* ((_%self191345%_ _%self188332191339%_)
                   (_%self191347%_ _%self191345%_))
              (if ((force __check-arguments191801)
                   _%self191347%_
                   _%ctx191341%_
                   _%stx191342%_
                   _%args191343%_)
                  (let* ((_%signature191357%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191347%_
                             '2
                             '#f
                             '#f)))
                         (_%signature191359%_ _%signature191357%_)
                         (_%$e191369%_
                          (if _%signature191359%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature191359%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e191369%_
                        ((lambda (_%unchecked191372%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked191372%_))
                               (let ((__tmp192281
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked191372%_
                                                              '()))
                                                  (map (lambda (_%g191373191375%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx191341%_
                                                            _%g191373191375%_)))
                                                       _%args191343%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp192281
                                  _%stx191342%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx191341%_
                                  _%stx191342%_))))
                         _%$e191369%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx191341%_ _%stx191342%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx191341%_ _%stx191342%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188333191088%_ _%ctx191090%_ _%stx191091%_ _%args191092%_)
        (let* ((_%self191094%_ _%self188333191088%_)
               (_%self191096%_ _%self191094%_)
               (_%signature191105191107%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191096%_ '2 '#f '#f))))
          (if _%signature191105191107%_
              (let* ((_%signature191110%_ _%signature191105191107%_)
                     (_%argument-types191111191113%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature191110%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types191111191113%_
                    (let* ((_%argument-types191116%_
                            _%argument-types191111191113%_)
                           (_%argument-types191121%_
                            (let ((__tmp192282
                                   (lambda (_%t191119%_)
                                     (if _%t191119%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx191091%_
                                            _%t191119%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp192282
                               _%argument-types191116%_))))
                      (let _%loop191123%_ ((_%rest-args191125%_ _%args191092%_)
                                           (_%rest-types191126%_
                                            _%argument-types191121%_)
                                           (_%result191127%_ '#t))
                        (let* ((_%rest-args191128191136%_ _%rest-args191125%_)
                               (_%else191130191144%_
                                (lambda () _%result191127%_))
                               (_%K191132191205%_
                                (lambda (_%rest-args191147%_ _%arg191148%_)
                                  (let* ((_%rest-types191149191160%_
                                          _%rest-types191126%_)
                                         (_%E191153191164%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types191149191160%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K191156191193%_
                                           (lambda (_%rest-types191190%_
                                                    _%type191191%_)
                                             (_%loop191123%_
                                              _%rest-args191147%_
                                              _%rest-types191190%_
                                              (if (gxc#check-expression-type!
                                                   _%stx191091%_
                                                   _%arg191148%_
                                                   _%type191191%_)
                                                  _%result191127%_
                                                  '#f))))
                                          (_%K191155191184%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx191091%_
                                                _%argument-types191121%_))))
                                          (_%K191154191174%_
                                           (lambda (_%tail-type191168%_)
                                             (if (let ((__tmp192283
                                                        (lambda (_%g191169191171%_)
                                                          (gxc#check-expression-type!
                                                           _%stx191091%_
                                                           _%g191169191171%_
                                                           _%tail-type191168%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp192283
                                                    _%rest-args191147%_))
                                                 _%result191127%_
                                                 '#f))))
                                      (let ((_%try-match191151191187%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types191149191160%_))
                                                   (_%K191155191184%_)
                                                   (let ((_%tail-type191177%_
                                                          _%rest-types191149191160%_))
                                                     (_%K191154191174%_
                                                      _%tail-type191177%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types191149191160%_))
                                            (let ((_%tl191158191198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types191149191160%_)))
                                                  (_%hd191157191196%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types191149191160%_))))
                                              (let ((_%type191201%_
                                                     _%hd191157191196%_)
                                                    (_%rest-types191203%_
                                                     _%tl191158191198%_))
                                                (_%K191156191193%_
                                                 _%rest-types191203%_
                                                 _%type191201%_)))
                                            (_%try-match191151191187%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args191128191136%_))
                              (let ((_%hd191133191208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args191128191136%_)))
                                    (_%tl191134191210%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args191128191136%_))))
                                (let* ((_%arg191213%_ _%hd191133191208%_)
                                       (_%rest-args191215%_
                                        _%tl191134191210%_))
                                  (_%K191132191205%_
                                   _%rest-args191215%_
                                   _%arg191213%_)))
                              (_%else191130191144%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self188334190897%_ _%ctx190899%_ _%stx190900%_ _%args190901%_)
        (let* ((_%self190903%_ _%self188334190897%_)
               (_%self190905%_ _%self190903%_)
               (_%g190915190925%_
                (lambda (_%g190916190922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190916190922%_))))
               (_%g190914190963%_
                (lambda (_%g190916190928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190916190928%_))
                      (let ((_%e190918190930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190916190928%_))))
                        (let ((_%hd190919190933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190918190930%_)))
                              (_%tl190920190935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190918190930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190920190935%_))
                              ((lambda (_%L190938%_)
                                 (let* ((_%klass190950%_
                                         (let ((__tmp192284
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self190905%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx190900%_
                                            __tmp192284)))
                                        (_%object190952%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx190899%_
                                            _%L190938%_)))
                                        (_%instance?190957%_
                                         (let ((_%$e190954%_
                                                (gxc#expression-type?
                                                 _%object190952%_
                                                 _%klass190950%_)))
                                           (if _%$e190954%_
                                               _%$e190954%_
                                               (gxc#expression-type?
                                                _%L190938%_
                                                _%klass190950%_)))))
                                   (if _%instance?190957%_
                                       (let ((__tmp192285
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object190952%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L190938%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object190952%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192285
                                          _%stx190900%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx190899%_
                                          _%stx190900%_)))))
                               _%hd190919190933%_)
                              (_%g190915190925%_ _%g190916190928%_))))
                      (_%g190915190925%_ _%g190916190928%_)))))
          (_%g190914190963%_ _%args190901%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188335190691%_ _%ctx190693%_ _%stx190694%_ _%args190695%_)
        (let* ((_%self190697%_ _%self188335190691%_)
               (_%self190699%_ _%self190697%_)
               (_%g190709190719%_
                (lambda (_%g190710190716%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190710190716%_))))
               (_%g190708190772%_
                (lambda (_%g190710190722%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190710190722%_))
                      (let ((_%e190712190724%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190710190722%_))))
                        (let ((_%hd190713190727%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190712190724%_)))
                              (_%tl190714190729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190712190724%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190714190729%_))
                              ((lambda (_%L190732%_)
                                 (let* ((_%klass190744%_
                                         (let ((__tmp192286
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self190699%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx190694%_
                                            __tmp192286)))
                                        (_%object190746%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx190693%_
                                            _%L190732%_)))
                                        (_%instance?190751%_
                                         (let ((_%$e190748%_
                                                (gxc#expression-type?
                                                 _%object190746%_
                                                 _%klass190744%_)))
                                           (if _%$e190748%_
                                               _%$e190748%_
                                               (gxc#expression-type?
                                                _%L190732%_
                                                _%klass190744%_))))
                                        (_%klass190754%_ _%klass190744%_))
                                   (if _%instance?190751%_
                                       (let ((__tmp192287
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object190746%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L190732%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object190746%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192287
                                          _%stx190694%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass190754%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp192288
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass190754%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object190746%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp192288
                                              _%stx190694%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass190754%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp192289
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass190754%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object190746%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp192289
                                                  _%stx190694%_))
                                               (let ((__tmp192290
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self190699%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object190746%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp192290
                                                  _%stx190694%_)))))))
                               _%hd190713190727%_)
                              (_%g190709190719%_ _%g190710190722%_))))
                      (_%g190709190719%_ _%g190710190722%_)))))
          (_%g190708190772%_ _%args190695%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx190354%_)
        (let* ((_%__stx191943191944%_ _%stx190354%_)
               (_%g190359190400%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191943191944%_)))))
          (let ((_%__kont191945191946%_ (lambda () '#t))
                (_%__kont191947191948%_ (lambda () '#t))
                (_%__kont191949191950%_
                 (lambda (_%L190468%_ _%L190469%_)
                   (let ((_%rator-type190490190492%_
                          (let ((__tmp192291
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L190469%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp192291))))
                     (if _%rator-type190490190492%_
                         (let* ((_%rator-type190495%_
                                 _%rator-type190490190492%_)
                                (_%rator-signature190496190498%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type190495%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type190495%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature190496190498%_
                               (let* ((_%rator-signature190501%_
                                       _%rator-signature190496190498%_)
                                      (_%rator-effect190502190504%_
                                       (if _%rator-signature190501%_
                                           (##direct-structure-ref
                                            _%rator-signature190501%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect190502190504%_
                                     (let ((_%rator-effect190507%_
                                            _%rator-effect190502190504%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect190507%_)
                                               (equal? '(alloc)
                                                       _%rator-effect190507%_))
                                           (let ((__tmp192292
                                                  (let ((__tmp192293
                                                         (lambda (_%g190512190515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g190513190517%_)
                   (cons _%g190512190515%_ _%g190513190517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp192293
                                                     '()
                                                     _%L190468%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp192292))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont191953191954%_ (lambda () '#f)))
            (let ((_%__match192032192033%_
                   (lambda (_%e190375190412%_
                            _%hd190376190415%_
                            _%tl190377190417%_
                            _%e190378190420%_
                            _%hd190379190423%_
                            _%tl190380190425%_
                            _%e190381190428%_
                            _%hd190382190431%_
                            _%tl190383190433%_
                            _%e190384190436%_
                            _%hd190385190439%_
                            _%tl190386190441%_
                            _%__splice191951191952%_
                            _%target190387190444%_
                            _%tl190389190446%_)
                     (letrec ((_%loop190390190449%_
                               (lambda (_%hd190388190452%_
                                        _%rand190394190454%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd190388190452%_))
                                     (let ((_%e190391190457%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd190388190452%_))))
                                       (let ((_%lp-tl190393190462%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e190391190457%_)))
                                             (_%lp-hd190392190460%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e190391190457%_))))
                                         (_%loop190390190449%_
                                          _%lp-tl190393190462%_
                                          (cons _%lp-hd190392190460%_
                                                _%rand190394190454%_))))
                                     (let ((_%rand190395190465%_
                                            (reverse _%rand190394190454%_)))
                                       (_%__kont191949191950%_
                                        _%rand190395190465%_
                                        _%hd190385190439%_))))))
                       (_%loop190390190449%_ _%target190387190444%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191943191944%_))
                  (let ((_%e190361190548%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191943191944%_))))
                    (let ((_%tl190363190553%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190361190548%_)))
                          (_%hd190362190551%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190361190548%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd190362190551%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd190362190551%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190363190553%_))
                                  (let ((_%e190364190556%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190363190553%_))))
                                    (let ((_%tl190366190561%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190364190556%_)))
                                          (_%hd190365190559%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190364190556%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190366190561%_))
                                          (_%__kont191945191946%_)
                                          (_%__kont191953191954%_))))
                                  (_%__kont191953191954%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd190362190551%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190363190553%_))
                                      (let ((_%e190370190533%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190363190553%_))))
                                        (let ((_%tl190372190538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190370190533%_)))
                                              (_%hd190371190536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190370190533%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190372190538%_))
                                              (_%__kont191947191948%_)
                                              (_%__kont191953191954%_))))
                                      (_%__kont191953191954%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd190362190551%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190363190553%_))
                                          (let ((_%e190378190420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190363190553%_))))
                                            (let ((_%tl190380190425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190378190420%_)))
                                                  (_%hd190379190423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190378190420%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd190379190423%_))
                                                  (let ((_%e190381190428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd190379190423%_))))
                                                    (let ((_%tl190383190433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190381190428%_)))
                                                          (_%hd190382190431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190381190428%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd190382190431%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd190382190431%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190383190433%_))
                          (let ((_%e190384190436%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190383190433%_))))
                            (let ((_%tl190386190441%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190384190436%_)))
                                  (_%hd190385190439%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190384190436%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl190386190441%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190380190425%_))
                                      (let ((_%__splice191951191952%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190380190425%_
                                                '0))))
                                        (let ((_%tl190389190446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191951191952%_
                                                  '1)))
                                              (_%target190387190444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191951191952%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190389190446%_))
                                              (_%__match192032192033%_
                                               _%e190361190548%_
                                               _%hd190362190551%_
                                               _%tl190363190553%_
                                               _%e190378190420%_
                                               _%hd190379190423%_
                                               _%tl190380190425%_
                                               _%e190381190428%_
                                               _%hd190382190431%_
                                               _%tl190383190433%_
                                               _%e190384190436%_
                                               _%hd190385190439%_
                                               _%tl190386190441%_
                                               _%__splice191951191952%_
                                               _%target190387190444%_
                                               _%tl190389190446%_)
                                              (_%__kont191953191954%_))))
                                      (_%__kont191953191954%_))
                                  (_%__kont191953191954%_))))
                          (_%__kont191953191954%_))
                      (_%__kont191953191954%_))
                  (_%__kont191953191954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont191953191954%_))))
                                          (_%__kont191953191954%_))
                                      (_%__kont191953191954%_))))
                          (_%__kont191953191954%_))))
                  (_%__kont191953191954%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx190349%_ _%klass190350%_)
        (let ((_%expr-type190352%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx190349%_))))
          (if _%expr-type190352%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type190352%_ _%klass190350%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx190327%_ _%expr190328%_ _%type190329%_)
        (if (not _%type190329%_)
            '#f
            (let ((_%$e190332%_
                   (eq? (##structure-ref _%type190329%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e190332%_
                  _%$e190332%_
                  (let ((_%expr-type190336%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr190328%_))))
                    (if (not _%expr-type190336%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type190336%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e190340%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type190336%_
                                      'gxc#!abort::t))))
                              (if _%$e190340%_
                                  _%$e190340%_
                                  (let ((_%$e190343%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type190336%_
                                            _%type190329%_))))
                                    (if _%$e190343%_
                                        _%$e190343%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type190329%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type190329%_
                                                   _%expr-type190336%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx190327%_
                                                   _%expr190328%_
                                                   _%expr-type190336%_
                                                   _%type190329%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self188336190139%_ _%ctx190141%_ _%stx190142%_ _%args190143%_)
        (let* ((_%self190145%_ _%self188336190139%_)
               (_%self190147%_ _%self190145%_)
               (_%klass190157%_
                (let ((__tmp192294
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190147%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx190142%_ __tmp192294)))
               (_%fields190159%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass190157%_
                           '5
                           '#f
                           '#f))))
               (_%args190165%_
                (map (lambda (_%g190160190162%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx190141%_ _%g190160190162%_)))
                     _%args190143%_))
               (_%inline-make-object190167%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self190147%_
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
                           _%self190147%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields190159%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass190170%_ _%klass190157%_)
               (_%$e190184%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass190170%_ '6 '#f '#f))))
          (if _%$e190184%_
              ((lambda (_%ctor190187%_)
                 (let ((_%$obj190189%_
                        (let ((__tmp192295
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp192295)))
                       (_%ctor-impl190190%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass190170%_
                           _%ctor190187%_))))
                   (let ((__tmp192296
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj190189%_ '())
                                                  (cons _%inline-make-object190167%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl190190%_
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%ctor-impl190190%_ '()))
                                (cons (cons '%#ref (cons _%$obj190189%_ '()))
                                      _%args190165%_)))
                    (let ((_%$ctor190192%_
                           (let ((__tmp192297
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp192297))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor190192%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self190147%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj190189%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor190187%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor190192%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor190192%_ '()))
                              (cons (cons '%#ref (cons _%$obj190189%_ '()))
                                    _%args190165%_)))
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
                             _%self190147%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor190187%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj190189%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp192296 _%stx190142%_))))
               _%$e190184%_)
              (let ((_%$e190194%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass190170%_
                        '10
                        '#f
                        '#f))))
                (if _%$e190194%_
                    ((lambda (_%metaclass190197%_)
                       (let* ((_%$obj190199%_
                               (let ((__tmp192298
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp192298)))
                              (_%metakons190201%_
                               (let ((__tmp192299
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx190142%_
                                         _%metaclass190197%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp192299
                                  'instance-init!)))
                              (__tmp192300
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj190199%_
                                                             '())
                                                       (cons _%inline-make-object190167%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons190201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons _%metakons190201%_ '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self190147%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj190199%_
                                                             '()))
                                                 _%args190165%_))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self190147%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj190199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args190165%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj190199%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp192300 _%stx190142%_)))
                     _%$e190194%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass190170%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp192301
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args190165%_))))
                              (declare (not safe))
                              (##fx= __tmp192301 _%fields190159%_))
                            (let ((__tmp192302
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self190147%_
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
                                              _%self190147%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args190165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp192302
                               _%stx190142%_))
                            (let ((__tmp192304
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self190147%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp192303
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass190170%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx190142%_
                               __tmp192304
                               __tmp192303)))
                        (let ((_%$obj190206%_
                               (let ((__tmp192305
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp192305))))
                          (let _%lp190208%_ ((_%rest190210%_ _%args190165%_)
                                             (_%initializers190211%_ '()))
                            (let* ((_%__stx192035192036%_ _%rest190210%_)
                                   (_%g190215190236%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx192035192036%_)))))
                              (let ((_%__kont192037192038%_
                                     (lambda (_%L190290%_
                                              _%L190291%_
                                              _%L190292%_)
                                       (let* ((_%slot190319%_
                                               (let ((__tmp192306
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L190292%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp192306)))
                                              (_%off190321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass190170%_
                                                  _%slot190319%_))))
                                         (if _%off190321%_
                                             (_%lp190208%_
                                              _%L190290%_
                                              (cons (cons _%off190321%_
                                                          _%L190291%_)
                                                    _%initializers190211%_))
                                             (let ((__tmp192307
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self190147%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx190142%_
                                                __tmp192307
                                                _%slot190319%_))))))
                                    (_%__kont192039192040%_
                                     (lambda ()
                                       (let ((__tmp192308
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj190206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object190167%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp192311
                                     (cons (cons '%#ref
                                                 (cons _%$obj190206%_ '()))
                                           '()))
                                    (__tmp192309
                                     (let ((__tmp192310
                                            (lambda (_%i190250%_ _%r190251%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self190147%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i190250%_) '()))
                              (cons (cons '%#ref (cons _%$obj190206%_ '()))
                                    (cons (cdr _%i190250%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r190251%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp192310
                                        '()
                                        _%initializers190211%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp192311 __tmp192309)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192308
                                          _%stx190142%_))))
                                    (_%__kont192041192042%_
                                     (lambda ()
                                       (let ((__tmp192312
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj190206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object190167%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj190206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args190165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj190206%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192312
                                          _%stx190142%_)))))
                                (let* ((_%g190213190253%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx192035192036%_))
                                              (_%__kont192039192040%_)
                                              (_%__kont192041192042%_))))
                                       (_%__match192072192073%_
                                        (lambda (_%e190220190258%_
                                                 _%hd190221190261%_
                                                 _%tl190222190263%_
                                                 _%e190223190266%_
                                                 _%hd190224190269%_
                                                 _%tl190225190271%_
                                                 _%e190226190274%_
                                                 _%hd190227190277%_
                                                 _%tl190228190279%_
                                                 _%e190229190282%_
                                                 _%hd190230190285%_
                                                 _%tl190231190287%_)
                                          (let ((_%L190290%_
                                                 _%tl190231190287%_)
                                                (_%L190291%_
                                                 _%hd190230190285%_)
                                                (_%L190292%_
                                                 _%hd190227190277%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L190292%_))
                                                (_%__kont192037192038%_
                                                 _%L190290%_
                                                 _%L190291%_
                                                 _%L190292%_)
                                                (_%__kont192041192042%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx192035192036%_))
                                      (let ((_%e190220190258%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx192035192036%_))))
                                        (let ((_%tl190222190263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190220190258%_)))
                                              (_%hd190221190261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190220190258%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd190221190261%_))
                                              (let ((_%e190223190266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd190221190261%_))))
                                                (let ((_%tl190225190271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190223190266%_)))
                                                      (_%hd190224190269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190223190266%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd190224190269%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd190224190269%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl190225190271%_))
                      (let ((_%e190226190274%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190225190271%_))))
                        (let ((_%tl190228190279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190226190274%_)))
                              (_%hd190227190277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190226190274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190228190279%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190222190263%_))
                                  (let ((_%e190229190282%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190222190263%_))))
                                    (let ((_%tl190231190287%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190229190282%_)))
                                          (_%hd190230190285%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190229190282%_))))
                                      (_%__match192072192073%_
                                       _%e190220190258%_
                                       _%hd190221190261%_
                                       _%tl190222190263%_
                                       _%e190223190266%_
                                       _%hd190224190269%_
                                       _%tl190225190271%_
                                       _%e190226190274%_
                                       _%hd190227190277%_
                                       _%tl190228190279%_
                                       _%e190229190282%_
                                       _%hd190230190285%_
                                       _%tl190231190287%_)))
                                  (_%__kont192041192042%_))
                              (_%__kont192041192042%_))))
                      (_%__kont192041192042%_))
                  (_%__kont192041192042%_))
              (_%__kont192041192042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192041192042%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190213190253%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self188337189920%_ _%ctx189922%_ _%stx189923%_ _%args189924%_)
        (let* ((_%self189926%_ _%self188337189920%_)
               (_%self189928%_ _%self189926%_)
               (_%arguments-ok?189938%_
                (let ((__method192258
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self189928%_ 'check-arguments))))
                  (if __method192258
                      (let ()
                        (declare (not safe))
                        (__method192258
                         _%self189928%_
                         _%ctx189922%_
                         _%stx189923%_
                         _%args189924%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self189928%_
                                 'check-arguments))
                        '#!void))))
               (_%g189940189950%_
                (lambda (_%g189941189947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189941189947%_))))
               (_%g189939190014%_
                (lambda (_%g189941189953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189941189953%_))
                      (let ((_%e189943189955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189941189953%_))))
                        (let ((_%hd189944189958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189943189955%_)))
                              (_%tl189945189960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189943189955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189945189960%_))
                              ((lambda (_%L189963%_)
                                 (let* ((_%klass189976%_
                                         (let ((__tmp192313
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self189928%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189923%_
                                            __tmp192313)))
                                        (_%field189978%_
                                         (let ((__tmp192314
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self189928%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass189976%_
                                            __tmp192314)))
                                        (_%object189980%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx189922%_
                                            _%L189963%_)))
                                        (_%klass189983%_ _%klass189976%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass189983%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp192315
                                              (cons (if (or _%arguments-ok?189938%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189928%_
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
                                 _%self189928%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field189978%_ '()))
                        (cons _%object189980%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192315
                                          _%stx189923%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass189983%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp192316
                                                  (cons (if (or _%arguments-ok?189938%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self189928%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self189928%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field189978%_ '()))
                            (cons _%object189980%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp192316
                                              _%stx189923%_))
                                           (let ((_%$e190002%_
                                                  (let ((__tmp192317
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self189928%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass189983%_
                                                     __tmp192317))))
                                             (if _%$e190002%_
                                                 ((lambda (_%klass190005%_)
                                                    (let ((__tmp192318
                                                           (cons (if (or _%arguments-ok?189938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189928%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self189928%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field189978%_ '()))
                                     (cons _%object189980%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp192318 _%stx189923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e190002%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self189928%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp192319
                                                            (let ((_%$obj190011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp192320
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp192320))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj190011%_ '())
                                              (cons _%object189980%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass189983%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj190011%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189928%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field189978%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj190011%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?189938%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj190011%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self189928%_
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
                                                             _%self189928%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj190011%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self189928%_
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
               (gxc#xform-wrap-source __tmp192319 _%stx189923%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp192321
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object189980%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189928%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp192321 _%stx189923%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd189944189958%_)
                              (_%g189940189950%_ _%g189941189953%_))))
                      (_%g189940189950%_ _%g189941189953%_)))))
          (_%g189939190014%_ _%args189924%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass191803 __method-table191804)
        (let ((__check-arguments191805
               (let ((__tmp192322
                      (lambda ()
                        (let ((__method191806
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table191804
                                  'check-arguments
                                  '#f))))
                          (if __method191806
                              __method191806
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp192322)))
              (__slot191807
               (let ((__slot191808
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass191803 'slot))))
                 (if __slot191808
                     __slot191808
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self188337189920%_
                   _%ctx189922%_
                   _%stx189923%_
                   _%args189924%_)
            (let* ((_%self189926%_ _%self188337189920%_)
                   (_%self189928%_ _%self189926%_)
                   (_%arguments-ok?189938%_
                    ((force __check-arguments191805)
                     _%self189928%_
                     _%ctx189922%_
                     _%stx189923%_
                     _%args189924%_))
                   (_%g189940189950%_
                    (lambda (_%g189941189947%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g189941189947%_))))
                   (_%g189939190014%_
                    (lambda (_%g189941189953%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g189941189953%_))
                          (let ((_%e189943189955%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g189941189953%_))))
                            (let ((_%hd189944189958%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189943189955%_)))
                                  (_%tl189945189960%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189943189955%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189945189960%_))
                                  ((lambda (_%L189963%_)
                                     (let* ((_%klass189976%_
                                             (let ((__tmp192323
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self189928%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx189923%_
                                                __tmp192323)))
                                            (_%field189978%_
                                             (let ((__tmp192324
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self189928%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass189976%_
                                                __tmp192324)))
                                            (_%object189980%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx189922%_
                                                _%L189963%_)))
                                            (_%klass189983%_ _%klass189976%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass189983%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp192325
                                                  (cons (if (or _%arguments-ok?189938%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self189928%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self189928%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field189978%_ '()))
                            (cons _%object189980%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp192325
                                              _%stx189923%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass189983%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp192326
                                                      (cons (if (or _%arguments-ok?189938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self189928%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189928%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field189978%_ '()))
                                (cons _%object189980%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp192326
                                                  _%stx189923%_))
                                               (let ((_%$e190002%_
                                                      (let ((__tmp192327
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self189928%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass189983%_ __tmp192327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e190002%_
                                                     ((lambda (_%klass190005%_)
                                                        (let ((__tmp192328
                                                               (cons (if (or _%arguments-ok?189938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189928%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self189928%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field189978%_ '()))
                                         (cons _%object189980%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp192328 _%stx189923%_)))
              _%$e190002%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self189928%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp192329
                                                                (let ((_%$obj190011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp192330
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp192330))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj190011%_ '())
                                                  (cons _%object189980%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass189983%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj190011%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189928%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field189978%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj190011%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?189938%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj190011%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self189928%_
                               __slot191807
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
                        (##unchecked-structure-ref _%self189928%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj190011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self189928%_
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
                   (gxc#xform-wrap-source __tmp192329 _%stx189923%_))
                 (let ((__tmp192331
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object189980%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self189928%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp192331 _%stx189923%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd189944189958%_)
                                  (_%g189940189950%_ _%g189941189953%_))))
                          (_%g189940189950%_ _%g189941189953%_)))))
              (_%g189939190014%_ _%args189924%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self188338189682%_ _%ctx189684%_ _%stx189685%_ _%args189686%_)
        (let* ((_%self189688%_ _%self188338189682%_)
               (_%self189690%_ _%self189688%_)
               (_%arguments-ok?189700%_
                (let ((__method192259
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self189690%_ 'check-arguments))))
                  (if __method192259
                      (let ()
                        (declare (not safe))
                        (__method192259
                         _%self189690%_
                         _%ctx189684%_
                         _%stx189685%_
                         _%args189686%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self189690%_
                                 'check-arguments))
                        '#!void))))
               (_%g189702189716%_
                (lambda (_%g189703189713%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189703189713%_))))
               (_%g189701189795%_
                (lambda (_%g189703189719%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189703189719%_))
                      (let ((_%e189706189721%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189703189719%_))))
                        (let ((_%hd189707189724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189706189721%_)))
                              (_%tl189708189726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189706189721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189708189726%_))
                              (let ((_%e189709189729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189708189726%_))))
                                (let ((_%hd189710189732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189709189729%_)))
                                      (_%tl189711189734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189709189729%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189711189734%_))
                                      ((lambda (_%L189737%_ _%L189738%_)
                                         (let* ((_%klass189754%_
                                                 (let ((__tmp192332
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189690%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx189685%_
                                                    __tmp192332)))
                                                (_%field189756%_
                                                 (let ((__tmp192333
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189690%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass189754%_
                                                    __tmp192333)))
                                                (_%object189758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx189684%_
                                                    _%L189738%_)))
                                                (_%value189760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx189684%_
                                                    _%L189737%_)))
                                                (_%klass189763%_
                                                 _%klass189754%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass189763%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp192334
                                                      (cons (if (or _%arguments-ok?189700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self189690%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189690%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field189756%_ '()))
                                (cons _%object189758%_
                                      (cons _%value189760%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp192334
                                                  _%stx189685%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass189763%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp192335
                                                          (cons (if (or _%arguments-ok?189700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self189690%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189690%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field189756%_ '()))
                                    (cons _%object189758%_
                                          (cons _%value189760%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp192335
                                                      _%stx189685%_))
                                                   (let ((_%$e189783%_
                                                          (let ((__tmp192336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189690%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass189763%_
                     __tmp192336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e189783%_
                                                         ((lambda (_%klass189786%_)
                                                            (let ((__tmp192337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?189700%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189690%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self189690%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field189756%_ '()))
                                             (cons _%object189758%_
                                                   (cons _%value189760%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp192337 _%stx189685%_)))
                  _%$e189783%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self189690%_ '4 '#f '#f))
                     (let ((__tmp192338
                            (let ((_%$obj189792%_
                                   (let ((__tmp192339
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp192339))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj189792%_ '())
                                                      (cons _%object189758%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass189763%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj189792%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189690%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field189756%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj189792%_
                                                              '()))
                                                  (cons _%value189760%_
                                                        '())))))
                          (cons (if _%arguments-ok?189700%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj189792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self189690%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value189760%_ '())))))
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
                             _%self189690%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj189792%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189690%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value189760%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp192338 _%stx189685%_))
                     (let ((__tmp192340
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object189758%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self189690%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value189760%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp192340
                        _%stx189685%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd189710189732%_
                                       _%hd189707189724%_)
                                      (_%g189702189716%_ _%g189703189719%_))))
                              (_%g189702189716%_ _%g189703189719%_))))
                      (_%g189702189716%_ _%g189703189719%_)))))
          (_%g189701189795%_ _%args189686%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass191809 __method-table191810)
        (let ((__check-arguments191811
               (let ((__tmp192341
                      (lambda ()
                        (let ((__method191812
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table191810
                                  'check-arguments
                                  '#f))))
                          (if __method191812
                              __method191812
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp192341))))
          (lambda (_%self188338189682%_
                   _%ctx189684%_
                   _%stx189685%_
                   _%args189686%_)
            (let* ((_%self189688%_ _%self188338189682%_)
                   (_%self189690%_ _%self189688%_)
                   (_%arguments-ok?189700%_
                    ((force __check-arguments191811)
                     _%self189690%_
                     _%ctx189684%_
                     _%stx189685%_
                     _%args189686%_))
                   (_%g189702189716%_
                    (lambda (_%g189703189713%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g189703189713%_))))
                   (_%g189701189795%_
                    (lambda (_%g189703189719%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g189703189719%_))
                          (let ((_%e189706189721%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g189703189719%_))))
                            (let ((_%hd189707189724%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189706189721%_)))
                                  (_%tl189708189726%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189706189721%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189708189726%_))
                                  (let ((_%e189709189729%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189708189726%_))))
                                    (let ((_%hd189710189732%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189709189729%_)))
                                          (_%tl189711189734%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189709189729%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189711189734%_))
                                          ((lambda (_%L189737%_ _%L189738%_)
                                             (let* ((_%klass189754%_
                                                     (let ((__tmp192342
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self189690%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx189685%_
                                                        __tmp192342)))
                                                    (_%field189756%_
                                                     (let ((__tmp192343
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self189690%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass189754%_
                                                        __tmp192343)))
                                                    (_%object189758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189684%_
                                                        _%L189738%_)))
                                                    (_%value189760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189684%_
                                                        _%L189737%_)))
                                                    (_%klass189763%_
                                                     _%klass189754%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass189763%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp192344
                                                          (cons (if (or _%arguments-ok?189700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self189690%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189690%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field189756%_ '()))
                                    (cons _%object189758%_
                                          (cons _%value189760%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp192344
                                                      _%stx189685%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass189763%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp192345
                                                              (cons (if (or _%arguments-ok?189700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self189690%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189690%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field189756%_ '()))
                                        (cons _%object189758%_
                                              (cons _%value189760%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp192345 _%stx189685%_))
               (let ((_%$e189783%_
                      (let ((__tmp192346
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self189690%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass189763%_
                         __tmp192346))))
                 (if _%$e189783%_
                     ((lambda (_%klass189786%_)
                        (let ((__tmp192347
                               (cons (if (or _%arguments-ok?189700%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189690%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self189690%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field189756%_
                                                             '()))
                                                 (cons _%object189758%_
                                                       (cons _%value189760%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp192347 _%stx189685%_)))
                      _%$e189783%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189690%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp192348
                                (let ((_%$obj189792%_
                                       (let ((__tmp192349
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp192349))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj189792%_
                                                                '())
                                                          (cons _%object189758%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass189763%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189792%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self189690%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field189756%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj189792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value189760%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?189700%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj189792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self189690%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value189760%_ '())))))
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
                                 _%self189690%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj189792%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189690%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value189760%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp192348 _%stx189685%_))
                         (let ((__tmp192350
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object189758%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self189690%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value189760%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp192350
                            _%stx189685%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd189710189732%_
                                           _%hd189707189724%_)
                                          (_%g189702189716%_
                                           _%g189703189719%_))))
                                  (_%g189702189716%_ _%g189703189719%_))))
                          (_%g189702189716%_ _%g189703189719%_)))))
              (_%g189701189795%_ _%args189686%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self188339189495%_ _%ctx189497%_ _%stx189498%_ _%args189499%_)
        (let* ((_%self189501%_ _%self188339189495%_)
               (_%self189503%_ _%self189501%_)
               (_%self189512189522%_ _%self189503%_)
               (_%E189514189526%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self189512189522%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K189515189536%_
                (lambda (_%inline189529%_ _%dispatch189530%_ _%arity189531%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self189503%_
                         _%args189499%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx189498%_
                         _%arity189531%_)))
                  (if _%inline189529%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp192351
                               (let ((__tmp192352
                                      (_%inline189529%_ _%stx189498%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp192352
                                  _%stx189498%_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _%ctx189497%_ __tmp192351)))
                      (if (and _%dispatch189530%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch189530%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch189530%_))
                            (let ((__tmp192353
                                   (let ((__tmp192354
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _%dispatch189530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args189499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp192354
                                      _%stx189498%_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _%ctx189497%_ __tmp192353)))
                          (gxc#!procedure::optimize-call
                           _%self189503%_
                           _%ctx189497%_
                           _%stx189498%_
                           _%args189499%_))))))
          (if '#t
              (let* ((_%e189516189539%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189512189522%_
                         '1
                         '#f
                         '#f)))
                     (_%e189517189542%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189512189522%_
                         '2
                         '#f
                         '#f)))
                     (_%e189518189545%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189512189522%_
                         '3
                         '#f
                         '#f)))
                     (_%arity189548%_ _%e189518189545%_)
                     (_%e189519189550%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189512189522%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch189553%_ _%e189519189550%_)
                     (_%e189520189555%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189512189522%_
                         '5
                         '#f
                         '#f)))
                     (_%inline189558%_ _%e189520189555%_))
                (_%K189515189536%_
                 _%inline189558%_
                 _%dispatch189553%_
                 _%arity189548%_))
              (_%E189514189526%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self188340189345%_ _%ctx189347%_ _%stx189348%_ _%args189349%_)
        (let* ((_%self189351%_ _%self188340189345%_)
               (_%self189353%_ _%self189351%_)
               (_%$e189367%_
                (let ((__tmp192356
                       (lambda (_%g189362189364%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g189362189364%_
                            _%args189349%_))))
                      (__tmp192355
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self189353%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp192356 __tmp192355))))
          (if _%$e189367%_
              ((lambda (_%clause189370%_)
                 (let ((__method192260
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause189370%_ 'optimize-call))))
                   (if __method192260
                       (let ()
                         (declare (not safe))
                         (__method192260
                          _%clause189370%_
                          _%ctx189347%_
                          _%stx189348%_
                          _%args189349%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause189370%_
                                  'optimize-call))
                         '#!void))))
               _%$e189367%_)
              (let ((__tmp192357
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189353%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx189348%_
                 __tmp192357))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self188341189083%_ _%ctx189085%_ _%stx189086%_ _%args189087%_)
        (let* ((_%self189089%_ _%self188341189083%_)
               (_%self189091%_ _%self189089%_)
               (_%self189100189109%_ _%self189091%_)
               (_%E189102189113%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self189100189109%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K189103189204%_
                (lambda (_%dispatch189116%_ _%table189117%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch189116%_))
                      (let* ((_%g189118189128%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch189116%_)))
                             (_%else189120189136%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch189116%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx189085%_
                                   _%stx189086%_))))
                             (_%K189122189185%_
                              (lambda (_%main189139%_ _%keys189140%_)
                                (let ((_g192358_
                                       (gxc#!kw-lambda-split-args
                                        _%stx189086%_
                                        _%args189087%_)))
                                  (begin
                                    (let ((_g192359_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192358_)
                                                 (##vector-length _g192358_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192359_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192359_)))
                                    (let ((_%pargs189142%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192358_ 0)))
                                          (_%kwargs189143%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192358_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main189139%_))
                                        (if _%table189117%_
                                            (let ((_%xargs189151%_
                                                   (map (lambda (_%key189145%_)
                                                          (let ((_%$e189147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key189145%_ _%kwargs189143%_))))
                    (if _%$e189147%_ _%$e189147%_ '(%#ref absent-value))))
                _%keys189140%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw189153%_)
                                                 (if (memq (car _%kw189153%_)
                                                           _%keys189140%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx189086%_
                                                        _%keys189140%_
                                                        _%kw189153%_))))
                                               _%kwargs189143%_)
                                              (let ((__tmp192360
                                                     (let ((__tmp192361
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%main189139%_ '()))
                                (cons (cons '%#quote (cons '#f '()))
                                      (let ()
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         _%pargs189142%_
                                         _%xargs189151%_)))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp192361 _%stx189086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx189085%_
                                                 __tmp192360)))
                                            (let* ((_%kwt189155%_
                                                    (let ((__tmp192362
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp192362)))
                                                   (_%kwvars189159%_
                                                    (map (lambda (_%_189157%_)
                                                           (let ((__tmp192363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp192363)))
                 _%kwargs189143%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind189164%_
                                                    (map (lambda (_%kw189161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar189162%_)
                   (cons (cons _%kwvar189162%_ '())
                         (cons (cdr _%kw189161%_) '())))
                 _%kwargs189143%_
                 _%kwvars189159%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset189169%_
                                                    (map (lambda (_%kw189166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar189167%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt189155%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw189166%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar189167%_
                                                             '()))
                                                 '()))))))
                 _%kwargs189143%_
                 _%kwvars189159%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs189174%_
                                                    (map (lambda (_%kw189171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar189172%_)
                   (cons (car _%kw189171%_)
                         (cons '%#ref (cons _%kwvar189172%_ '()))))
                 _%kwargs189143%_
                 _%kwvars189159%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs189182%_
                                                    (map (lambda (_%key189176%_)
                                                           (let ((_%$e189178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key189176%_ _%xkwargs189174%_))))
                     (if _%$e189178%_ _%$e189178%_ '(%#ref absent-value))))
                 _%keys189140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp192364
                                                    (let ((__tmp192365
                                                           (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwbind189164%_
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%kwt189155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ((__tmp192366
                                  (cons '%#call
                                        (cons '(%#ref make-symbolic-table)
                                              (cons (cons '%#quote
                                                          (cons (length _%kwargs189143%_)
                                                                '()))
                                                    (cons '(%#quote (length kwvars))
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp192366 _%stx189086%_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#begin
                                                             (let ((__tmp192367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ((__tmp192368
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons _%main189139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwt189155%_ '()))
                   (let ()
                     (declare (not safe))
                     (__foldr1 cons _%pargs189142%_ _%xargs189182%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp192368
                                     _%stx189086%_))
                                  '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp192367 _%kwset189169%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp192365 _%stx189086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%ctx189085%_
                                               __tmp192364))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g189118189128%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e189123189188%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g189118189128%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e189124189191%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g189118189128%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e189125189194%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g189118189128%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys189197%_ _%e189125189194%_)
                                   (_%e189126189199%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g189118189128%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main189202%_ _%e189126189199%_))
                              (_%K189122189185%_
                               _%main189202%_
                               _%keys189197%_))
                            (_%else189120189136%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx189085%_ _%stx189086%_))))))
          (if '#t
              (let* ((_%e189104189207%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189100189109%_
                         '1
                         '#f
                         '#f)))
                     (_%e189105189210%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189100189109%_
                         '2
                         '#f
                         '#f)))
                     (_%e189106189213%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189100189109%_
                         '3
                         '#f
                         '#f)))
                     (_%table189216%_ _%e189106189213%_)
                     (_%e189107189218%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189100189109%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch189221%_ _%e189107189218%_))
                (_%K189103189204%_ _%dispatch189221%_ _%table189216%_))
              (_%E189102189113%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx188696%_ _%args188697%_)
        (let _%lp188699%_ ((_%rest188701%_ _%args188697%_)
                           (_%pargs188702%_ '())
                           (_%kwargs188703%_ '()))
          (let* ((_%__stx192077192078%_ _%rest188701%_)
                 (_%g188709188761%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx192077192078%_)))))
            (let ((_%__kont192079192080%_
                   (lambda (_%L188940%_ _%L188941%_)
                     (_%lp188699%_
                      _%L188940%_
                      (cons _%L188941%_ _%pargs188702%_)
                      _%kwargs188703%_)))
                  (_%__kont192081192082%_
                   (lambda (_%L188886%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L188886%_ _%pargs188702%_))
                             (reverse _%kwargs188703%_))))
                  (_%__kont192083192084%_
                   (lambda (_%L188833%_ _%L188834%_ _%L188835%_)
                     (let ((_%kw188852%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L188835%_))))
                       (if (assq _%kw188852%_ _%kwargs188703%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx188696%_
                              _%kw188852%_))
                           (_%lp188699%_
                            _%L188833%_
                            _%pargs188702%_
                            (cons (cons _%kw188852%_ _%L188834%_)
                                  _%kwargs188703%_))))))
                  (_%__kont192085192086%_
                   (lambda (_%L188781%_ _%L188782%_)
                     (_%lp188699%_
                      _%L188781%_
                      (cons _%L188782%_ _%pargs188702%_)
                      _%kwargs188703%_)))
                  (_%__kont192087192088%_
                   (lambda ()
                     (values (reverse _%pargs188702%_)
                             (reverse _%kwargs188703%_)))))
              (let ((_%__match192184192185%_
                     (lambda (_%e188740188801%_
                              _%hd188741188804%_
                              _%tl188742188806%_
                              _%e188743188809%_
                              _%hd188744188812%_
                              _%tl188745188814%_
                              _%e188746188817%_
                              _%hd188747188820%_
                              _%tl188748188822%_
                              _%e188749188825%_
                              _%hd188750188828%_
                              _%tl188751188830%_)
                       (let ((_%L188833%_ _%tl188751188830%_)
                             (_%L188834%_ _%hd188750188828%_)
                             (_%L188835%_ _%hd188747188820%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L188835%_))
                             (_%__kont192083192084%_
                              _%L188833%_
                              _%L188834%_
                              _%L188835%_)
                             (_%__kont192085192086%_
                              _%tl188742188806%_
                              _%hd188741188804%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx192077192078%_))
                    (let ((_%e188713188905%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx192077192078%_))))
                      (let ((_%tl188715188910%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188713188905%_)))
                            (_%hd188714188908%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188713188905%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd188714188908%_))
                            (let ((_%e188716188913%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd188714188908%_))))
                              (let ((_%tl188718188918%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188716188913%_)))
                                    (_%hd188717188916%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188716188913%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd188717188916%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd188717188916%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl188718188918%_))
                                            (let ((_%e188719188921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl188718188918%_))))
                                              (let ((_%tl188721188926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e188719188921%_)))
                                                    (_%hd188720188924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e188719188921%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd188720188924%_))
                                                    (let ((_%e188722188929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd188720188924%_))))
                                                      (if (equal? _%e188722188929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188721188926%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188715188910%_))
                          (let ((_%e188723188932%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188715188910%_))))
                            (let ((_%tl188725188937%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188723188932%_)))
                                  (_%hd188724188935%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188723188932%_))))
                              (_%__kont192079192080%_
                               _%tl188725188937%_
                               _%hd188724188935%_)))
                          (_%__kont192085192086%_
                           _%tl188715188910%_
                           _%hd188714188908%_))
                      (_%__kont192085192086%_
                       _%tl188715188910%_
                       _%hd188714188908%_))
                  (if (equal? _%e188722188929%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl188721188926%_))
                          (_%__kont192081192082%_ _%tl188715188910%_)
                          (_%__kont192085192086%_
                           _%tl188715188910%_
                           _%hd188714188908%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl188721188926%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188715188910%_))
                              (let ((_%e188749188825%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl188715188910%_))))
                                (let ((_%tl188751188830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188749188825%_)))
                                      (_%hd188750188828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188749188825%_))))
                                  (_%__match192184192185%_
                                   _%e188713188905%_
                                   _%hd188714188908%_
                                   _%tl188715188910%_
                                   _%e188716188913%_
                                   _%hd188717188916%_
                                   _%tl188718188918%_
                                   _%e188719188921%_
                                   _%hd188720188924%_
                                   _%tl188721188926%_
                                   _%e188749188825%_
                                   _%hd188750188828%_
                                   _%tl188751188830%_)))
                              (_%__kont192085192086%_
                               _%tl188715188910%_
                               _%hd188714188908%_))
                          (_%__kont192085192086%_
                           _%tl188715188910%_
                           _%hd188714188908%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl188721188926%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl188715188910%_))
                                                            (let ((_%e188749188825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl188715188910%_))))
                      (let ((_%tl188751188830%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188749188825%_)))
                            (_%hd188750188828%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188749188825%_))))
                        (_%__match192184192185%_
                         _%e188713188905%_
                         _%hd188714188908%_
                         _%tl188715188910%_
                         _%e188716188913%_
                         _%hd188717188916%_
                         _%tl188718188918%_
                         _%e188719188921%_
                         _%hd188720188924%_
                         _%tl188721188926%_
                         _%e188749188825%_
                         _%hd188750188828%_
                         _%tl188751188830%_)))
                    (_%__kont192085192086%_
                     _%tl188715188910%_
                     _%hd188714188908%_))
                (_%__kont192085192086%_
                 _%tl188715188910%_
                 _%hd188714188908%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont192085192086%_
                                             _%tl188715188910%_
                                             _%hd188714188908%_))
                                        (_%__kont192085192086%_
                                         _%tl188715188910%_
                                         _%hd188714188908%_))
                                    (_%__kont192085192086%_
                                     _%tl188715188910%_
                                     _%hd188714188908%_))))
                            (_%__kont192085192086%_
                             _%tl188715188910%_
                             _%hd188714188908%_))))
                    (_%__kont192087192088%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self188342188678%_ _%ctx188680%_ _%stx188681%_ _%args188682%_)
        (let* ((_%self188684%_ _%self188342188678%_)
               (_%self188686%_ _%self188684%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx188680%_ _%stx188681%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self188366%_ _%stx188367%_)
        (let* ((_%__stx192193192194%_ _%stx188367%_)
               (_%g188370188410%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192193192194%_)))))
          (let ((_%__kont192195192196%_
                 (lambda (_%L188516%_ _%L188517%_)
                   (let ((_%$e188544%_
                          (member 'return:
                                  (let ((__tmp192369
                                         (lambda (_%g188536188539%_
                                                  _%g188537188541%_)
                                           (cons _%g188536188539%_
                                                 _%g188537188541%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp192369 '() _%L188517%_))
                                  gx#stx-eq?)))
                     (if _%$e188544%_
                         ((lambda (_%tail188547%_)
                            (let ((_%type188549%_
                                   (let ((__tmp192370
                                          (let ((__tmp192371
                                                 (cadr _%tail188547%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp192371))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx188367%_
                                      __tmp192370))))
                              (gxc#check-return-type!
                               _%stx188367%_
                               _%L188516%_
                               _%type188549%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self188366%_
                                 _%L188516%_))))
                          _%$e188544%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self188366%_ _%L188516%_))))))
                (_%__kont192199192200%_
                 (lambda (_%L188439%_ _%L188440%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self188366%_ _%L188439%_)))))
            (let ((_%__match192230192231%_
                   (lambda (_%e188374188460%_
                            _%hd188375188463%_
                            _%tl188376188465%_
                            _%e188377188468%_
                            _%hd188378188471%_
                            _%tl188379188473%_
                            _%e188380188476%_
                            _%hd188381188479%_
                            _%tl188382188481%_
                            _%__splice192197192198%_
                            _%target188383188484%_
                            _%tl188385188486%_)
                     (letrec ((_%loop188386188489%_
                               (lambda (_%hd188384188492%_
                                        _%signature188390188494%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188384188492%_))
                                     (let ((_%e188387188497%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188384188492%_))))
                                       (let ((_%lp-tl188389188502%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188387188497%_)))
                                             (_%lp-hd188388188500%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188387188497%_))))
                                         (_%loop188386188489%_
                                          _%lp-tl188389188502%_
                                          (cons _%lp-hd188388188500%_
                                                _%signature188390188494%_))))
                                     (let ((_%signature188391188505%_
                                            (reverse _%signature188390188494%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl188379188473%_))
                                           (let ((_%e188392188508%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl188379188473%_))))
                                             (let ((_%tl188394188513%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e188392188508%_)))
                                                   (_%hd188393188511%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e188392188508%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl188394188513%_))
                                                   (_%__kont192195192196%_
                                                    _%hd188393188511%_
                                                    _%signature188391188505%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g188370188410%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g188370188410%_))))))))
                       (_%loop188386188489%_ _%target188383188484%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx192193192194%_))
                  (let ((_%e188374188460%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx192193192194%_))))
                    (let ((_%tl188376188465%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188374188460%_)))
                          (_%hd188375188463%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188374188460%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188376188465%_))
                          (let ((_%e188377188468%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188376188465%_))))
                            (let ((_%tl188379188473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188377188468%_)))
                                  (_%hd188378188471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188377188468%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd188378188471%_))
                                  (let ((_%e188380188476%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd188378188471%_))))
                                    (let ((_%tl188382188481%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188380188476%_)))
                                          (_%hd188381188479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188380188476%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd188381188479%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd188381188479%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl188382188481%_))
                                                  (let ((_%__splice192197192198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl188382188481%_
                                                            '0))))
                                                    (let ((_%tl188385188486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice192197192198%_
                                                              '1)))
                                                          (_%target188383188484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice192197192198%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188385188486%_))
                                                          (_%__match192230192231%_
                                                           _%e188374188460%_
                                                           _%hd188375188463%_
                                                           _%tl188376188465%_
                                                           _%e188377188468%_
                                                           _%hd188378188471%_
                                                           _%tl188379188473%_
                                                           _%e188380188476%_
                                                           _%hd188381188479%_
                                                           _%tl188382188481%_
                                                           _%__splice192197192198%_
                                                           _%target188383188484%_
                                                           _%tl188385188486%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl188379188473%_))
                      (let ((_%e188403188431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl188379188473%_))))
                        (let ((_%tl188405188436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188403188431%_)))
                              (_%hd188404188434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188403188431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188405188436%_))
                              (_%__kont192199192200%_
                               _%hd188404188434%_
                               _%hd188378188471%_)
                              (let ()
                                (declare (not safe))
                                (_%g188370188410%_)))))
                      (let () (declare (not safe)) (_%g188370188410%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl188379188473%_))
                                                      (let ((_%e188403188431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl188379188473%_))))
                (let ((_%tl188405188436%_
                       (let () (declare (not safe)) (##cdr _%e188403188431%_)))
                      (_%hd188404188434%_
                       (let ()
                         (declare (not safe))
                         (##car _%e188403188431%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188405188436%_))
                      (_%__kont192199192200%_
                       _%hd188404188434%_
                       _%hd188378188471%_)
                      (let () (declare (not safe)) (_%g188370188410%_)))))
              (let () (declare (not safe)) (_%g188370188410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl188379188473%_))
                                                  (let ((_%e188403188431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl188379188473%_))))
                                                    (let ((_%tl188405188436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188403188431%_)))
                                                          (_%hd188404188434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188403188431%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188405188436%_))
                                                          (_%__kont192199192200%_
                                                           _%hd188404188434%_
                                                           _%hd188378188471%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g188370188410%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g188370188410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188379188473%_))
                                              (let ((_%e188403188431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl188379188473%_))))
                                                (let ((_%tl188405188436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188403188431%_)))
                                                      (_%hd188404188434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188403188431%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl188405188436%_))
                                                      (_%__kont192199192200%_
                                                       _%hd188404188434%_
                                                       _%hd188378188471%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g188370188410%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g188370188410%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188379188473%_))
                                      (let ((_%e188403188431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188379188473%_))))
                                        (let ((_%tl188405188436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188403188431%_)))
                                              (_%hd188404188434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188403188431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188405188436%_))
                                              (_%__kont192199192200%_
                                               _%hd188404188434%_
                                               _%hd188378188471%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g188370188410%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188370188410%_))))))
                          (let () (declare (not safe)) (_%g188370188410%_)))))
                  (let () (declare (not safe)) (_%g188370188410%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx188344%_ _%expr188345%_ _%type188346%_)
        (let ((_%$e188348%_ (not _%type188346%_)))
          (if _%$e188348%_
              _%$e188348%_
              (let ((_%$e188351%_
                     (eq? (##structure-ref _%type188346%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e188351%_
                    _%$e188351%_
                    (let ((_%expr-type188355%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr188345%_))))
                      (if (not _%expr-type188355%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx188344%_
                             _%type188346%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type188355%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx188344%_
                                 _%type188346%_
                                 _%expr-type188355%_))
                              (let ((_%$e188359%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type188355%_
                                        'gxc#!abort::t))))
                                (if _%$e188359%_
                                    _%$e188359%_
                                    (let ((_%$e188362%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type188355%_
                                              _%type188346%_))))
                                      (if _%$e188362%_
                                          _%$e188362%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx188344%_
                                             _%type188346%_
                                             _%expr-type188355%_)))))))))))))))))
