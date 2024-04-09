(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712696219)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp191339 (list gxc#::basic-xform::t))
            (__tmp191338 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp191339
         '()
         __tmp191338
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args190888%_
        (apply make-instance gxc#::optimize-call::t _%$args190888%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp191340
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
        (__make-promise __tmp191340)))
    (define gxc#apply-optimize-call
      (lambda (_%stx190880%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self190883%_
                (let ((__obj191330
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj191330))
               (__tmp191341
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190883%_ _%stx190880%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191341
           gxc#current-compile-method
           _%self190883%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp191343 (list gxc#::void::t))
            (__tmp191342 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp191343
         '()
         __tmp191342
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args190877%_
        (apply make-instance gxc#::check-return-type::t _%$args190877%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp191344
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
        (__make-promise __tmp191344)))
    (define gxc#apply-check-return-type
      (lambda (_%stx190869%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self190872%_
                (let ((__obj191332
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj191332))
               (__tmp191345
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190872%_ _%stx190869%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191345
           gxc#current-compile-method
           _%self190872%_))))
    (define gxc#optimize-call%
      (lambda (_%self190470%_ _%stx190471%_)
        (let* ((_%__stx190943190944%_ _%stx190471%_)
               (_%g190474190520%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190943190944%_)))))
          (let ((_%__kont190945190946%_
                 (lambda (_%L190663%_ _%L190664%_)
                   (let* ((_%rator-id190684%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L190664%_)))
                          (_%rator-type190686%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id190684%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type190686%_))
                             (eq? (##structure-ref
                                   _%rator-type190686%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self190470%_ _%stx190471%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type190686%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp191346
                                      (##structure-ref
                                       _%rator-type190686%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id190684%_
                                  '" => "
                                  _%rator-type190686%_
                                  '" "
                                  __tmp191346))
                               (let* ((_%optimized190701%_
                                       (let ((__method191333
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type190686%_
                                                 'optimize-call))))
                                         (if __method191333
                                             (__method191333
                                              _%rator-type190686%_
                                              _%self190470%_
                                              _%stx190471%_
                                              (let ((__tmp191347
                                                     (lambda (_%g190693190696%_
                                                              _%g190694190698%_)
                                                       (cons _%g190693190696%_
                                                             _%g190694190698%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp191347
                                                 '()
                                                 _%L190663%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type190686%_
                                                      'optimize-call)))))
                                      (_%__stx190891190892%_
                                       _%optimized190701%_)
                                      (_%g190704190733%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx190891190892%_)))))
                                 (let ((_%__kont190893190894%_
                                        (lambda (_%L190801%_ _%L190802%_)
                                          (let* ((_%optimized-rator-id190829%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L190802%_)))
                                                 (_%rator-type190834%_
                                                  (let ((_%$e190831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id190829%_))))
                                                    (if _%$e190831%_
                                                        _%$e190831%_
                                                        _%rator-type190686%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type190834%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id190829%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type190834%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type190834%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized190701%_
                                                (let ((__tmp191348
                                                       (let ((__tmp191349
                                                              (let ((__tmp191352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L190802%_ '())))
                            (__tmp191350
                             (let ((__tmp191351
                                    (lambda (_%g190842190845%_
                                             _%g190843190847%_)
                                      (cons _%g190842190845%_
                                            _%g190843190847%_))))
                               (declare (not safe))
                               (__foldr1 __tmp191351 '() _%L190801%_))))
                        (declare (not safe))
                        (cons __tmp191352 __tmp191350))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp191349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp191348
                                                   _%stx190471%_))))))
                                       (_%__kont190897190898%_
                                        (lambda () _%optimized190701%_)))
                                   (let ((_%__match190940190941%_
                                          (lambda (_%e190710190745%_
                                                   _%hd190709190748%_
                                                   _%tl190708190750%_
                                                   _%e190713190753%_
                                                   _%hd190712190756%_
                                                   _%tl190711190758%_
                                                   _%e190716190761%_
                                                   _%hd190715190764%_
                                                   _%tl190714190766%_
                                                   _%e190719190769%_
                                                   _%hd190718190772%_
                                                   _%tl190717190774%_
                                                   _%__splice190895190896%_
                                                   _%target190720190777%_
                                                   _%tl190722190779%_)
                                            (letrec ((_%loop190723190782%_
                                                      (lambda (_%hd190721190785%_
                                                               _%arg190727190787%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd190721190785%_))
                                                            (let ((_%e190724190790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd190721190785%_))))
                      (let ((_%lp-tl190726190795%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190724190790%_)))
                            (_%lp-hd190725190793%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190724190790%_))))
                        (let ((__tmp191353
                               (cons _%lp-hd190725190793%_
                                     _%arg190727190787%_)))
                          (declare (not safe))
                          (_%loop190723190782%_
                           _%lp-tl190726190795%_
                           __tmp191353))))
                    (let ((_%arg190728190798%_ (reverse _%arg190727190787%_)))
                      (_%__kont190893190894%_
                       _%arg190728190798%_
                       _%hd190718190772%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop190723190782%_
                                                 _%target190720190777%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx190891190892%_))
                                         (let ((_%e190710190745%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx190891190892%_))))
                                           (let ((_%tl190708190750%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190710190745%_)))
                                                 (_%hd190709190748%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190710190745%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd190709190748%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd190709190748%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl190708190750%_))
                                                         (let ((_%e190713190753%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl190708190750%_))))
                   (let ((_%tl190711190758%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e190713190753%_)))
                         (_%hd190712190756%_
                          (let ()
                            (declare (not safe))
                            (##car _%e190713190753%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd190712190756%_))
                         (let ((_%e190716190761%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd190712190756%_))))
                           (let ((_%tl190714190766%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e190716190761%_)))
                                 (_%hd190715190764%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e190716190761%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd190715190764%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd190715190764%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl190714190766%_))
                                         (let ((_%e190719190769%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl190714190766%_))))
                                           (let ((_%tl190717190774%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190719190769%_)))
                                                 (_%hd190718190772%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190719190769%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl190717190774%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl190711190758%_))
                                                     (let ((_%__splice190895190896%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl190711190758%_
                                                               '0))))
                                                       (let ((_%tl190722190779%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice190895190896%_ '1)))
                     (_%target190720190777%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice190895190896%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190722190779%_))
                     (_%__match190940190941%_
                      _%e190710190745%_
                      _%hd190709190748%_
                      _%tl190708190750%_
                      _%e190713190753%_
                      _%hd190712190756%_
                      _%tl190711190758%_
                      _%e190716190761%_
                      _%hd190715190764%_
                      _%tl190714190766%_
                      _%e190719190769%_
                      _%hd190718190772%_
                      _%tl190717190774%_
                      _%__splice190895190896%_
                      _%target190720190777%_
                      _%tl190722190779%_)
                     (_%__kont190897190898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190897190898%_))
                                                 (_%__kont190897190898%_))))
                                         (_%__kont190897190898%_))
                                     (_%__kont190897190898%_))
                                 (_%__kont190897190898%_))))
                         (_%__kont190897190898%_))))
                 (_%__kont190897190898%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190897190898%_))
                                                 (_%__kont190897190898%_))))
                                         (_%__kont190897190898%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type190686%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type190686%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp191354
                                        (let ((__tmp191355
                                               (let ((__tmp191358
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%L190664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191356
                                                      (map (lambda (_%g190853190855%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self190470%_ _%g190853190855%_)))
                   (let ((__tmp191357
                          (lambda (_%g190857190860%_ _%g190858190862%_)
                            (cons _%g190857190860%_ _%g190858190862%_))))
                     (declare (not safe))
                     (__foldr1 __tmp191357 '() _%L190663%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp191358
                                                       __tmp191356))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp191355))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191354
                                    _%stx190471%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx190471%_
                                    _%rator-type190686%_))))))))
                (_%__kont190949190950%_
                 (lambda (_%L190565%_ _%L190566%_)
                   (let ((_%rator-type190583%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L190566%_))))
                     (if (and _%rator-type190583%_
                              (eq? (##structure-ref
                                    _%rator-type190583%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp191359
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type190583%_))))
                                (declare (not safe))
                                (not __tmp191359))
                              (let ((__tmp191360
                                     (and (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%rator-type190583%_
                                             'gxc#!procedure::t))
                                          (eq? (let ()
                                                 (declare (not safe))
                                                 (gxc#!procedure-origin
                                                  _%rator-type190583%_))
                                               (##structure-ref
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#current-expander-context))
                                                '1
                                                gx#expander-context::t
                                                '#f)))))
                                (declare (not safe))
                                (not __tmp191360)))
                         (let ((__tmp191361
                                (let ((__tmp191362
                                       (let ((__tmp191365
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self190470%_
                                                 _%L190566%_)))
                                             (__tmp191363
                                              (map (lambda (_%g190585190587%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self190470%_
                                                        _%g190585190587%_)))
                                                   (let ((__tmp191364
                                                          (lambda (_%g190589190592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g190590190594%_)
                    (cons _%g190589190592%_ _%g190590190594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp191364
                                                      '()
                                                      _%L190565%_)))))
                                         (declare (not safe))
                                         (cons __tmp191365 __tmp191363))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp191362))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191361 _%stx190471%_))
                         (if (or (let ()
                                   (declare (not safe))
                                   (not _%rator-type190583%_))
                                 (let ((__tmp191366
                                        (##structure-ref
                                         _%rator-type190583%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp191366 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self190470%_ _%stx190471%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx190471%_
                                _%rator-type190583%_))))))))
            (let* ((_%__match191010191011%_
                    (lambda (_%e190503190525%_
                             _%hd190502190528%_
                             _%tl190501190530%_
                             _%e190506190533%_
                             _%hd190505190536%_
                             _%tl190504190538%_
                             _%__splice190951190952%_
                             _%target190507190541%_
                             _%tl190509190543%_)
                      (letrec ((_%loop190510190546%_
                                (lambda (_%hd190508190549%_
                                         _%rand190514190551%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190508190549%_))
                                      (let ((_%e190511190554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190508190549%_))))
                                        (let ((_%lp-tl190513190559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190511190554%_)))
                                              (_%lp-hd190512190557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190511190554%_))))
                                          (let ((__tmp191367
                                                 (cons _%lp-hd190512190557%_
                                                       _%rand190514190551%_)))
                                            (declare (not safe))
                                            (_%loop190510190546%_
                                             _%lp-tl190513190559%_
                                             __tmp191367))))
                                      (let ((_%rand190515190562%_
                                             (reverse _%rand190514190551%_)))
                                        (_%__kont190949190950%_
                                         _%rand190515190562%_
                                         _%hd190505190536%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190510190546%_ _%target190507190541%_ '())))))
                   (_%__match190990190991%_
                    (lambda (_%e190480190607%_
                             _%hd190479190610%_
                             _%tl190478190612%_
                             _%e190483190615%_
                             _%hd190482190618%_
                             _%tl190481190620%_
                             _%e190486190623%_
                             _%hd190485190626%_
                             _%tl190484190628%_
                             _%e190489190631%_
                             _%hd190488190634%_
                             _%tl190487190636%_
                             _%__splice190947190948%_
                             _%target190490190639%_
                             _%tl190492190641%_)
                      (letrec ((_%loop190493190644%_
                                (lambda (_%hd190491190647%_
                                         _%rand190497190649%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190491190647%_))
                                      (let ((_%e190494190652%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190491190647%_))))
                                        (let ((_%lp-tl190496190657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190494190652%_)))
                                              (_%lp-hd190495190655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190494190652%_))))
                                          (let ((__tmp191368
                                                 (cons _%lp-hd190495190655%_
                                                       _%rand190497190649%_)))
                                            (declare (not safe))
                                            (_%loop190493190644%_
                                             _%lp-tl190496190657%_
                                             __tmp191368))))
                                      (let ((_%rand190498190660%_
                                             (reverse _%rand190497190649%_)))
                                        (_%__kont190945190946%_
                                         _%rand190498190660%_
                                         _%hd190488190634%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190493190644%_
                           _%target190490190639%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190943190944%_))
                  (let ((_%e190480190607%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190943190944%_))))
                    (let ((_%tl190478190612%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190480190607%_)))
                          (_%hd190479190610%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190480190607%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190478190612%_))
                          (let ((_%e190483190615%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190478190612%_))))
                            (let ((_%tl190481190620%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190483190615%_)))
                                  (_%hd190482190618%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190483190615%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190482190618%_))
                                  (let ((_%e190486190623%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190482190618%_))))
                                    (let ((_%tl190484190628%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190486190623%_)))
                                          (_%hd190485190626%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190486190623%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190485190626%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd190485190626%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190484190628%_))
                                                  (let ((_%e190489190631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190484190628%_))))
                                                    (let ((_%tl190487190636%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190489190631%_)))
                                                          (_%hd190488190634%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190489190631%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190487190636%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl190481190620%_))
                      (let ((_%__splice190947190948%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190481190620%_
                                '0))))
                        (let ((_%tl190492190641%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190947190948%_ '1)))
                              (_%target190490190639%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190947190948%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190492190641%_))
                              (_%__match190990190991%_
                               _%e190480190607%_
                               _%hd190479190610%_
                               _%tl190478190612%_
                               _%e190483190615%_
                               _%hd190482190618%_
                               _%tl190481190620%_
                               _%e190486190623%_
                               _%hd190485190626%_
                               _%tl190484190628%_
                               _%e190489190631%_
                               _%hd190488190634%_
                               _%tl190487190636%_
                               _%__splice190947190948%_
                               _%target190490190639%_
                               _%tl190492190641%_)
                              (let ()
                                (declare (not safe))
                                (_%g190474190520%_)))))
                      (let () (declare (not safe)) (_%g190474190520%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl190481190620%_))
                      (let ((_%__splice190951190952%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190481190620%_
                                '0))))
                        (let ((_%tl190509190543%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190951190952%_ '1)))
                              (_%target190507190541%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190951190952%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190509190543%_))
                              (_%__match191010191011%_
                               _%e190480190607%_
                               _%hd190479190610%_
                               _%tl190478190612%_
                               _%e190483190615%_
                               _%hd190482190618%_
                               _%tl190481190620%_
                               _%__splice190951190952%_
                               _%target190507190541%_
                               _%tl190509190543%_)
                              (let ()
                                (declare (not safe))
                                (_%g190474190520%_)))))
                      (let () (declare (not safe)) (_%g190474190520%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl190481190620%_))
                                                      (let ((_%__splice190951190952%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl190481190620%_ '0))))
                (let ((_%tl190509190543%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190951190952%_ '1)))
                      (_%target190507190541%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190951190952%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190509190543%_))
                      (_%__match191010191011%_
                       _%e190480190607%_
                       _%hd190479190610%_
                       _%tl190478190612%_
                       _%e190483190615%_
                       _%hd190482190618%_
                       _%tl190481190620%_
                       _%__splice190951190952%_
                       _%target190507190541%_
                       _%tl190509190543%_)
                      (let () (declare (not safe)) (_%g190474190520%_)))))
              (let () (declare (not safe)) (_%g190474190520%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190481190620%_))
                                                  (let ((_%__splice190951190952%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190481190620%_
                                                            '0))))
                                                    (let ((_%tl190509190543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190951190952%_
                                                              '1)))
                                                          (_%target190507190541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190951190952%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190509190543%_))
                                                          (_%__match191010191011%_
                                                           _%e190480190607%_
                                                           _%hd190479190610%_
                                                           _%tl190478190612%_
                                                           _%e190483190615%_
                                                           _%hd190482190618%_
                                                           _%tl190481190620%_
                                                           _%__splice190951190952%_
                                                           _%target190507190541%_
                                                           _%tl190509190543%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190474190520%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190474190520%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl190481190620%_))
                                              (let ((_%__splice190951190952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl190481190620%_
                                                        '0))))
                                                (let ((_%tl190509190543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190951190952%_
                                                          '1)))
                                                      (_%target190507190541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190951190952%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190509190543%_))
                                                      (_%__match191010191011%_
                                                       _%e190480190607%_
                                                       _%hd190479190610%_
                                                       _%tl190478190612%_
                                                       _%e190483190615%_
                                                       _%hd190482190618%_
                                                       _%tl190481190620%_
                                                       _%__splice190951190952%_
                                                       _%target190507190541%_
                                                       _%tl190509190543%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190474190520%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190474190520%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190481190620%_))
                                      (let ((_%__splice190951190952%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190481190620%_
                                                '0))))
                                        (let ((_%tl190509190543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190951190952%_
                                                  '1)))
                                              (_%target190507190541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190951190952%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190509190543%_))
                                              (_%__match191010191011%_
                                               _%e190480190607%_
                                               _%hd190479190610%_
                                               _%tl190478190612%_
                                               _%e190483190615%_
                                               _%hd190482190618%_
                                               _%tl190481190620%_
                                               _%__splice190951190952%_
                                               _%target190507190541%_
                                               _%tl190509190543%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190474190520%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190474190520%_))))))
                          (let () (declare (not safe)) (_%g190474190520%_)))))
                  (let () (declare (not safe)) (_%g190474190520%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190432%_ _%ctx190433%_ _%stx190434%_ _%args190435%_)
        (let ((_%self190438%_ _%self190432%_))
          (if (let ((__method191334
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self190438%_ 'check-arguments))))
                (if __method191334
                    (__method191334
                     _%self190438%_
                     _%ctx190433%_
                     _%stx190434%_
                     _%args190435%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self190438%_
                             'check-arguments))))
              (let* ((_%signature190448%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190438%_ '2 '#f '#f)))
                     (_%signature190450%_ _%signature190448%_)
                     (_%$e190460%_
                      (if _%signature190450%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190450%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e190460%_
                    ((lambda (_%unchecked190463%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked190463%_))
                           (let ((__tmp191369
                                  (let ((__tmp191370
                                         (let ((__tmp191372
                                                (cons '%#ref
                                                      (cons _%unchecked190463%_
                                                            '())))
                                               (__tmp191371
                                                (map (lambda (_%g190464190466%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%ctx190433%_
                                                          _%g190464190466%_)))
                                                     _%args190435%_)))
                                           (declare (not safe))
                                           (cons __tmp191372 __tmp191371))))
                                    (declare (not safe))
                                    (cons '%#call __tmp191370))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191369 _%stx190434%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx190433%_ _%stx190434%_))))
                     _%$e190460%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx190433%_ _%stx190434%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx190433%_ _%stx190434%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self190183%_ _%ctx190184%_ _%stx190185%_ _%args190186%_)
        (let ()
          (let* ((_%self190189%_ _%self190183%_)
                 (_%signature190198190200%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self190189%_ '2 '#f '#f))))
            (if _%signature190198190200%_
                (let* ((_%signature190203%_ _%signature190198190200%_)
                       (_%argument-types190204190206%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature190203%_
                           '3
                           '#f
                           '#f))))
                  (if _%argument-types190204190206%_
                      (let* ((_%argument-types190209%_
                              _%argument-types190204190206%_)
                             (_%argument-types190214%_
                              (let ((__tmp191373
                                     (lambda (_%t190212%_)
                                       (if _%t190212%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx190185%_
                                              _%t190212%_))
                                           '#f))))
                                (declare (not safe))
                                (gxc#map*
                                 __tmp191373
                                 _%argument-types190209%_))))
                        (let _%loop190216%_ ((_%rest-args190218%_
                                              _%args190186%_)
                                             (_%rest-types190219%_
                                              _%argument-types190214%_)
                                             (_%result190220%_ '#t))
                          (let* ((_%rest-args190221190229%_
                                  _%rest-args190218%_)
                                 (_%else190223190237%_
                                  (lambda () _%result190220%_))
                                 (_%K190225190298%_
                                  (lambda (_%rest-args190240%_ _%arg190241%_)
                                    (let* ((_%rest-types190242190253%_
                                            _%rest-types190219%_)
                                           (_%E190246190257%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%rest-types190242190253%_
                                                       '([type . rest-types])
                                                       '([])
                                                       '(tail-type)))
                                              '#!void)))
                                      (let ((_%K190249190286%_
                                             (lambda (_%rest-types190283%_
                                                      _%type190284%_)
                                               (let ((__tmp191374
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _%stx190185%_
                                                             _%arg190241%_
                                                             _%type190284%_))
                                                          _%result190220%_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_%loop190216%_
                                                  _%rest-args190240%_
                                                  _%rest-types190283%_
                                                  __tmp191374))))
                                            (_%K190248190277%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _%stx190185%_
                                                  _%argument-types190214%_))))
                                            (_%K190247190267%_
                                             (lambda (_%tail-type190261%_)
                                               (if (let ((__tmp191375
                                                          (lambda (_%g190262190264%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _%stx190185%_
                                                               _%g190262190264%_
                                                               _%tail-type190261%_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp191375
                                                      _%rest-args190240%_))
                                                   _%result190220%_
                                                   '#f))))
                                        (let ((_%try-match190244190280%_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _%rest-types190242190253%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K190248190277%_))
                                                     (let ((_%tail-type190270%_
                                                            _%rest-types190242190253%_))
                                                       (declare (not safe))
                                                       (_%K190247190267%_
                                                        _%tail-type190270%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%rest-types190242190253%_))
                                              (let ((_%tl190251190291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%rest-types190242190253%_)))
                                                    (_%hd190250190289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%rest-types190242190253%_))))
                                                (let ((_%type190294%_
                                                       _%hd190250190289%_)
                                                      (_%rest-types190296%_
                                                       _%tl190251190291%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%K190249190286%_
                                                     _%rest-types190296%_
                                                     _%type190294%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%try-match190244190280%_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest-args190221190229%_))
                                (let ((_%hd190226190301%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest-args190221190229%_)))
                                      (_%tl190227190303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest-args190221190229%_))))
                                  (let* ((_%arg190306%_ _%hd190226190301%_)
                                         (_%rest-args190308%_
                                          _%tl190227190303%_))
                                    (declare (not safe))
                                    (_%K190225190298%_
                                     _%rest-args190308%_
                                     _%arg190306%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else190223190237%_))))))
                      '#f))
                '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self189994%_ _%ctx189995%_ _%stx189996%_ _%args189997%_)
        (let ((_%self190000%_ _%self189994%_))
          (let* ((_%g190010190020%_
                  (lambda (_%g190011190017%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g190011190017%_))))
                 (_%g190009190058%_
                  (lambda (_%g190011190023%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g190011190023%_))
                        (let ((_%e190015190025%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g190011190023%_))))
                          (let ((_%hd190014190028%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190015190025%_)))
                                (_%tl190013190030%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190015190025%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl190013190030%_))
                                ((lambda (_%L190033%_)
                                   (let* ((_%klass190045%_
                                           (let ((__tmp191376
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self190000%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189996%_
                                              __tmp191376)))
                                          (_%object190047%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189995%_
                                              _%L190033%_)))
                                          (_%instance?190052%_
                                           (let ((_%$e190049%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object190047%_
                                                     _%klass190045%_))))
                                             (if _%$e190049%_
                                                 _%$e190049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L190033%_
                                                    _%klass190045%_))))))
                                     (if _%instance?190052%_
                                         (let ((__tmp191377
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object190047%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L190033%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object190047%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191377
                                            _%stx189996%_))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#xform-call%
                                            _%ctx189995%_
                                            _%stx189996%_)))))
                                 _%hd190014190028%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g190010190020%_ _%g190011190023%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g190010190020%_ _%g190011190023%_))))))
            (declare (not safe))
            (_%g190009190058%_ _%args189997%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self189790%_ _%ctx189791%_ _%stx189792%_ _%args189793%_)
        (let ((_%self189796%_ _%self189790%_))
          (let* ((_%g189806189816%_
                  (lambda (_%g189807189813%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189807189813%_))))
                 (_%g189805189869%_
                  (lambda (_%g189807189819%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189807189819%_))
                        (let ((_%e189811189821%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189807189819%_))))
                          (let ((_%hd189810189824%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189811189821%_)))
                                (_%tl189809189826%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189811189821%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189809189826%_))
                                ((lambda (_%L189829%_)
                                   (let* ((_%klass189841%_
                                           (let ((__tmp191378
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189796%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189792%_
                                              __tmp191378)))
                                          (_%object189843%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189791%_
                                              _%L189829%_)))
                                          (_%instance?189848%_
                                           (let ((_%$e189845%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189843%_
                                                     _%klass189841%_))))
                                             (if _%$e189845%_
                                                 _%$e189845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189829%_
                                                    _%klass189841%_)))))
                                          (_%klass189851%_ _%klass189841%_))
                                     (if _%instance?189848%_
                                         (let ((__tmp191379
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189843%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189829%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189843%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191379
                                            _%stx189792%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass189851%_
                                                '8
                                                '#f
                                                '#f))
                                             (let ((__tmp191380
                                                    (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass189851%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%object189843%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191380
                                                _%stx189792%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass189851%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191381
                                                        (cons '%#struct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass189851%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%object189843%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191381
                                                    _%stx189792%_))
                                                 (let ((__tmp191382
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'class-instance? '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189796%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons _%object189843%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191382
                                                    _%stx189792%_)))))))
                                 _%hd189810189824%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189806189816%_ _%g189807189819%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189806189816%_ _%g189807189819%_))))))
            (declare (not safe))
            (_%g189805189869%_ _%args189793%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx189453%_)
        (let* ((_%__stx191020191021%_ _%stx189453%_)
               (_%g189458189499%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191020191021%_)))))
          (let ((_%__kont191022191023%_ (lambda () '#t))
                (_%__kont191024191025%_ (lambda () '#t))
                (_%__kont191026191027%_
                 (lambda (_%L189567%_ _%L189568%_)
                   (let ((_%rator-type189589189591%_
                          (let ((__tmp191383
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189568%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp191383))))
                     (if _%rator-type189589189591%_
                         (let* ((_%rator-type189594%_
                                 _%rator-type189589189591%_)
                                (_%rator-signature189595189597%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type189594%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type189594%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature189595189597%_
                               (let* ((_%rator-signature189600%_
                                       _%rator-signature189595189597%_)
                                      (_%rator-effect189601189603%_
                                       (if _%rator-signature189600%_
                                           (##direct-structure-ref
                                            _%rator-signature189600%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect189601189603%_
                                     (let ((_%rator-effect189606%_
                                            _%rator-effect189601189603%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect189606%_)
                                               (equal? '(alloc)
                                                       _%rator-effect189606%_))
                                           (let ((__tmp191384
                                                  (let ((__tmp191385
                                                         (lambda (_%g189611189614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g189612189616%_)
                   (cons _%g189611189614%_ _%g189612189616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp191385
                                                     '()
                                                     _%L189567%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp191384))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont191030191031%_ (lambda () '#f)))
            (let ((_%__match191109191110%_
                   (lambda (_%e189476189511%_
                            _%hd189475189514%_
                            _%tl189474189516%_
                            _%e189479189519%_
                            _%hd189478189522%_
                            _%tl189477189524%_
                            _%e189482189527%_
                            _%hd189481189530%_
                            _%tl189480189532%_
                            _%e189485189535%_
                            _%hd189484189538%_
                            _%tl189483189540%_
                            _%__splice191028191029%_
                            _%target189486189543%_
                            _%tl189488189545%_)
                     (letrec ((_%loop189489189548%_
                               (lambda (_%hd189487189551%_
                                        _%rand189493189553%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd189487189551%_))
                                     (let ((_%e189490189556%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd189487189551%_))))
                                       (let ((_%lp-tl189492189561%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e189490189556%_)))
                                             (_%lp-hd189491189559%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e189490189556%_))))
                                         (let ((__tmp191386
                                                (cons _%lp-hd189491189559%_
                                                      _%rand189493189553%_)))
                                           (declare (not safe))
                                           (_%loop189489189548%_
                                            _%lp-tl189492189561%_
                                            __tmp191386))))
                                     (let ((_%rand189494189564%_
                                            (reverse _%rand189493189553%_)))
                                       (_%__kont191026191027%_
                                        _%rand189494189564%_
                                        _%hd189484189538%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop189489189548%_ _%target189486189543%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191020191021%_))
                  (let ((_%e189462189647%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191020191021%_))))
                    (let ((_%tl189460189652%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189462189647%_)))
                          (_%hd189461189650%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189462189647%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189461189650%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd189461189650%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189460189652%_))
                                  (let ((_%e189465189655%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189460189652%_))))
                                    (let ((_%tl189463189660%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189465189655%_)))
                                          (_%hd189464189658%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189465189655%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189463189660%_))
                                          (_%__kont191022191023%_)
                                          (_%__kont191030191031%_))))
                                  (_%__kont191030191031%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189461189650%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189460189652%_))
                                      (let ((_%e189471189632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189460189652%_))))
                                        (let ((_%tl189469189637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189471189632%_)))
                                              (_%hd189470189635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189471189632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189469189637%_))
                                              (_%__kont191024191025%_)
                                              (_%__kont191030191031%_))))
                                      (_%__kont191030191031%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd189461189650%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189460189652%_))
                                          (let ((_%e189479189519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189460189652%_))))
                                            (let ((_%tl189477189524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189479189519%_)))
                                                  (_%hd189478189522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189479189519%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189478189522%_))
                                                  (let ((_%e189482189527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189478189522%_))))
                                                    (let ((_%tl189480189532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189482189527%_)))
                                                          (_%hd189481189530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189482189527%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189481189530%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd189481189530%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189480189532%_))
                          (let ((_%e189485189535%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189480189532%_))))
                            (let ((_%tl189483189540%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189485189535%_)))
                                  (_%hd189484189538%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189485189535%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189483189540%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189477189524%_))
                                      (let ((_%__splice191028191029%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189477189524%_
                                                '0))))
                                        (let ((_%tl189488189545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191028191029%_
                                                  '1)))
                                              (_%target189486189543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191028191029%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189488189545%_))
                                              (_%__match191109191110%_
                                               _%e189462189647%_
                                               _%hd189461189650%_
                                               _%tl189460189652%_
                                               _%e189479189519%_
                                               _%hd189478189522%_
                                               _%tl189477189524%_
                                               _%e189482189527%_
                                               _%hd189481189530%_
                                               _%tl189480189532%_
                                               _%e189485189535%_
                                               _%hd189484189538%_
                                               _%tl189483189540%_
                                               _%__splice191028191029%_
                                               _%target189486189543%_
                                               _%tl189488189545%_)
                                              (_%__kont191030191031%_))))
                                      (_%__kont191030191031%_))
                                  (_%__kont191030191031%_))))
                          (_%__kont191030191031%_))
                      (_%__kont191030191031%_))
                  (_%__kont191030191031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont191030191031%_))))
                                          (_%__kont191030191031%_))
                                      (_%__kont191030191031%_))))
                          (_%__kont191030191031%_))))
                  (_%__kont191030191031%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx189448%_ _%klass189449%_)
        (let ((_%expr-type189451%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx189448%_))))
          (if _%expr-type189451%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type189451%_ _%klass189449%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx189426%_ _%expr189427%_ _%type189428%_)
        (if (let () (declare (not safe)) (not _%type189428%_))
            (let () '#f)
            (let ((_%$e189431%_
                   (eq? (##structure-ref _%type189428%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e189431%_
                  _%$e189431%_
                  (let ((_%expr-type189435%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr189427%_))))
                    (if (let () (declare (not safe)) (not _%expr-type189435%_))
                        (let () '#f)
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type189435%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            (let () '#f)
                            (let ((_%$e189439%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type189435%_
                                      'gxc#!abort::t))))
                              (if _%$e189439%_
                                  _%$e189439%_
                                  (let ((_%$e189442%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type189435%_
                                            _%type189428%_))))
                                    (if _%$e189442%_
                                        _%$e189442%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type189428%_))
                                            (let () '#f)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type189428%_
                                                   _%expr-type189435%_))
                                                (let () '#f)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx189426%_
                                                   _%expr189427%_
                                                   _%expr-type189435%_
                                                   _%type189428%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self189240%_ _%ctx189241%_ _%stx189242%_ _%args189243%_)
        (let ((_%self189246%_ _%self189240%_))
          (let* ((_%klass189256%_
                  (let ((__tmp191387
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189246%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#optimizer-resolve-class _%stx189242%_ __tmp191387)))
                 (_%fields189258%_
                  (length (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass189256%_
                             '5
                             '#f
                             '#f))))
                 (_%args189264%_
                  (map (lambda (_%g189259189261%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%ctx189241%_ _%g189259189261%_)))
                       _%args189243%_))
                 (_%inline-make-object189266%_
                  (cons '%#begin-annotation
                        (cons (cons '@type
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189246%_
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
                             _%self189246%_
                             '1
                             '#f
                             '#f))
                          '()))
              (make-list _%fields189258%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
            (let* ((_%klass189269%_ _%klass189256%_)
                   (_%$e189283%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass189269%_ '6 '#f '#f))))
              (if _%$e189283%_
                  ((lambda (_%ctor189286%_)
                     (let ((_%$obj189288%_
                            (let ((__tmp191388
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp191388)))
                           (_%ctor-impl189289%_
                            (let ()
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               _%klass189269%_
                               _%ctor189286%_))))
                       (let ((__tmp191389
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj189288%_ '())
                                                      (cons _%inline-make-object189266%_
                                                            '()))
                                                '())
                                          (cons (cons '%#begin
                                                      (cons (if _%ctor-impl189289%_
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl189289%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189288%_ '()))
                                          _%args189264%_)))
                        (let ((_%$ctor189291%_
                               (let ((__tmp191390
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__constructor))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191390))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$ctor189291%_ '())
                                                  (cons (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'direct-method-ref '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189246%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj189288%_ '()))
                                        (cons (cons '%#quote
                                                    (cons _%ctor189286%_ '()))
                                              '())))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#ref
                                                              (cons _%$ctor189291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#call
                            (cons (cons '%#ref (cons _%$ctor189291%_ '()))
                                  (cons (cons '%#ref (cons _%$obj189288%_ '()))
                                        _%args189264%_)))
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
                                 _%self189246%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons 'method: '()))
                        (cons (cons '%#quote (cons _%ctor189286%_ '()))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                    (cons (cons '%#ref (cons _%$obj189288%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191389 _%stx189242%_))))
                   _%$e189283%_)
                  (let ((_%$e189293%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass189269%_
                            '10
                            '#f
                            '#f))))
                    (if _%$e189293%_
                        ((lambda (_%metaclass189296%_)
                           (let* ((_%$obj189298%_
                                   (let ((__tmp191391
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191391)))
                                  (_%metakons189300%_
                                   (let ((__tmp191392
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx189242%_
                                             _%metaclass189296%_))))
                                     (declare (not safe))
                                     (gxc#!class-lookup-method
                                      __tmp191392
                                      'instance-init!)))
                                  (__tmp191393
                                   (cons '%#let-values
                                         (cons (cons (cons (cons _%$obj189298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%inline-make-object189266%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (cons '%#begin
                                                           (cons (if _%metakons189300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons189300%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189246%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj189298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args189264%_))))
                             (cons '%#call
                                   (cons (cons '%#ref (cons 'call-method '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189246%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons 'instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj189298%_ '()))
                   _%args189264%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (cons '%#ref (cons _%$obj189298%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp191393
                              _%stx189242%_)))
                         _%$e189293%_)
                        (if (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass189269%_
                               '7
                               '#f
                               '#f))
                            (let ()
                              (if (let ((__tmp191394
                                         (let ()
                                           (declare (not safe))
                                           (##length _%args189264%_))))
                                    (declare (not safe))
                                    (##fx= __tmp191394 _%fields189258%_))
                                  (let ((__tmp191395
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189246%_
                            '1
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '##structure '()))
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self189246%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _%args189264%_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp191395
                                     _%stx189242%_))
                                  (let ((__tmp191397
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self189246%_
                                            '1
                                            '#f
                                            '#f)))
                                        (__tmp191396
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass189269%_
                                            '5
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _%stx189242%_
                                     __tmp191397
                                     __tmp191396))))
                            (let ((_%$obj189305%_
                                   (let ((__tmp191398
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191398))))
                              (let _%lp189307%_ ((_%rest189309%_
                                                  _%args189264%_)
                                                 (_%initializers189310%_ '()))
                                (let* ((_%__stx191112191113%_ _%rest189309%_)
                                       (_%g189314189335%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx191112191113%_)))))
                                  (let ((_%__kont191114191115%_
                                         (lambda (_%L189389%_
                                                  _%L189390%_
                                                  _%L189391%_)
                                           (let* ((_%slot189418%_
                                                   (let ((__tmp191399
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%L189391%_))))
                                                     (declare (not safe))
                                                     (keyword->symbol
                                                      __tmp191399)))
                                                  (_%off189420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass189269%_
                                                      _%slot189418%_))))
                                             (if _%off189420%_
                                                 (let ((__tmp191400
                                                        (cons (cons _%off189420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L189390%_)
                      _%initializers189310%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp189307%_
                                                    _%L189389%_
                                                    __tmp191400))
                                                 (let ((__tmp191401
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189246%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"unknown slot"
                                                    _%stx189242%_
                                                    __tmp191401
                                                    _%slot189418%_))))))
                                        (_%__kont191116191117%_
                                         (lambda ()
                                           (let ((__tmp191402
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189266%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (let ((__tmp191405
                                         (cons (cons '%#ref
                                                     (cons _%$obj189305%_ '()))
                                               '()))
                                        (__tmp191403
                                         (let ((__tmp191404
                                                (lambda (_%i189349%_
                                                         _%r189350%_)
                                                  (cons (cons '%#struct-unchecked-set!
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self189246%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons (car _%i189349%_) '()))
                                  (cons (cons '%#ref (cons _%$obj189305%_ '()))
                                        (cons (cdr _%i189349%_) '())))))
                _%r189350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            __tmp191404
                                            '()
                                            _%initializers189310%_))))
                                    (declare (not safe))
                                    (__foldr1 cons __tmp191405 __tmp191403)))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191402
                                              _%stx189242%_))))
                                        (_%__kont191118191119%_
                                         (lambda ()
                                           (let ((__tmp191406
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189266%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj189305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%args189264%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons '%#ref
                                                    (cons _%$obj189305%_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191406
                                              _%stx189242%_)))))
                                    (let* ((_%g189312189352%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%__stx191112191113%_))
                                                  (_%__kont191116191117%_)
                                                  (_%__kont191118191119%_))))
                                           (_%__match191149191150%_
                                            (lambda (_%e189321189357%_
                                                     _%hd189320189360%_
                                                     _%tl189319189362%_
                                                     _%e189324189365%_
                                                     _%hd189323189368%_
                                                     _%tl189322189370%_
                                                     _%e189327189373%_
                                                     _%hd189326189376%_
                                                     _%tl189325189378%_
                                                     _%e189330189381%_
                                                     _%hd189329189384%_
                                                     _%tl189328189386%_)
                                              (let ((_%L189389%_
                                                     _%tl189328189386%_)
                                                    (_%L189390%_
                                                     _%hd189329189384%_)
                                                    (_%L189391%_
                                                     _%hd189326189376%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-keyword?
                                                       _%L189391%_))
                                                    (_%__kont191114191115%_
                                                     _%L189389%_
                                                     _%L189390%_
                                                     _%L189391%_)
                                                    (_%__kont191118191119%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%__stx191112191113%_))
                                          (let ((_%e189321189357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%__stx191112191113%_))))
                                            (let ((_%tl189319189362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189321189357%_)))
                                                  (_%hd189320189360%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189321189357%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189320189360%_))
                                                  (let ((_%e189324189365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189320189360%_))))
                                                    (let ((_%tl189322189370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189324189365%_)))
                                                          (_%hd189323189368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189324189365%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189323189368%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd189323189368%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189322189370%_))
                          (let ((_%e189327189373%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189322189370%_))))
                            (let ((_%tl189325189378%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189327189373%_)))
                                  (_%hd189326189376%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189327189373%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189325189378%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189319189362%_))
                                      (let ((_%e189330189381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189319189362%_))))
                                        (let ((_%tl189328189386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189330189381%_)))
                                              (_%hd189329189384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189330189381%_))))
                                          (_%__match191149191150%_
                                           _%e189321189357%_
                                           _%hd189320189360%_
                                           _%tl189319189362%_
                                           _%e189324189365%_
                                           _%hd189323189368%_
                                           _%tl189322189370%_
                                           _%e189327189373%_
                                           _%hd189326189376%_
                                           _%tl189325189378%_
                                           _%e189330189381%_
                                           _%hd189329189384%_
                                           _%tl189328189386%_)))
                                      (_%__kont191118191119%_))
                                  (_%__kont191118191119%_))))
                          (_%__kont191118191119%_))
                      (_%__kont191118191119%_))
                  (_%__kont191118191119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont191118191119%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189312189352%_)))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self189023%_ _%ctx189024%_ _%stx189025%_ _%args189026%_)
        (let ((_%self189029%_ _%self189023%_))
          (let* ((_%arguments-ok?189039%_
                  (let ((__method191335
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self189029%_ 'check-arguments))))
                    (if __method191335
                        (__method191335
                         _%self189029%_
                         _%ctx189024%_
                         _%stx189025%_
                         _%args189026%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self189029%_
                                 'check-arguments)))))
                 (_%g189041189051%_
                  (lambda (_%g189042189048%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189042189048%_))))
                 (_%g189040189115%_
                  (lambda (_%g189042189054%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189042189054%_))
                        (let ((_%e189046189056%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189042189054%_))))
                          (let ((_%hd189045189059%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189046189056%_)))
                                (_%tl189044189061%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189046189056%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189044189061%_))
                                ((lambda (_%L189064%_)
                                   (let* ((_%klass189077%_
                                           (let ((__tmp191407
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189029%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189025%_
                                              __tmp191407)))
                                          (_%field189079%_
                                           (let ((__tmp191408
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189029%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _%klass189077%_
                                              __tmp191408)))
                                          (_%object189081%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189024%_
                                              _%L189064%_)))
                                          (_%klass189084%_ _%klass189077%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass189084%_
                                            '8
                                            '#f
                                            '#f))
                                         (let ((__tmp191409
                                                (cons (if (or _%arguments-ok?189039%_
                                                              (let ((__tmp191410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self189029%_
                                '4
                                '#f
                                '#f))))
                        (declare (not safe))
                        (not __tmp191410)))
                  '%#struct-unchecked-ref
                  '%#struct-direct-ref)
              (cons (cons '%#ref
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self189029%_
                                   '1
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons _%field189079%_ '()))
                          (cons _%object189081%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191409
                                            _%stx189025%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass189084%_
                                                '7
                                                '#f
                                                '#f))
                                             (let ((__tmp191411
                                                    (cons (if (or _%arguments-ok?189039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp191412
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self189029%_
                                    '4
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (not __tmp191412)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self189029%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons _%field189079%_ '()))
                              (cons _%object189081%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191411
                                                _%stx189025%_))
                                             (let ((_%$e189103%_
                                                    (let ((__tmp191413
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189029%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (gxc#!class-slot-find-struct
                                                       _%klass189084%_
                                                       __tmp191413))))
                                               (if _%$e189103%_
                                                   ((lambda (_%klass189106%_)
                                                      (let ((__tmp191414
                                                             (cons (if (or _%arguments-ok?189039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp191415
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189029%_
                                             '4
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (not __tmp191415)))
                               '%#struct-unchecked-ref
                               '%#struct-ref)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self189029%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field189079%_ '()))
                                       (cons _%object189081%_ '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191414 _%stx189025%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e189103%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self189029%_
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp191416
                                                              (let ((_%$obj189112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp191417
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__obj))))
                               (declare (not safe))
                               (make-symbol__0 __tmp191417))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj189112%_ '())
                                                (cons _%object189081%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass189084%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#ref (cons _%$obj189112%_ '())) '())))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self189029%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field189079%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj189112%_ '()))
                                            '()))))
                    (cons (if _%arguments-ok?189039%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj189112%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189029%_
                             '3
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
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self189029%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj189112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self189029%_
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
                 (gxc#xform-wrap-source __tmp191416 _%stx189025%_))
               (let ((__tmp191418
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons _%object189081%_
                                        (cons (cons '%#quote
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self189029%_
                                                             '3
                                                             '#f
                                                             '#f))
                                                          '()))
                                              '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191418 _%stx189025%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%hd189045189059%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189041189051%_ _%g189042189054%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189041189051%_ _%g189042189054%_))))))
            (declare (not safe))
            (_%g189040189115%_ _%args189026%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self188787%_ _%ctx188788%_ _%stx188789%_ _%args188790%_)
        (let ((_%self188793%_ _%self188787%_))
          (let* ((_%arguments-ok?188803%_
                  (let ((__method191336
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188793%_ 'check-arguments))))
                    (if __method191336
                        (__method191336
                         _%self188793%_
                         _%ctx188788%_
                         _%stx188789%_
                         _%args188790%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188793%_
                                 'check-arguments)))))
                 (_%g188805188819%_
                  (lambda (_%g188806188816%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188806188816%_))))
                 (_%g188804188898%_
                  (lambda (_%g188806188822%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188806188822%_))
                        (let ((_%e188811188824%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188806188822%_))))
                          (let ((_%hd188810188827%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188811188824%_)))
                                (_%tl188809188829%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188811188824%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188809188829%_))
                                (let ((_%e188814188832%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl188809188829%_))))
                                  (let ((_%hd188813188835%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188814188832%_)))
                                        (_%tl188812188837%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188814188832%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl188812188837%_))
                                        ((lambda (_%L188840%_ _%L188841%_)
                                           (let* ((_%klass188857%_
                                                   (let ((__tmp191419
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188793%_
                                                             '1
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#optimizer-resolve-class
                                                      _%stx188789%_
                                                      __tmp191419)))
                                                  (_%field188859%_
                                                   (let ((__tmp191420
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188793%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass188857%_
                                                      __tmp191420)))
                                                  (_%object188861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188788%_
                                                      _%L188841%_)))
                                                  (_%value188863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188788%_
                                                      _%L188840%_)))
                                                  (_%klass188866%_
                                                   _%klass188857%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass188866%_
                                                    '8
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191421
                                                        (cons (if (or _%arguments-ok?188803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp191422
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188793%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp191422)))
                          '%#struct-unchecked-set!
                          '%#struct-direct-set!)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188793%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field188859%_ '()))
                                  (cons _%object188861%_
                                        (cons _%value188863%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191421
                                                    _%stx188789%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%klass188866%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp191423
                                                            (cons (if (or _%arguments-ok?188803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp191424
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self188793%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp191424)))
                              '%#struct-unchecked-set!
                              '%#struct-set!)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188793%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188859%_ '()))
                                      (cons _%object188861%_
                                            (cons _%value188863%_ '())))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191423 _%stx188789%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e188886%_
                                                            (let ((__tmp191425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self188793%_
                              '3
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#!class-slot-find-struct
                       _%klass188866%_
                       __tmp191425))))
               (if _%$e188886%_
                   ((lambda (_%klass188889%_)
                      (let ((__tmp191426
                             (cons (if (or _%arguments-ok?188803%_
                                           (let ((__tmp191427
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188793%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (not __tmp191427)))
                                       '%#struct-unchecked-set!
                                       '%#struct-set!)
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self188793%_
                                                        '1
                                                        '#f
                                                        '#f))
                                                     '()))
                                         (cons (cons '%#quote
                                                     (cons _%field188859%_
                                                           '()))
                                               (cons _%object188861%_
                                                     (cons _%value188863%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp191426 _%stx188789%_)))
                    _%$e188886%_)
                   (if (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%self188793%_ '4 '#f '#f))
                       (let ((__tmp191428
                              (let ((_%$obj188895%_
                                     (let ((__tmp191429
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp191429))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj188895%_
                                                              '())
                                                        (cons _%object188861%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass188866%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj188895%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-set!
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188793%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field188859%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj188895%_
                                                                '()))
                                                    (cons _%value188863%_
                                                          '())))))
                            (cons (if _%arguments-ok?188803%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj188895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self188793%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value188863%_ '())))))
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
                               _%self188793%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj188895%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188793%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%value188863%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191428 _%stx188789%_))
                       (let ((__tmp191430
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons _%object188861%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188793%_
                             '3
                             '#f
                             '#f))
                          '()))
              (cons _%value188863%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp191430
                          _%stx188789%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd188813188835%_
                                         _%hd188810188827%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g188805188819%_
                                           _%g188806188822%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g188805188819%_ _%g188806188822%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188805188819%_ _%g188806188822%_))))))
            (declare (not safe))
            (_%g188804188898%_ _%args188790%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self188602%_ _%ctx188603%_ _%stx188604%_ _%args188605%_)
        (let ((_%self188608%_ _%self188602%_))
          (let* ((_%self188617188627%_ _%self188608%_)
                 (_%E188619188631%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188617188627%_
                             '((!lambda _ _ arity dispatch inline))))
                    '#!void))
                 (_%K188620188641%_
                  (lambda (_%inline188634%_ _%dispatch188635%_ _%arity188636%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#!lambda-arity-match?
                           _%self188608%_
                           _%args188605%_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal lambda application; arity mismatch"
                           _%stx188604%_
                           _%arity188636%_)))
                    (if _%inline188634%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose '"inline lambda"))
                          (let ((__tmp191431
                                 (let ((__tmp191432
                                        (_%inline188634%_ _%stx188604%_)))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191432
                                    _%stx188604%_))))
                            (declare (not safe))
                            (gxc#compile-e__1 _%ctx188603%_ __tmp191431)))
                        (if (and _%dispatch188635%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%dispatch188635%_)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose
                                 '"dispatch lambda => "
                                 _%dispatch188635%_))
                              (let ((__tmp191433
                                     (let ((__tmp191434
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _%dispatch188635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args188605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp191434
                                        _%stx188604%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx188603%_ __tmp191433)))
                            (let ()
                              (declare (not safe))
                              (gxc#!procedure::optimize-call
                               _%self188608%_
                               _%ctx188603%_
                               _%stx188604%_
                               _%args188605%_)))))))
            (if '#t
                (let* ((_%e188621188644%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188617188627%_
                           '1
                           '#f
                           '#f)))
                       (_%e188622188647%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188617188627%_
                           '2
                           '#f
                           '#f)))
                       (_%e188623188650%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188617188627%_
                           '3
                           '#f
                           '#f)))
                       (_%arity188653%_ _%e188623188650%_)
                       (_%e188624188655%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188617188627%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188658%_ _%e188624188655%_)
                       (_%e188625188660%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188617188627%_
                           '5
                           '#f
                           '#f)))
                       (_%inline188663%_ _%e188625188660%_))
                  (declare (not safe))
                  (_%K188620188641%_
                   _%inline188663%_
                   _%dispatch188658%_
                   _%arity188653%_))
                (let () (declare (not safe)) (_%E188619188631%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self188454%_ _%ctx188455%_ _%stx188456%_ _%args188457%_)
        (let ()
          (let* ((_%self188460%_ _%self188454%_)
                 (_%$e188474%_
                  (let ((__tmp191436
                         (lambda (_%g188469188471%_)
                           (let ()
                             (declare (not safe))
                             (gxc#!lambda-arity-match?
                              _%g188469188471%_
                              _%args188457%_))))
                        (__tmp191435
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188460%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__find __tmp191436 __tmp191435))))
            (if _%$e188474%_
                ((lambda (_%clause188477%_)
                   (let ((__method191337
                          (let ()
                            (declare (not safe))
                            (__method-ref _%clause188477%_ 'optimize-call))))
                     (if __method191337
                         (__method191337
                          _%clause188477%_
                          _%ctx188455%_
                          _%stx188456%_
                          _%args188457%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause188477%_
                                  'optimize-call)))))
                 _%$e188474%_)
                (let ((__tmp191437
                       (map gxc#!lambda-arity
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188460%_
                               '3
                               '#f
                               '#f)))))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Illegal case-lambda application; arity mismatch"
                   _%stx188456%_
                   __tmp191437)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self188194%_ _%ctx188195%_ _%stx188196%_ _%args188197%_)
        (let ((_%self188200%_ _%self188194%_))
          (let* ((_%self188209188218%_ _%self188200%_)
                 (_%E188211188222%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188209188218%_
                             '((!kw-lambda _ _ table dispatch))))
                    '#!void))
                 (_%K188212188313%_
                  (lambda (_%dispatch188225%_ _%table188226%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%dispatch188225%_))
                        (let* ((_%g188227188237%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type
                                   _%dispatch188225%_)))
                               (_%else188229188245%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"unknown keyword dispatch lambda "
                                     _%dispatch188225%_))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#xform-call%
                                     _%ctx188195%_
                                     _%stx188196%_))))
                               (_%K188231188294%_
                                (lambda (_%main188248%_ _%keys188249%_)
                                  (let ((_g191438_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!kw-lambda-split-args
                                            _%stx188196%_
                                            _%args188197%_))))
                                    (begin
                                      (let ((_g191439_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g191438_)
                                                   (##vector-length _g191438_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g191439_ 2)))
                                            (error "Context expects 2 values"
                                                   _g191439_)))
                                      (let ((_%pargs188251%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191438_ 0)))
                                            (_%kwargs188252%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191438_ 1))))
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (gxc#verbose
                                             '"dispatch kw-lambda => "
                                             _%main188248%_))
                                          (if _%table188226%_
                                              (let ((_%xargs188260%_
                                                     (map (lambda (_%key188254%_)
                                                            (let ((_%$e188256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key188254%_ _%kwargs188252%_))))
                      (if _%$e188256%_
                          _%$e188256%_
                          (let () '(%#ref absent-value)))))
                  _%keys188249%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 (lambda (_%kw188262%_)
                                                   (if (memq (car _%kw188262%_)
                                                             _%keys188249%_)
                                                       '#!void
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#raise-compile-error
                                                          '"Illegal keyword lambda application; unexpected keyword"
                                                          _%stx188196%_
                                                          _%keys188249%_
                                                          _%kw188262%_))))
                                                 _%kwargs188252%_)
                                                (let ((__tmp191440
                                                       (let ((__tmp191441
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _%main188248%_ '()))
                                  (cons (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           _%pargs188251%_
                                           _%xargs188260%_)))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191441 _%stx188196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%ctx188195%_
                                                   __tmp191440)))
                                              (let* ((_%kwt188264%_
                                                      (let ((__tmp191442
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__kwt))))
                (declare (not safe))
                (make-symbol__0 __tmp191442)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwvars188268%_
                                                      (map (lambda (_%_188266%_)
                                                             (let ((__tmp191443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (##gensym '__kw))))
                       (declare (not safe))
                       (make-symbol__0 __tmp191443)))
                   _%kwargs188252%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwbind188273%_
                                                      (map (lambda (_%kw188270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188271%_)
                     (cons (cons _%kwvar188271%_ '())
                           (cons (cdr _%kw188270%_) '())))
                   _%kwargs188252%_
                   _%kwvars188268%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwset188278%_
                                                      (map (lambda (_%kw188275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188276%_)
                     (cons '%#call
                           (cons '(%#ref symbolic-table-set!)
                                 (cons (cons '%#ref (cons _%kwt188264%_ '()))
                                       (cons (cons '%#quote
                                                   (cons (car _%kw188275%_)
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%kwvar188276%_
                                                               '()))
                                                   '()))))))
                   _%kwargs188252%_
                   _%kwvars188268%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xkwargs188283%_
                                                      (map (lambda (_%kw188280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188281%_)
                     (cons (car _%kw188280%_)
                           (cons '%#ref (cons _%kwvar188281%_ '()))))
                   _%kwargs188252%_
                   _%kwvars188268%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xargs188291%_
                                                      (map (lambda (_%key188285%_)
                                                             (let ((_%$e188287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (agetq__0 _%key188285%_ _%xkwargs188283%_))))
                       (if _%$e188287%_
                           _%$e188287%_
                           (let () '(%#ref absent-value)))))
                   _%keys188249%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191444
                                                      (let ((__tmp191445
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%kwbind188273%_
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%kwt188264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (let ((__tmp191446
                                    (cons '%#call
                                          (cons '(%#ref make-symbolic-table)
                                                (cons (cons '%#quote
                                                            (cons (length _%kwargs188252%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '(%#quote (length kwvars)) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp191446
                                _%stx188196%_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (let ((__tmp191447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ((__tmp191448
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons _%main188248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _%kwt188264%_ '()))
                     (let ()
                       (declare (not safe))
                       (__foldr1 cons _%pargs188251%_ _%xargs188291%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp191448
                                       _%stx188196%_))
                                    '())))
                         (declare (not safe))
                         (__foldr1 cons __tmp191447 _%kwset188278%_)))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191445 _%stx188196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx188195%_
                                                 __tmp191444))))))))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%g188227188237%_
                                 'gxc#!kw-lambda-primary::t))
                              (let* ((_%e188232188297%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188227188237%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e188233188300%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188227188237%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e188234188303%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188227188237%_
                                         '3
                                         '#f
                                         '#f)))
                                     (_%keys188306%_ _%e188234188303%_)
                                     (_%e188235188308%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188227188237%_
                                         '4
                                         '#f
                                         '#f)))
                                     (_%main188311%_ _%e188235188308%_))
                                (declare (not safe))
                                (_%K188231188294%_
                                 _%main188311%_
                                 _%keys188306%_))
                              (let ()
                                (declare (not safe))
                                (_%else188229188245%_))))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx188195%_ _%stx188196%_))))))
            (if '#t
                (let* ((_%e188213188316%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188209188218%_
                           '1
                           '#f
                           '#f)))
                       (_%e188214188319%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188209188218%_
                           '2
                           '#f
                           '#f)))
                       (_%e188215188322%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188209188218%_
                           '3
                           '#f
                           '#f)))
                       (_%table188325%_ _%e188215188322%_)
                       (_%e188216188327%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188209188218%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188330%_ _%e188216188327%_))
                  (declare (not safe))
                  (_%K188212188313%_ _%dispatch188330%_ _%table188325%_))
                (let () (declare (not safe)) (_%E188211188222%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx187807%_ _%args187808%_)
        (let _%lp187810%_ ((_%rest187812%_ _%args187808%_)
                           (_%pargs187813%_ '())
                           (_%kwargs187814%_ '()))
          (let* ((_%__stx191154191155%_ _%rest187812%_)
                 (_%g187820187872%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx191154191155%_)))))
            (let ((_%__kont191156191157%_
                   (lambda (_%L188051%_ _%L188052%_)
                     (let ((__tmp191449 (cons _%L188052%_ _%pargs187813%_)))
                       (declare (not safe))
                       (_%lp187810%_
                        _%L188051%_
                        __tmp191449
                        _%kwargs187814%_))))
                  (_%__kont191158191159%_
                   (lambda (_%L187997%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L187997%_ _%pargs187813%_))
                             (reverse _%kwargs187814%_))))
                  (_%__kont191160191161%_
                   (lambda (_%L187944%_ _%L187945%_ _%L187946%_)
                     (let ((_%kw187963%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L187946%_))))
                       (if (assq _%kw187963%_ _%kwargs187814%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx187807%_
                              _%kw187963%_))
                           (let ((__tmp191450
                                  (cons (cons _%kw187963%_ _%L187945%_)
                                        _%kwargs187814%_)))
                             (declare (not safe))
                             (_%lp187810%_
                              _%L187944%_
                              _%pargs187813%_
                              __tmp191450))))))
                  (_%__kont191162191163%_
                   (lambda (_%L187892%_ _%L187893%_)
                     (let ((__tmp191451 (cons _%L187893%_ _%pargs187813%_)))
                       (declare (not safe))
                       (_%lp187810%_
                        _%L187892%_
                        __tmp191451
                        _%kwargs187814%_))))
                  (_%__kont191164191165%_
                   (lambda ()
                     (values (reverse _%pargs187813%_)
                             (reverse _%kwargs187814%_)))))
              (let ((_%__match191261191262%_
                     (lambda (_%e187853187912%_
                              _%hd187852187915%_
                              _%tl187851187917%_
                              _%e187856187920%_
                              _%hd187855187923%_
                              _%tl187854187925%_
                              _%e187859187928%_
                              _%hd187858187931%_
                              _%tl187857187933%_
                              _%e187862187936%_
                              _%hd187861187939%_
                              _%tl187860187941%_)
                       (let ((_%L187944%_ _%tl187860187941%_)
                             (_%L187945%_ _%hd187861187939%_)
                             (_%L187946%_ _%hd187858187931%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L187946%_))
                             (_%__kont191160191161%_
                              _%L187944%_
                              _%L187945%_
                              _%L187946%_)
                             (_%__kont191162191163%_
                              _%tl187851187917%_
                              _%hd187852187915%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx191154191155%_))
                    (let ((_%e187826188016%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx191154191155%_))))
                      (let ((_%tl187824188021%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187826188016%_)))
                            (_%hd187825188019%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187826188016%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd187825188019%_))
                            (let ((_%e187829188024%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd187825188019%_))))
                              (let ((_%tl187827188029%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187829188024%_)))
                                    (_%hd187828188027%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187829188024%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187828188027%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd187828188027%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187827188029%_))
                                            (let ((_%e187832188032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187827188029%_))))
                                              (let ((_%tl187830188037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187832188032%_)))
                                                    (_%hd187831188035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187832188032%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd187831188035%_))
                                                    (let ((_%e187833188040%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd187831188035%_))))
                                                      (if (equal? _%e187833188040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187830188037%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187824188021%_))
                          (let ((_%e187836188043%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187824188021%_))))
                            (let ((_%tl187834188048%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187836188043%_)))
                                  (_%hd187835188046%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187836188043%_))))
                              (_%__kont191156191157%_
                               _%tl187834188048%_
                               _%hd187835188046%_)))
                          (_%__kont191162191163%_
                           _%tl187824188021%_
                           _%hd187825188019%_))
                      (_%__kont191162191163%_
                       _%tl187824188021%_
                       _%hd187825188019%_))
                  (if (equal? _%e187833188040%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187830188037%_))
                          (_%__kont191158191159%_ _%tl187824188021%_)
                          (_%__kont191162191163%_
                           _%tl187824188021%_
                           _%hd187825188019%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187830188037%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187824188021%_))
                              (let ((_%e187862187936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187824188021%_))))
                                (let ((_%tl187860187941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187862187936%_)))
                                      (_%hd187861187939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187862187936%_))))
                                  (_%__match191261191262%_
                                   _%e187826188016%_
                                   _%hd187825188019%_
                                   _%tl187824188021%_
                                   _%e187829188024%_
                                   _%hd187828188027%_
                                   _%tl187827188029%_
                                   _%e187832188032%_
                                   _%hd187831188035%_
                                   _%tl187830188037%_
                                   _%e187862187936%_
                                   _%hd187861187939%_
                                   _%tl187860187941%_)))
                              (_%__kont191162191163%_
                               _%tl187824188021%_
                               _%hd187825188019%_))
                          (_%__kont191162191163%_
                           _%tl187824188021%_
                           _%hd187825188019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl187830188037%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187824188021%_))
                                                            (let ((_%e187862187936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187824188021%_))))
                      (let ((_%tl187860187941%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187862187936%_)))
                            (_%hd187861187939%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187862187936%_))))
                        (_%__match191261191262%_
                         _%e187826188016%_
                         _%hd187825188019%_
                         _%tl187824188021%_
                         _%e187829188024%_
                         _%hd187828188027%_
                         _%tl187827188029%_
                         _%e187832188032%_
                         _%hd187831188035%_
                         _%tl187830188037%_
                         _%e187862187936%_
                         _%hd187861187939%_
                         _%tl187860187941%_)))
                    (_%__kont191162191163%_
                     _%tl187824188021%_
                     _%hd187825188019%_))
                (_%__kont191162191163%_
                 _%tl187824188021%_
                 _%hd187825188019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont191162191163%_
                                             _%tl187824188021%_
                                             _%hd187825188019%_))
                                        (_%__kont191162191163%_
                                         _%tl187824188021%_
                                         _%hd187825188019%_))
                                    (_%__kont191162191163%_
                                     _%tl187824188021%_
                                     _%hd187825188019%_))))
                            (_%__kont191162191163%_
                             _%tl187824188021%_
                             _%hd187825188019%_))))
                    (_%__kont191164191165%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self187791%_ _%ctx187792%_ _%stx187793%_ _%args187794%_)
        (let ((_%self187797%_ _%self187791%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx187792%_ _%stx187793%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self187479%_ _%stx187480%_)
        (let* ((_%__stx191270191271%_ _%stx187480%_)
               (_%g187483187523%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191270191271%_)))))
          (let ((_%__kont191272191273%_
                 (lambda (_%L187629%_ _%L187630%_)
                   (let ((_%$e187657%_
                          (member 'return:
                                  (let ((__tmp191452
                                         (lambda (_%g187649187652%_
                                                  _%g187650187654%_)
                                           (cons _%g187649187652%_
                                                 _%g187650187654%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp191452 '() _%L187630%_))
                                  gx#stx-eq?)))
                     (if _%$e187657%_
                         ((lambda (_%tail187660%_)
                            (let ((_%type187662%_
                                   (let ((__tmp191453
                                          (let ((__tmp191454
                                                 (cadr _%tail187660%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp191454))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx187480%_
                                      __tmp191453))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx187480%_
                                 _%L187629%_
                                 _%type187662%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self187479%_
                                 _%L187629%_))))
                          _%$e187657%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187479%_ _%L187629%_))))))
                (_%__kont191276191277%_
                 (lambda (_%L187552%_ _%L187553%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self187479%_ _%L187552%_)))))
            (let ((_%__match191307191308%_
                   (lambda (_%e187489187573%_
                            _%hd187488187576%_
                            _%tl187487187578%_
                            _%e187492187581%_
                            _%hd187491187584%_
                            _%tl187490187586%_
                            _%e187495187589%_
                            _%hd187494187592%_
                            _%tl187493187594%_
                            _%__splice191274191275%_
                            _%target187496187597%_
                            _%tl187498187599%_)
                     (letrec ((_%loop187499187602%_
                               (lambda (_%hd187497187605%_
                                        _%signature187503187607%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187497187605%_))
                                     (let ((_%e187500187610%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187497187605%_))))
                                       (let ((_%lp-tl187502187615%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187500187610%_)))
                                             (_%lp-hd187501187613%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187500187610%_))))
                                         (let ((__tmp191455
                                                (cons _%lp-hd187501187613%_
                                                      _%signature187503187607%_)))
                                           (declare (not safe))
                                           (_%loop187499187602%_
                                            _%lp-tl187502187615%_
                                            __tmp191455))))
                                     (let ((_%signature187504187618%_
                                            (reverse _%signature187503187607%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187490187586%_))
                                           (let ((_%e187507187621%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187490187586%_))))
                                             (let ((_%tl187505187626%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187507187621%_)))
                                                   (_%hd187506187624%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187507187621%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187505187626%_))
                                                   (_%__kont191272191273%_
                                                    _%hd187506187624%_
                                                    _%signature187504187618%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g187483187523%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g187483187523%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187499187602%_ _%target187496187597%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191270191271%_))
                  (let ((_%e187489187573%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191270191271%_))))
                    (let ((_%tl187487187578%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187489187573%_)))
                          (_%hd187488187576%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187489187573%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187487187578%_))
                          (let ((_%e187492187581%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187487187578%_))))
                            (let ((_%tl187490187586%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187492187581%_)))
                                  (_%hd187491187584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187492187581%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd187491187584%_))
                                  (let ((_%e187495187589%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd187491187584%_))))
                                    (let ((_%tl187493187594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187495187589%_)))
                                          (_%hd187494187592%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187495187589%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd187494187592%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd187494187592%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl187493187594%_))
                                                  (let ((_%__splice191274191275%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl187493187594%_
                                                            '0))))
                                                    (let ((_%tl187498187599%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191274191275%_
                                                              '1)))
                                                          (_%target187496187597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191274191275%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187498187599%_))
                                                          (_%__match191307191308%_
                                                           _%e187489187573%_
                                                           _%hd187488187576%_
                                                           _%tl187487187578%_
                                                           _%e187492187581%_
                                                           _%hd187491187584%_
                                                           _%tl187490187586%_
                                                           _%e187495187589%_
                                                           _%hd187494187592%_
                                                           _%tl187493187594%_
                                                           _%__splice191274191275%_
                                                           _%target187496187597%_
                                                           _%tl187498187599%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl187490187586%_))
                      (let ((_%e187518187544%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl187490187586%_))))
                        (let ((_%tl187516187549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187518187544%_)))
                              (_%hd187517187547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187518187544%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187516187549%_))
                              (_%__kont191276191277%_
                               _%hd187517187547%_
                               _%hd187491187584%_)
                              (let ()
                                (declare (not safe))
                                (_%g187483187523%_)))))
                      (let () (declare (not safe)) (_%g187483187523%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187490187586%_))
                                                      (let ((_%e187518187544%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187490187586%_))))
                (let ((_%tl187516187549%_
                       (let () (declare (not safe)) (##cdr _%e187518187544%_)))
                      (_%hd187517187547%_
                       (let ()
                         (declare (not safe))
                         (##car _%e187518187544%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187516187549%_))
                      (_%__kont191276191277%_
                       _%hd187517187547%_
                       _%hd187491187584%_)
                      (let () (declare (not safe)) (_%g187483187523%_)))))
              (let () (declare (not safe)) (_%g187483187523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl187490187586%_))
                                                  (let ((_%e187518187544%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl187490187586%_))))
                                                    (let ((_%tl187516187549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187518187544%_)))
                                                          (_%hd187517187547%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187518187544%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187516187549%_))
                                                          (_%__kont191276191277%_
                                                           _%hd187517187547%_
                                                           _%hd187491187584%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g187483187523%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187483187523%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187490187586%_))
                                              (let ((_%e187518187544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187490187586%_))))
                                                (let ((_%tl187516187549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187518187544%_)))
                                                      (_%hd187517187547%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187518187544%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187516187549%_))
                                                      (_%__kont191276191277%_
                                                       _%hd187517187547%_
                                                       _%hd187491187584%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g187483187523%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g187483187523%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187490187586%_))
                                      (let ((_%e187518187544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187490187586%_))))
                                        (let ((_%tl187516187549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187518187544%_)))
                                              (_%hd187517187547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187518187544%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187516187549%_))
                                              (_%__kont191276191277%_
                                               _%hd187517187547%_
                                               _%hd187491187584%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g187483187523%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g187483187523%_))))))
                          (let () (declare (not safe)) (_%g187483187523%_)))))
                  (let () (declare (not safe)) (_%g187483187523%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx187457%_ _%expr187458%_ _%type187459%_)
        (let ((_%$e187461%_
               (let () (declare (not safe)) (not _%type187459%_))))
          (if _%$e187461%_
              _%$e187461%_
              (let ((_%$e187464%_
                     (eq? (##structure-ref _%type187459%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e187464%_
                    _%$e187464%_
                    (let ((_%expr-type187468%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187458%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187468%_))
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx187457%_
                             _%type187459%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187468%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx187457%_
                                 _%type187459%_
                                 _%expr-type187468%_))
                              (let ((_%$e187472%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187468%_
                                        'gxc#!abort::t))))
                                (if _%$e187472%_
                                    _%$e187472%_
                                    (let ((_%$e187475%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187468%_
                                              _%type187459%_))))
                                      (if _%$e187475%_
                                          _%$e187475%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx187457%_
                                             _%type187459%_
                                             _%expr-type187468%_)))))))))))))))))
