(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1742223879)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp198526 (list gxc#::basic-xform::t))
            (__tmp198525 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp198526
         '()
         __tmp198525
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args197803%_
        (apply make-instance gxc#::optimize-call::t _%$args197803%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp198527
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
        (__make-promise __tmp198527)))
    (define gxc#apply-optimize-call
      (lambda (_%stx197795%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self197798%_
                (let ((__obj198517
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj198517))
               (__tmp198528
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197798%_ _%stx197795%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198528
           gxc#current-compile-method
           _%self197798%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp198530 (list gxc#::void::t))
            (__tmp198529 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp198530
         '()
         __tmp198529
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args197792%_
        (apply make-instance gxc#::check-return-type::t _%$args197792%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp198531
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
        (__make-promise __tmp198531)))
    (define gxc#apply-check-return-type
      (lambda (_%stx197784%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self197787%_
                (let ((__obj198519
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj198519))
               (__tmp198532
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197787%_ _%stx197784%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198532
           gxc#current-compile-method
           _%self197787%_))))
    (define gxc#optimize-call%
      (lambda (_%self197385%_ _%stx197386%_)
        (let* ((_%__stx197872197873%_ _%stx197386%_)
               (_%g197389197435%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197872197873%_)))))
          (let ((_%__kont197874197875%_
                 (lambda (_%L197578%_ _%L197579%_)
                   (let* ((_%rator-id197599%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L197579%_)))
                          (_%rator-type197601%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id197599%_))))
                     (if (or (not _%rator-type197601%_)
                             (eq? (##structure-ref
                                   _%rator-type197601%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self197385%_ _%stx197386%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type197601%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp198533
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type197601%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id197599%_
                                  '" => "
                                  _%rator-type197601%_
                                  '" "
                                  __tmp198533))
                               (let* ((_%optimized197616%_
                                       (let ((__method198520
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type197601%_
                                                 'optimize-call))))
                                         (if __method198520
                                             (let ((__tmp198534
                                                    (let ((__tmp198535
                                                           (lambda (_%g197608197611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197609197613%_)
                     (cons _%g197608197611%_ _%g197609197613%_))))
              (declare (not safe))
              (__foldr1 __tmp198535 '() _%L197578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method198520
                                                _%rator-type197601%_
                                                _%self197385%_
                                                _%stx197386%_
                                                __tmp198534))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type197601%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx197820197821%_
                                       _%optimized197616%_)
                                      (_%g197619197648%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx197820197821%_)))))
                                 (let ((_%__kont197822197823%_
                                        (lambda (_%L197716%_ _%L197717%_)
                                          (let* ((_%optimized-rator-id197744%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L197717%_)))
                                                 (_%rator-type197749%_
                                                  (let ((_%$e197746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id197744%_))))
                                                    (if _%$e197746%_
                                                        _%$e197746%_
                                                        _%rator-type197601%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type197749%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id197744%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type197749%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type197749%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized197616%_
                                                (let ((__tmp198536
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L197717%_ '()))
                           (let ((__tmp198537
                                  (lambda (_%g197757197760%_ _%g197758197762%_)
                                    (cons _%g197757197760%_
                                          _%g197758197762%_))))
                             (declare (not safe))
                             (__foldr1 __tmp198537 '() _%L197716%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp198536
                                                   _%stx197386%_))))))
                                       (_%__kont197826197827%_
                                        (lambda () _%optimized197616%_)))
                                   (let ((_%__match197869197870%_
                                          (lambda (_%e197623197660%_
                                                   _%hd197624197663%_
                                                   _%tl197625197665%_
                                                   _%e197626197668%_
                                                   _%hd197627197671%_
                                                   _%tl197628197673%_
                                                   _%e197629197676%_
                                                   _%hd197630197679%_
                                                   _%tl197631197681%_
                                                   _%e197632197684%_
                                                   _%hd197633197687%_
                                                   _%tl197634197689%_
                                                   _%__splice197824197825%_
                                                   _%target197635197692%_
                                                   _%tl197637197694%_)
                                            (letrec ((_%loop197638197697%_
                                                      (lambda (_%hd197636197700%_
                                                               _%arg197642197702%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd197636197700%_))
                                                            (let ((_%e197639197705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd197636197700%_))))
                      (let ((_%lp-tl197641197710%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197639197705%_)))
                            (_%lp-hd197640197708%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197639197705%_))))
                        (_%loop197638197697%_
                         _%lp-tl197641197710%_
                         (cons _%lp-hd197640197708%_ _%arg197642197702%_))))
                    (let ((_%arg197643197713%_ (reverse _%arg197642197702%_)))
                      (_%__kont197822197823%_
                       _%arg197643197713%_
                       _%hd197633197687%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop197638197697%_
                                               _%target197635197692%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx197820197821%_))
                                         (let ((_%e197623197660%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx197820197821%_))))
                                           (let ((_%tl197625197665%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197623197660%_)))
                                                 (_%hd197624197663%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197623197660%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197624197663%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd197624197663%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197625197665%_))
                                                         (let ((_%e197626197668%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197625197665%_))))
                   (let ((_%tl197628197673%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197626197668%_)))
                         (_%hd197627197671%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197626197668%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd197627197671%_))
                         (let ((_%e197629197676%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd197627197671%_))))
                           (let ((_%tl197631197681%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197629197676%_)))
                                 (_%hd197630197679%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197629197676%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd197630197679%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd197630197679%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl197631197681%_))
                                         (let ((_%e197632197684%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl197631197681%_))))
                                           (let ((_%tl197634197689%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197632197684%_)))
                                                 (_%hd197633197687%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197632197684%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl197634197689%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl197628197673%_))
                                                     (let ((_%__splice197824197825%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl197628197673%_
                                                               '0))))
                                                       (let ((_%tl197637197694%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice197824197825%_ '1)))
                     (_%target197635197692%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice197824197825%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197637197694%_))
                     (_%__match197869197870%_
                      _%e197623197660%_
                      _%hd197624197663%_
                      _%tl197625197665%_
                      _%e197626197668%_
                      _%hd197627197671%_
                      _%tl197628197673%_
                      _%e197629197676%_
                      _%hd197630197679%_
                      _%tl197631197681%_
                      _%e197632197684%_
                      _%hd197633197687%_
                      _%tl197634197689%_
                      _%__splice197824197825%_
                      _%target197635197692%_
                      _%tl197637197694%_)
                     (_%__kont197826197827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197826197827%_))
                                                 (_%__kont197826197827%_))))
                                         (_%__kont197826197827%_))
                                     (_%__kont197826197827%_))
                                 (_%__kont197826197827%_))))
                         (_%__kont197826197827%_))))
                 (_%__kont197826197827%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont197826197827%_))
                                                 (_%__kont197826197827%_))))
                                         (_%__kont197826197827%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type197601%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type197601%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp198538
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L197579%_
                                                                '()))
                                                    (map (lambda (_%g197768197770%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self197385%_
                                                              _%g197768197770%_)))
                                                         (let ((__tmp198539
                                                                (lambda (_%g197772197775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g197773197777%_)
                          (cons _%g197772197775%_ _%g197773197777%_))))
                   (declare (not safe))
                   (__foldr1 __tmp198539 '() _%L197578%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp198538
                                    _%stx197386%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx197386%_
                                    _%rator-type197601%_))))))))
                (_%__kont197878197879%_
                 (lambda (_%L197480%_ _%L197481%_)
                   (let ((_%rator-type197498%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L197481%_))))
                     (if (and _%rator-type197498%_
                              (eq? (##structure-ref
                                    _%rator-type197498%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type197498%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type197498%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type197498%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp198540
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197385%_
                                               _%L197481%_))
                                            (map (lambda (_%g197500197502%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self197385%_
                                                      _%g197500197502%_)))
                                                 (let ((__tmp198541
                                                        (lambda (_%g197504197507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g197505197509%_)
                  (cons _%g197504197507%_ _%g197505197509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp198541
                                                    '()
                                                    _%L197480%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198540 _%stx197386%_))
                         (if (or (not _%rator-type197498%_)
                                 (let ((__tmp198542
                                        (##structure-ref
                                         _%rator-type197498%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp198542 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self197385%_ _%stx197386%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx197386%_
                                _%rator-type197498%_))))))))
            (let* ((_%__match197939197940%_
                    (lambda (_%e197416197440%_
                             _%hd197417197443%_
                             _%tl197418197445%_
                             _%e197419197448%_
                             _%hd197420197451%_
                             _%tl197421197453%_
                             _%__splice197880197881%_
                             _%target197422197456%_
                             _%tl197424197458%_)
                      (letrec ((_%loop197425197461%_
                                (lambda (_%hd197423197464%_
                                         _%rand197429197466%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197423197464%_))
                                      (let ((_%e197426197469%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197423197464%_))))
                                        (let ((_%lp-tl197428197474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197426197469%_)))
                                              (_%lp-hd197427197472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197426197469%_))))
                                          (_%loop197425197461%_
                                           _%lp-tl197428197474%_
                                           (cons _%lp-hd197427197472%_
                                                 _%rand197429197466%_))))
                                      (let ((_%rand197430197477%_
                                             (reverse _%rand197429197466%_)))
                                        (_%__kont197878197879%_
                                         _%rand197430197477%_
                                         _%hd197420197451%_))))))
                        (_%loop197425197461%_ _%target197422197456%_ '()))))
                   (_%__match197919197920%_
                    (lambda (_%e197393197522%_
                             _%hd197394197525%_
                             _%tl197395197527%_
                             _%e197396197530%_
                             _%hd197397197533%_
                             _%tl197398197535%_
                             _%e197399197538%_
                             _%hd197400197541%_
                             _%tl197401197543%_
                             _%e197402197546%_
                             _%hd197403197549%_
                             _%tl197404197551%_
                             _%__splice197876197877%_
                             _%target197405197554%_
                             _%tl197407197556%_)
                      (letrec ((_%loop197408197559%_
                                (lambda (_%hd197406197562%_
                                         _%rand197412197564%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197406197562%_))
                                      (let ((_%e197409197567%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197406197562%_))))
                                        (let ((_%lp-tl197411197572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197409197567%_)))
                                              (_%lp-hd197410197570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197409197567%_))))
                                          (_%loop197408197559%_
                                           _%lp-tl197411197572%_
                                           (cons _%lp-hd197410197570%_
                                                 _%rand197412197564%_))))
                                      (let ((_%rand197413197575%_
                                             (reverse _%rand197412197564%_)))
                                        (_%__kont197874197875%_
                                         _%rand197413197575%_
                                         _%hd197403197549%_))))))
                        (_%loop197408197559%_ _%target197405197554%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197872197873%_))
                  (let ((_%e197393197522%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197872197873%_))))
                    (let ((_%tl197395197527%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197393197522%_)))
                          (_%hd197394197525%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197393197522%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197395197527%_))
                          (let ((_%e197396197530%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197395197527%_))))
                            (let ((_%tl197398197535%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197396197530%_)))
                                  (_%hd197397197533%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197396197530%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197397197533%_))
                                  (let ((_%e197399197538%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197397197533%_))))
                                    (let ((_%tl197401197543%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197399197538%_)))
                                          (_%hd197400197541%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197399197538%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197400197541%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197400197541%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197401197543%_))
                                                  (let ((_%e197402197546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197401197543%_))))
                                                    (let ((_%tl197404197551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197402197546%_)))
                                                          (_%hd197403197549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197402197546%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197404197551%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197398197535%_))
                      (let ((_%__splice197876197877%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197398197535%_
                                '0))))
                        (let ((_%tl197407197556%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197876197877%_ '1)))
                              (_%target197405197554%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197876197877%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197407197556%_))
                              (_%__match197919197920%_
                               _%e197393197522%_
                               _%hd197394197525%_
                               _%tl197395197527%_
                               _%e197396197530%_
                               _%hd197397197533%_
                               _%tl197398197535%_
                               _%e197399197538%_
                               _%hd197400197541%_
                               _%tl197401197543%_
                               _%e197402197546%_
                               _%hd197403197549%_
                               _%tl197404197551%_
                               _%__splice197876197877%_
                               _%target197405197554%_
                               _%tl197407197556%_)
                              (let ()
                                (declare (not safe))
                                (_%g197389197435%_)))))
                      (let () (declare (not safe)) (_%g197389197435%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197398197535%_))
                      (let ((_%__splice197880197881%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197398197535%_
                                '0))))
                        (let ((_%tl197424197458%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197880197881%_ '1)))
                              (_%target197422197456%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice197880197881%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197424197458%_))
                              (_%__match197939197940%_
                               _%e197393197522%_
                               _%hd197394197525%_
                               _%tl197395197527%_
                               _%e197396197530%_
                               _%hd197397197533%_
                               _%tl197398197535%_
                               _%__splice197880197881%_
                               _%target197422197456%_
                               _%tl197424197458%_)
                              (let ()
                                (declare (not safe))
                                (_%g197389197435%_)))))
                      (let () (declare (not safe)) (_%g197389197435%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197398197535%_))
                                                      (let ((_%__splice197880197881%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl197398197535%_
                        '0))))
                (let ((_%tl197424197458%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197880197881%_ '1)))
                      (_%target197422197456%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice197880197881%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197424197458%_))
                      (_%__match197939197940%_
                       _%e197393197522%_
                       _%hd197394197525%_
                       _%tl197395197527%_
                       _%e197396197530%_
                       _%hd197397197533%_
                       _%tl197398197535%_
                       _%__splice197880197881%_
                       _%target197422197456%_
                       _%tl197424197458%_)
                      (let () (declare (not safe)) (_%g197389197435%_)))))
              (let () (declare (not safe)) (_%g197389197435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl197398197535%_))
                                                  (let ((_%__splice197880197881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl197398197535%_
                                                            '0))))
                                                    (let ((_%tl197424197458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197880197881%_
                                                              '1)))
                                                          (_%target197422197456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice197880197881%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197424197458%_))
                                                          (_%__match197939197940%_
                                                           _%e197393197522%_
                                                           _%hd197394197525%_
                                                           _%tl197395197527%_
                                                           _%e197396197530%_
                                                           _%hd197397197533%_
                                                           _%tl197398197535%_
                                                           _%__splice197880197881%_
                                                           _%target197422197456%_
                                                           _%tl197424197458%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197389197435%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197389197435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197398197535%_))
                                              (let ((_%__splice197880197881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl197398197535%_
                                                        '0))))
                                                (let ((_%tl197424197458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197880197881%_
                                                          '1)))
                                                      (_%target197422197456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice197880197881%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197424197458%_))
                                                      (_%__match197939197940%_
                                                       _%e197393197522%_
                                                       _%hd197394197525%_
                                                       _%tl197395197527%_
                                                       _%e197396197530%_
                                                       _%hd197397197533%_
                                                       _%tl197398197535%_
                                                       _%__splice197880197881%_
                                                       _%target197422197456%_
                                                       _%tl197424197458%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197389197435%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197389197435%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197398197535%_))
                                      (let ((_%__splice197880197881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl197398197535%_
                                                '0))))
                                        (let ((_%tl197424197458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197880197881%_
                                                  '1)))
                                              (_%target197422197456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197880197881%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197424197458%_))
                                              (_%__match197939197940%_
                                               _%e197393197522%_
                                               _%hd197394197525%_
                                               _%tl197395197527%_
                                               _%e197396197530%_
                                               _%hd197397197533%_
                                               _%tl197398197535%_
                                               _%__splice197880197881%_
                                               _%target197422197456%_
                                               _%tl197424197458%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197389197435%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197389197435%_))))))
                          (let () (declare (not safe)) (_%g197389197435%_)))))
                  (let () (declare (not safe)) (_%g197389197435%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self193764197345%_ _%ctx197347%_ _%stx197348%_ _%args197349%_)
        (let* ((_%self197351%_ _%self193764197345%_)
               (_%self197353%_ _%self197351%_))
          (if (let ((__method198521
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self197353%_ 'check-arguments))))
                (if __method198521
                    (let ()
                      (declare (not safe))
                      (__method198521
                       _%self197353%_
                       _%ctx197347%_
                       _%stx197348%_
                       _%args197349%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self197353%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature197363%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197353%_ '2 '#f '#f)))
                     (_%signature197365%_ _%signature197363%_)
                     (_%$e197375%_
                      (if _%signature197365%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature197365%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e197375%_
                    ((lambda (_%unchecked197378%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked197378%_))
                           (let ((__tmp198543
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked197378%_
                                                          '()))
                                              (map (lambda (_%g197379197381%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx197347%_
                                                        _%g197379197381%_)))
                                                   _%args197349%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp198543
                              _%stx197348%_
                              _%ctx197347%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx197347%_ _%stx197348%_))))
                     _%$e197375%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx197347%_ _%stx197348%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx197347%_ _%stx197348%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass197805 __method-table197806)
        (let ((__check-arguments197807
               (let ((__tmp198544
                      (lambda ()
                        (let ((__method197808
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197806
                                  'check-arguments
                                  '#f))))
                          (if __method197808
                              __method197808
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198544))))
          (lambda (_%self193764197345%_
                   _%ctx197347%_
                   _%stx197348%_
                   _%args197349%_)
            (let* ((_%self197351%_ _%self193764197345%_)
                   (_%self197353%_ _%self197351%_))
              (if ((force __check-arguments197807)
                   _%self197353%_
                   _%ctx197347%_
                   _%stx197348%_
                   _%args197349%_)
                  (let* ((_%signature197363%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self197353%_
                             '2
                             '#f
                             '#f)))
                         (_%signature197365%_ _%signature197363%_)
                         (_%$e197375%_
                          (if _%signature197365%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature197365%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e197375%_
                        ((lambda (_%unchecked197378%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked197378%_))
                               (let ((__tmp198545
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked197378%_
                                                              '()))
                                                  (map (lambda (_%g197379197381%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx197347%_
                                                            _%g197379197381%_)))
                                                       _%args197349%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp198545
                                  _%stx197348%_
                                  _%ctx197347%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx197347%_
                                  _%stx197348%_))))
                         _%$e197375%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx197347%_ _%stx197348%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx197347%_ _%stx197348%_))))))))
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
      (lambda (_%self193765197094%_ _%ctx197096%_ _%stx197097%_ _%args197098%_)
        (let* ((_%self197100%_ _%self193765197094%_)
               (_%self197102%_ _%self197100%_)
               (_%signature197111197113%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197102%_ '2 '#f '#f))))
          (if _%signature197111197113%_
              (let* ((_%signature197116%_ _%signature197111197113%_)
                     (_%argument-types197117197119%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature197116%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types197117197119%_
                    (let* ((_%argument-types197122%_
                            _%argument-types197117197119%_)
                           (_%argument-types197127%_
                            (let ((__tmp198546
                                   (lambda (_%t197125%_)
                                     (if _%t197125%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx197097%_
                                            _%t197125%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp198546
                               _%argument-types197122%_))))
                      (let _%loop197129%_ ((_%rest-args197131%_ _%args197098%_)
                                           (_%rest-types197132%_
                                            _%argument-types197127%_)
                                           (_%result197133%_ '#t))
                        (let* ((_%rest-args197134197142%_ _%rest-args197131%_)
                               (_%else197136197150%_
                                (lambda () _%result197133%_))
                               (_%K197138197211%_
                                (lambda (_%rest-args197153%_ _%arg197154%_)
                                  (let* ((_%rest-types197155197166%_
                                          _%rest-types197132%_)
                                         (_%E197159197170%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types197155197166%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K197162197199%_
                                           (lambda (_%rest-types197196%_
                                                    _%type197197%_)
                                             (_%loop197129%_
                                              _%rest-args197153%_
                                              _%rest-types197196%_
                                              (if (gxc#check-expression-type!
                                                   _%stx197097%_
                                                   _%arg197154%_
                                                   _%type197197%_)
                                                  _%result197133%_
                                                  '#f))))
                                          (_%K197161197190%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx197097%_
                                                _%argument-types197127%_))))
                                          (_%K197160197180%_
                                           (lambda (_%tail-type197174%_)
                                             (if (let ((__tmp198547
                                                        (lambda (_%g197175197177%_)
                                                          (gxc#check-expression-type!
                                                           _%stx197097%_
                                                           _%g197175197177%_
                                                           _%tail-type197174%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp198547
                                                    _%rest-args197153%_))
                                                 _%result197133%_
                                                 '#f))))
                                      (let ((_%try-match197157197193%_
                                             (lambda ()
                                               (if (null? _%rest-types197155197166%_)
                                                   (_%K197161197190%_)
                                                   (let ((_%tail-type197183%_
                                                          _%rest-types197155197166%_))
                                                     (_%K197160197180%_
                                                      _%tail-type197183%_))))))
                                        (if (pair? _%rest-types197155197166%_)
                                            (let ((_%tl197164197204%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types197155197166%_)))
                                                  (_%hd197163197202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types197155197166%_))))
                                              (let ((_%type197207%_
                                                     _%hd197163197202%_)
                                                    (_%rest-types197209%_
                                                     _%tl197164197204%_))
                                                (_%K197162197199%_
                                                 _%rest-types197209%_
                                                 _%type197207%_)))
                                            (_%try-match197157197193%_))))))))
                          (if (pair? _%rest-args197134197142%_)
                              (let ((_%hd197139197214%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args197134197142%_)))
                                    (_%tl197140197216%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args197134197142%_))))
                                (let* ((_%arg197219%_ _%hd197139197214%_)
                                       (_%rest-args197221%_
                                        _%tl197140197216%_))
                                  (_%K197138197211%_
                                   _%rest-args197221%_
                                   _%arg197219%_)))
                              (_%else197136197150%_)))))
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
      (lambda (_%self193766196903%_ _%ctx196905%_ _%stx196906%_ _%args196907%_)
        (let* ((_%self196909%_ _%self193766196903%_)
               (_%self196911%_ _%self196909%_)
               (_%g196921196931%_
                (lambda (_%g196922196928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196922196928%_))))
               (_%g196920196969%_
                (lambda (_%g196922196934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196922196934%_))
                      (let ((_%e196924196936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196922196934%_))))
                        (let ((_%hd196925196939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196924196936%_)))
                              (_%tl196926196941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196924196936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196926196941%_))
                              ((lambda (_%L196944%_)
                                 (let* ((_%klass196956%_
                                         (let ((__tmp198548
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196911%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196906%_
                                            __tmp198548)))
                                        (_%object196958%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196905%_
                                            _%L196944%_)))
                                        (_%instance?196963%_
                                         (let ((_%$e196960%_
                                                (gxc#expression-type?
                                                 _%object196958%_
                                                 _%klass196956%_)))
                                           (if _%$e196960%_
                                               _%$e196960%_
                                               (gxc#expression-type?
                                                _%L196944%_
                                                _%klass196956%_)))))
                                   (if _%instance?196963%_
                                       (let ((__tmp198549
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196958%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196944%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196958%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198549
                                          _%stx196906%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx196905%_
                                          _%stx196906%_)))))
                               _%hd196925196939%_)
                              (_%g196921196931%_ _%g196922196934%_))))
                      (_%g196921196931%_ _%g196922196934%_)))))
          (_%g196920196969%_ _%args196907%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self193767196697%_ _%ctx196699%_ _%stx196700%_ _%args196701%_)
        (let* ((_%self196703%_ _%self193767196697%_)
               (_%self196705%_ _%self196703%_)
               (_%g196715196725%_
                (lambda (_%g196716196722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196716196722%_))))
               (_%g196714196778%_
                (lambda (_%g196716196728%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196716196728%_))
                      (let ((_%e196718196730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196716196728%_))))
                        (let ((_%hd196719196733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196718196730%_)))
                              (_%tl196720196735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196718196730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196720196735%_))
                              ((lambda (_%L196738%_)
                                 (let* ((_%klass196750%_
                                         (let ((__tmp198550
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self196705%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx196700%_
                                            __tmp198550)))
                                        (_%object196752%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx196699%_
                                            _%L196738%_)))
                                        (_%instance?196757%_
                                         (let ((_%$e196754%_
                                                (gxc#expression-type?
                                                 _%object196752%_
                                                 _%klass196750%_)))
                                           (if _%$e196754%_
                                               _%$e196754%_
                                               (gxc#expression-type?
                                                _%L196738%_
                                                _%klass196750%_))))
                                        (_%klass196760%_ _%klass196750%_))
                                   (if _%instance?196757%_
                                       (let ((__tmp198551
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object196752%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L196738%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object196752%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198551
                                          _%stx196700%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass196760%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198552
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass196760%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object196752%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198552
                                              _%stx196700%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass196760%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198553
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass196760%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object196752%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198553
                                                  _%stx196700%_))
                                               (let ((__tmp198554
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self196705%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object196752%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198554
                                                  _%stx196700%_)))))))
                               _%hd196719196733%_)
                              (_%g196715196725%_ _%g196716196728%_))))
                      (_%g196715196725%_ _%g196716196728%_)))))
          (_%g196714196778%_ _%args196701%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx196360%_)
        (let* ((_%__stx197949197950%_ _%stx196360%_)
               (_%g196365196406%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197949197950%_)))))
          (let ((_%__kont197951197952%_ (lambda () '#t))
                (_%__kont197953197954%_ (lambda () '#t))
                (_%__kont197955197956%_
                 (lambda (_%L196474%_ _%L196475%_)
                   (let ((_%rator-type196496196498%_
                          (let ((__tmp198555
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L196475%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp198555))))
                     (if _%rator-type196496196498%_
                         (let* ((_%rator-type196501%_
                                 _%rator-type196496196498%_)
                                (_%rator-signature196502196504%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type196501%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type196501%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature196502196504%_
                               (let* ((_%rator-signature196507%_
                                       _%rator-signature196502196504%_)
                                      (_%rator-effect196508196510%_
                                       (if _%rator-signature196507%_
                                           (##direct-structure-ref
                                            _%rator-signature196507%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect196508196510%_
                                     (let ((_%rator-effect196513%_
                                            _%rator-effect196508196510%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect196513%_)
                                               (equal? '(alloc)
                                                       _%rator-effect196513%_))
                                           (let ((__tmp198556
                                                  (let ((__tmp198557
                                                         (lambda (_%g196518196521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g196519196523%_)
                   (cons _%g196518196521%_ _%g196519196523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp198557
                                                     '()
                                                     _%L196474%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp198556))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont197959197960%_ (lambda () '#f)))
            (let ((_%__match198038198039%_
                   (lambda (_%e196381196418%_
                            _%hd196382196421%_
                            _%tl196383196423%_
                            _%e196384196426%_
                            _%hd196385196429%_
                            _%tl196386196431%_
                            _%e196387196434%_
                            _%hd196388196437%_
                            _%tl196389196439%_
                            _%e196390196442%_
                            _%hd196391196445%_
                            _%tl196392196447%_
                            _%__splice197957197958%_
                            _%target196393196450%_
                            _%tl196395196452%_)
                     (letrec ((_%loop196396196455%_
                               (lambda (_%hd196394196458%_
                                        _%rand196400196460%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196394196458%_))
                                     (let ((_%e196397196463%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196394196458%_))))
                                       (let ((_%lp-tl196399196468%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196397196463%_)))
                                             (_%lp-hd196398196466%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196397196463%_))))
                                         (_%loop196396196455%_
                                          _%lp-tl196399196468%_
                                          (cons _%lp-hd196398196466%_
                                                _%rand196400196460%_))))
                                     (let ((_%rand196401196471%_
                                            (reverse _%rand196400196460%_)))
                                       (_%__kont197955197956%_
                                        _%rand196401196471%_
                                        _%hd196391196445%_))))))
                       (_%loop196396196455%_ _%target196393196450%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197949197950%_))
                  (let ((_%e196367196554%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197949197950%_))))
                    (let ((_%tl196369196559%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196367196554%_)))
                          (_%hd196368196557%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196367196554%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd196368196557%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd196368196557%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196369196559%_))
                                  (let ((_%e196370196562%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196369196559%_))))
                                    (let ((_%tl196372196567%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196370196562%_)))
                                          (_%hd196371196565%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196370196562%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196372196567%_))
                                          (_%__kont197951197952%_)
                                          (_%__kont197959197960%_))))
                                  (_%__kont197959197960%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd196368196557%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196369196559%_))
                                      (let ((_%e196376196539%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196369196559%_))))
                                        (let ((_%tl196378196544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196376196539%_)))
                                              (_%hd196377196542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196376196539%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196378196544%_))
                                              (_%__kont197953197954%_)
                                              (_%__kont197959197960%_))))
                                      (_%__kont197959197960%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd196368196557%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196369196559%_))
                                          (let ((_%e196384196426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196369196559%_))))
                                            (let ((_%tl196386196431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196384196426%_)))
                                                  (_%hd196385196429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196384196426%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196385196429%_))
                                                  (let ((_%e196387196434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196385196429%_))))
                                                    (let ((_%tl196389196439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196387196434%_)))
                                                          (_%hd196388196437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196387196434%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196388196437%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd196388196437%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196389196439%_))
                          (let ((_%e196390196442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196389196439%_))))
                            (let ((_%tl196392196447%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196390196442%_)))
                                  (_%hd196391196445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196390196442%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196392196447%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196386196431%_))
                                      (let ((_%__splice197957197958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196386196431%_
                                                '0))))
                                        (let ((_%tl196395196452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197957197958%_
                                                  '1)))
                                              (_%target196393196450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice197957197958%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196395196452%_))
                                              (_%__match198038198039%_
                                               _%e196367196554%_
                                               _%hd196368196557%_
                                               _%tl196369196559%_
                                               _%e196384196426%_
                                               _%hd196385196429%_
                                               _%tl196386196431%_
                                               _%e196387196434%_
                                               _%hd196388196437%_
                                               _%tl196389196439%_
                                               _%e196390196442%_
                                               _%hd196391196445%_
                                               _%tl196392196447%_
                                               _%__splice197957197958%_
                                               _%target196393196450%_
                                               _%tl196395196452%_)
                                              (_%__kont197959197960%_))))
                                      (_%__kont197959197960%_))
                                  (_%__kont197959197960%_))))
                          (_%__kont197959197960%_))
                      (_%__kont197959197960%_))
                  (_%__kont197959197960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197959197960%_))))
                                          (_%__kont197959197960%_))
                                      (_%__kont197959197960%_))))
                          (_%__kont197959197960%_))))
                  (_%__kont197959197960%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx196355%_ _%klass196356%_)
        (let ((_%expr-type196358%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx196355%_))))
          (if _%expr-type196358%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type196358%_ _%klass196356%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx196333%_ _%expr196334%_ _%type196335%_)
        (if (not _%type196335%_)
            '#f
            (let ((_%$e196338%_
                   (eq? (##structure-ref _%type196335%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e196338%_
                  _%$e196338%_
                  (let ((_%expr-type196342%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr196334%_))))
                    (if (not _%expr-type196342%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type196342%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e196346%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type196342%_
                                      'gxc#!abort::t))))
                              (if _%$e196346%_
                                  _%$e196346%_
                                  (let ((_%$e196349%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type196342%_
                                            _%type196335%_))))
                                    (if _%$e196349%_
                                        _%$e196349%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type196335%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type196335%_
                                                   _%expr-type196342%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx196333%_
                                                   _%expr196334%_
                                                   _%expr-type196342%_
                                                   _%type196335%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self193768196145%_ _%ctx196147%_ _%stx196148%_ _%args196149%_)
        (let* ((_%self196151%_ _%self193768196145%_)
               (_%self196153%_ _%self196151%_)
               (_%klass196163%_
                (let ((__tmp198558
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self196153%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx196148%_ __tmp198558)))
               (_%fields196165%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass196163%_
                           '5
                           '#f
                           '#f))))
               (_%args196171%_
                (map (lambda (_%g196166196168%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx196147%_ _%g196166196168%_)))
                     _%args196149%_))
               (_%inline-make-object196173%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self196153%_
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
                           _%self196153%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields196165%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass196176%_ _%klass196163%_)
               (_%$e196190%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass196176%_ '6 '#f '#f))))
          (if _%$e196190%_
              ((lambda (_%ctor196193%_)
                 (let ((_%$obj196195%_
                        (let ((__tmp198559
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp198559)))
                       (_%ctor-impl196196%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass196176%_
                           _%ctor196193%_))))
                   (let ((__tmp198560
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196195%_ '())
                                                  (cons _%inline-make-object196173%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl196196%_
                                                            (let ((__tmp198561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl196196%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj196195%_ '()))
                                             _%args196171%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp198561
                       _%stx196148%_
                       _%ctx196147%_))
                    (let ((_%$ctor196198%_
                           (let ((__tmp198562
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198562))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor196198%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self196153%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj196195%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor196193%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor196198%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor196198%_ '()))
                              (cons (cons '%#ref (cons _%$obj196195%_ '()))
                                    _%args196171%_)))
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
                             _%self196153%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor196193%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj196195%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp198560 _%stx196148%_))))
               _%$e196190%_)
              (let ((_%$e196200%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass196176%_
                        '10
                        '#f
                        '#f))))
                (if _%$e196200%_
                    ((lambda (_%metaclass196203%_)
                       (let* ((_%$obj196205%_
                               (let ((__tmp198563
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198563)))
                              (_%metakons196207%_
                               (let ((__tmp198564
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx196148%_
                                         _%metaclass196203%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp198564
                                  'instance-init!)))
                              (__tmp198565
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj196205%_
                                                             '())
                                                       (cons _%inline-make-object196173%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons196207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp198566
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons196207%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self196153%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args196171%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp198566
                            _%stx196148%_
                            _%ctx196147%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self196153%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj196205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args196171%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj196205%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp198565 _%stx196148%_)))
                     _%$e196200%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass196176%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp198567
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args196171%_))))
                              (declare (not safe))
                              (##fx= __tmp198567 _%fields196165%_))
                            (let ((__tmp198568
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self196153%_
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
                                              _%self196153%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args196171%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp198568
                               _%stx196148%_))
                            (let ((__tmp198570
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self196153%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp198569
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass196176%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx196148%_
                               __tmp198570
                               __tmp198569)))
                        (let ((_%$obj196212%_
                               (let ((__tmp198571
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198571))))
                          (let _%lp196214%_ ((_%rest196216%_ _%args196171%_)
                                             (_%initializers196217%_ '()))
                            (let* ((_%__stx198041198042%_ _%rest196216%_)
                                   (_%g196221196242%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx198041198042%_)))))
                              (let ((_%__kont198043198044%_
                                     (lambda (_%L196296%_
                                              _%L196297%_
                                              _%L196298%_)
                                       (let* ((_%slot196325%_
                                               (let ((__tmp198572
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L196298%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp198572)))
                                              (_%off196327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass196176%_
                                                  _%slot196325%_))))
                                         (if _%off196327%_
                                             (_%lp196214%_
                                              _%L196296%_
                                              (cons (cons _%off196327%_
                                                          _%L196297%_)
                                                    _%initializers196217%_))
                                             (let ((__tmp198573
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self196153%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx196148%_
                                                __tmp198573
                                                _%slot196325%_))))))
                                    (_%__kont198045198046%_
                                     (lambda ()
                                       (let ((__tmp198574
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object196173%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp198577
                                     (cons (cons '%#ref
                                                 (cons _%$obj196212%_ '()))
                                           '()))
                                    (__tmp198575
                                     (let ((__tmp198576
                                            (lambda (_%i196256%_ _%r196257%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self196153%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i196256%_) '()))
                              (cons (cons '%#ref (cons _%$obj196212%_ '()))
                                    (cons (cdr _%i196256%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r196257%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp198576
                                        '()
                                        _%initializers196217%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp198577 __tmp198575)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198574
                                          _%stx196148%_))))
                                    (_%__kont198047198048%_
                                     (lambda ()
                                       (let ((__tmp198578
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj196212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object196173%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj196212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args196171%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj196212%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198578
                                          _%stx196148%_)))))
                                (let* ((_%g196219196259%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx198041198042%_))
                                              (_%__kont198045198046%_)
                                              (_%__kont198047198048%_))))
                                       (_%__match198078198079%_
                                        (lambda (_%e196226196264%_
                                                 _%hd196227196267%_
                                                 _%tl196228196269%_
                                                 _%e196229196272%_
                                                 _%hd196230196275%_
                                                 _%tl196231196277%_
                                                 _%e196232196280%_
                                                 _%hd196233196283%_
                                                 _%tl196234196285%_
                                                 _%e196235196288%_
                                                 _%hd196236196291%_
                                                 _%tl196237196293%_)
                                          (let ((_%L196296%_
                                                 _%tl196237196293%_)
                                                (_%L196297%_
                                                 _%hd196236196291%_)
                                                (_%L196298%_
                                                 _%hd196233196283%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L196298%_))
                                                (_%__kont198043198044%_
                                                 _%L196296%_
                                                 _%L196297%_
                                                 _%L196298%_)
                                                (_%__kont198047198048%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx198041198042%_))
                                      (let ((_%e196226196264%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx198041198042%_))))
                                        (let ((_%tl196228196269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196226196264%_)))
                                              (_%hd196227196267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196226196264%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd196227196267%_))
                                              (let ((_%e196229196272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd196227196267%_))))
                                                (let ((_%tl196231196277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196229196272%_)))
                                                      (_%hd196230196275%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196229196272%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd196230196275%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd196230196275%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196231196277%_))
                      (let ((_%e196232196280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196231196277%_))))
                        (let ((_%tl196234196285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196232196280%_)))
                              (_%hd196233196283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196232196280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196234196285%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196228196269%_))
                                  (let ((_%e196235196288%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196228196269%_))))
                                    (let ((_%tl196237196293%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196235196288%_)))
                                          (_%hd196236196291%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196235196288%_))))
                                      (_%__match198078198079%_
                                       _%e196226196264%_
                                       _%hd196227196267%_
                                       _%tl196228196269%_
                                       _%e196229196272%_
                                       _%hd196230196275%_
                                       _%tl196231196277%_
                                       _%e196232196280%_
                                       _%hd196233196283%_
                                       _%tl196234196285%_
                                       _%e196235196288%_
                                       _%hd196236196291%_
                                       _%tl196237196293%_)))
                                  (_%__kont198047198048%_))
                              (_%__kont198047198048%_))))
                      (_%__kont198047198048%_))
                  (_%__kont198047198048%_))
              (_%__kont198047198048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198047198048%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g196219196259%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self193769195926%_ _%ctx195928%_ _%stx195929%_ _%args195930%_)
        (let* ((_%self195932%_ _%self193769195926%_)
               (_%self195934%_ _%self195932%_)
               (_%arguments-ok?195944%_
                (let ((__method198522
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195934%_ 'check-arguments))))
                  (if __method198522
                      (let ()
                        (declare (not safe))
                        (__method198522
                         _%self195934%_
                         _%ctx195928%_
                         _%stx195929%_
                         _%args195930%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195934%_
                                 'check-arguments))
                        '#!void))))
               (_%g195946195956%_
                (lambda (_%g195947195953%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195947195953%_))))
               (_%g195945196020%_
                (lambda (_%g195947195959%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195947195959%_))
                      (let ((_%e195949195961%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195947195959%_))))
                        (let ((_%hd195950195964%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195949195961%_)))
                              (_%tl195951195966%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195949195961%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195951195966%_))
                              ((lambda (_%L195969%_)
                                 (let* ((_%klass195982%_
                                         (let ((__tmp198579
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195934%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195929%_
                                            __tmp198579)))
                                        (_%field195984%_
                                         (let ((__tmp198580
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195934%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass195982%_
                                            __tmp198580)))
                                        (_%object195986%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195928%_
                                            _%L195969%_)))
                                        (_%klass195989%_ _%klass195982%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass195989%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp198581
                                              (cons (if (or _%arguments-ok?195944%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195934%_
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
                                 _%self195934%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field195984%_ '()))
                        (cons _%object195986%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp198581
                                          _%stx195929%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195989%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp198582
                                                  (cons (if (or _%arguments-ok?195944%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195934%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195934%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195984%_ '()))
                            (cons _%object195986%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198582
                                              _%stx195929%_))
                                           (let ((_%$e196008%_
                                                  (let ((__tmp198583
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195934%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass195989%_
                                                     __tmp198583))))
                                             (if _%$e196008%_
                                                 ((lambda (_%klass196011%_)
                                                    (let ((__tmp198584
                                                           (cons (if (or _%arguments-ok?195944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195934%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self195934%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field195984%_ '()))
                                     (cons _%object195986%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp198584 _%stx195929%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e196008%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self195934%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp198585
                                                            (let ((_%$obj196017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp198586
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp198586))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj196017%_ '())
                                              (cons _%object195986%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass195989%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj196017%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195934%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195984%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj196017%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?195944%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj196017%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195934%_
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
                                                             _%self195934%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj196017%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self195934%_
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
               (gxc#xform-wrap-source __tmp198585 _%stx195929%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp198587
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object195986%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195934%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp198587 _%stx195929%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd195950195964%_)
                              (_%g195946195956%_ _%g195947195959%_))))
                      (_%g195946195956%_ _%g195947195959%_)))))
          (_%g195945196020%_ _%args195930%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass197809 __method-table197810)
        (let ((__check-arguments197811
               (let ((__tmp198588
                      (lambda ()
                        (let ((__method197812
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197810
                                  'check-arguments
                                  '#f))))
                          (if __method197812
                              __method197812
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198588)))
              (__slot197813
               (let ((__slot197814
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass197809 'slot))))
                 (if __slot197814
                     __slot197814
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self193769195926%_
                   _%ctx195928%_
                   _%stx195929%_
                   _%args195930%_)
            (let* ((_%self195932%_ _%self193769195926%_)
                   (_%self195934%_ _%self195932%_)
                   (_%arguments-ok?195944%_
                    ((force __check-arguments197811)
                     _%self195934%_
                     _%ctx195928%_
                     _%stx195929%_
                     _%args195930%_))
                   (_%g195946195956%_
                    (lambda (_%g195947195953%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195947195953%_))))
                   (_%g195945196020%_
                    (lambda (_%g195947195959%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195947195959%_))
                          (let ((_%e195949195961%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195947195959%_))))
                            (let ((_%hd195950195964%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195949195961%_)))
                                  (_%tl195951195966%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195949195961%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195951195966%_))
                                  ((lambda (_%L195969%_)
                                     (let* ((_%klass195982%_
                                             (let ((__tmp198589
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195934%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx195929%_
                                                __tmp198589)))
                                            (_%field195984%_
                                             (let ((__tmp198590
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self195934%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass195982%_
                                                __tmp198590)))
                                            (_%object195986%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx195928%_
                                                _%L195969%_)))
                                            (_%klass195989%_ _%klass195982%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass195989%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp198591
                                                  (cons (if (or _%arguments-ok?195944%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195934%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195934%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field195984%_ '()))
                            (cons _%object195986%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198591
                                              _%stx195929%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195989%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198592
                                                      (cons (if (or _%arguments-ok?195944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195934%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195934%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195984%_ '()))
                                (cons _%object195986%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198592
                                                  _%stx195929%_))
                                               (let ((_%$e196008%_
                                                      (let ((__tmp198593
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self195934%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass195989%_ __tmp198593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e196008%_
                                                     ((lambda (_%klass196011%_)
                                                        (let ((__tmp198594
                                                               (cons (if (or _%arguments-ok?195944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195934%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self195934%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field195984%_ '()))
                                         (cons _%object195986%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp198594 _%stx195929%_)))
              _%$e196008%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self195934%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp198595
                                                                (let ((_%$obj196017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp198596
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp198596))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj196017%_ '())
                                                  (cons _%object195986%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass195989%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj196017%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195934%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195984%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj196017%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?195944%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj196017%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195934%_
                               __slot197813
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
                        (##unchecked-structure-ref _%self195934%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj196017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195934%_
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
                   (gxc#xform-wrap-source __tmp198595 _%stx195929%_))
                 (let ((__tmp198597
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object195986%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195934%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp198597 _%stx195929%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd195950195964%_)
                                  (_%g195946195956%_ _%g195947195959%_))))
                          (_%g195946195956%_ _%g195947195959%_)))))
              (_%g195945196020%_ _%args195930%_))))))
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
      (lambda (_%self193770195688%_ _%ctx195690%_ _%stx195691%_ _%args195692%_)
        (let* ((_%self195694%_ _%self193770195688%_)
               (_%self195696%_ _%self195694%_)
               (_%arguments-ok?195706%_
                (let ((__method198523
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self195696%_ 'check-arguments))))
                  (if __method198523
                      (let ()
                        (declare (not safe))
                        (__method198523
                         _%self195696%_
                         _%ctx195690%_
                         _%stx195691%_
                         _%args195692%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self195696%_
                                 'check-arguments))
                        '#!void))))
               (_%g195708195722%_
                (lambda (_%g195709195719%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195709195719%_))))
               (_%g195707195801%_
                (lambda (_%g195709195725%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195709195725%_))
                      (let ((_%e195712195727%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195709195725%_))))
                        (let ((_%hd195713195730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195712195727%_)))
                              (_%tl195714195732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195712195727%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195714195732%_))
                              (let ((_%e195715195735%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195714195732%_))))
                                (let ((_%hd195716195738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195715195735%_)))
                                      (_%tl195717195740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195715195735%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195717195740%_))
                                      ((lambda (_%L195743%_ _%L195744%_)
                                         (let* ((_%klass195760%_
                                                 (let ((__tmp198598
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195696%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx195691%_
                                                    __tmp198598)))
                                                (_%field195762%_
                                                 (let ((__tmp198599
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self195696%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass195760%_
                                                    __tmp198599)))
                                                (_%object195764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195690%_
                                                    _%L195744%_)))
                                                (_%value195766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx195690%_
                                                    _%L195743%_)))
                                                (_%klass195769%_
                                                 _%klass195760%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass195769%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp198600
                                                      (cons (if (or _%arguments-ok?195706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self195696%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195696%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field195762%_ '()))
                                (cons _%object195764%_
                                      (cons _%value195766%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp198600
                                                  _%stx195691%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195769%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198601
                                                          (cons (if (or _%arguments-ok?195706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195696%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195696%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195762%_ '()))
                                    (cons _%object195764%_
                                          (cons _%value195766%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198601
                                                      _%stx195691%_))
                                                   (let ((_%$e195789%_
                                                          (let ((__tmp198602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195696%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass195769%_
                     __tmp198602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e195789%_
                                                         ((lambda (_%klass195792%_)
                                                            (let ((__tmp198603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?195706%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195696%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self195696%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field195762%_ '()))
                                             (cons _%object195764%_
                                                   (cons _%value195766%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198603 _%stx195691%_)))
                  _%$e195789%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self195696%_ '4 '#f '#f))
                     (let ((__tmp198604
                            (let ((_%$obj195798%_
                                   (let ((__tmp198605
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp198605))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj195798%_ '())
                                                      (cons _%object195764%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass195769%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj195798%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195696%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field195762%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj195798%_
                                                              '()))
                                                  (cons _%value195766%_
                                                        '())))))
                          (cons (if _%arguments-ok?195706%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self195696%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value195766%_ '())))))
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
                             _%self195696%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj195798%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self195696%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value195766%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp198604 _%stx195691%_))
                     (let ((__tmp198606
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object195764%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self195696%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value195766%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp198606
                        _%stx195691%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195716195738%_
                                       _%hd195713195730%_)
                                      (_%g195708195722%_ _%g195709195725%_))))
                              (_%g195708195722%_ _%g195709195725%_))))
                      (_%g195708195722%_ _%g195709195725%_)))))
          (_%g195707195801%_ _%args195692%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass197815 __method-table197816)
        (let ((__check-arguments197817
               (let ((__tmp198607
                      (lambda ()
                        (let ((__method197818
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table197816
                                  'check-arguments
                                  '#f))))
                          (if __method197818
                              __method197818
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp198607))))
          (lambda (_%self193770195688%_
                   _%ctx195690%_
                   _%stx195691%_
                   _%args195692%_)
            (let* ((_%self195694%_ _%self193770195688%_)
                   (_%self195696%_ _%self195694%_)
                   (_%arguments-ok?195706%_
                    ((force __check-arguments197817)
                     _%self195696%_
                     _%ctx195690%_
                     _%stx195691%_
                     _%args195692%_))
                   (_%g195708195722%_
                    (lambda (_%g195709195719%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g195709195719%_))))
                   (_%g195707195801%_
                    (lambda (_%g195709195725%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g195709195725%_))
                          (let ((_%e195712195727%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g195709195725%_))))
                            (let ((_%hd195713195730%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195712195727%_)))
                                  (_%tl195714195732%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195712195727%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195714195732%_))
                                  (let ((_%e195715195735%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195714195732%_))))
                                    (let ((_%hd195716195738%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195715195735%_)))
                                          (_%tl195717195740%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195715195735%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195717195740%_))
                                          ((lambda (_%L195743%_ _%L195744%_)
                                             (let* ((_%klass195760%_
                                                     (let ((__tmp198608
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195696%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx195691%_
                                                        __tmp198608)))
                                                    (_%field195762%_
                                                     (let ((__tmp198609
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self195696%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass195760%_
                                                        __tmp198609)))
                                                    (_%object195764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195690%_
                                                        _%L195744%_)))
                                                    (_%value195766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195690%_
                                                        _%L195743%_)))
                                                    (_%klass195769%_
                                                     _%klass195760%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass195769%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp198610
                                                          (cons (if (or _%arguments-ok?195706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self195696%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195696%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field195762%_ '()))
                                    (cons _%object195764%_
                                          (cons _%value195766%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp198610
                                                      _%stx195691%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass195769%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp198611
                                                              (cons (if (or _%arguments-ok?195706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self195696%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self195696%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field195762%_ '()))
                                        (cons _%object195764%_
                                              (cons _%value195766%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp198611 _%stx195691%_))
               (let ((_%$e195789%_
                      (let ((__tmp198612
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self195696%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass195769%_
                         __tmp198612))))
                 (if _%$e195789%_
                     ((lambda (_%klass195792%_)
                        (let ((__tmp198613
                               (cons (if (or _%arguments-ok?195706%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self195696%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self195696%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field195762%_
                                                             '()))
                                                 (cons _%object195764%_
                                                       (cons _%value195766%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp198613 _%stx195691%_)))
                      _%$e195789%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self195696%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp198614
                                (let ((_%$obj195798%_
                                       (let ((__tmp198615
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp198615))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj195798%_
                                                                '())
                                                          (cons _%object195764%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass195769%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj195798%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self195696%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field195762%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj195798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value195766%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?195706%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj195798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self195696%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value195766%_ '())))))
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
                                 _%self195696%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj195798%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self195696%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value195766%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp198614 _%stx195691%_))
                         (let ((__tmp198616
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object195764%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195696%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value195766%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp198616
                            _%stx195691%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd195716195738%_
                                           _%hd195713195730%_)
                                          (_%g195708195722%_
                                           _%g195709195725%_))))
                                  (_%g195708195722%_ _%g195709195725%_))))
                          (_%g195708195722%_ _%g195709195725%_)))))
              (_%g195707195801%_ _%args195692%_))))))
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
      (lambda (_%self193771195501%_ _%ctx195503%_ _%stx195504%_ _%args195505%_)
        (let* ((_%self195507%_ _%self193771195501%_)
               (_%self195509%_ _%self195507%_)
               (_%self195518195528%_ _%self195509%_)
               (_%E195520195532%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195518195528%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K195521195542%_
                (lambda (_%inline195535%_ _%dispatch195536%_ _%arity195537%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self195509%_
                         _%args195505%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx195504%_
                         _%arity195537%_)))
                  (if _%inline195535%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp198617 (_%inline195535%_ _%stx195504%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp198617
                           _%stx195504%_
                           _%ctx195503%_)))
                      (if (and _%dispatch195536%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch195536%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch195536%_))
                            (let ((__tmp198618
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch195536%_
                                                           '()))
                                               _%args195505%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp198618
                               _%stx195504%_
                               _%ctx195503%_)))
                          (gxc#!procedure::optimize-call
                           _%self195509%_
                           _%ctx195503%_
                           _%stx195504%_
                           _%args195505%_)))))
               (_%e195522195545%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195518195528%_ '1 '#f '#f)))
               (_%e195523195548%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195518195528%_ '2 '#f '#f)))
               (_%e195524195551%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195518195528%_ '3 '#f '#f)))
               (_%arity195554%_ _%e195524195551%_)
               (_%e195525195556%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195518195528%_ '4 '#f '#f)))
               (_%dispatch195559%_ _%e195525195556%_)
               (_%e195526195561%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195518195528%_ '5 '#f '#f)))
               (_%inline195564%_ _%e195526195561%_))
          (_%K195521195542%_
           _%inline195564%_
           _%dispatch195559%_
           _%arity195554%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self193772195351%_ _%ctx195353%_ _%stx195354%_ _%args195355%_)
        (let* ((_%self195357%_ _%self193772195351%_)
               (_%self195359%_ _%self195357%_)
               (_%$e195373%_
                (let ((__tmp198620
                       (lambda (_%g195368195370%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g195368195370%_
                            _%args195355%_))))
                      (__tmp198619
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195359%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp198620 __tmp198619))))
          (if _%$e195373%_
              ((lambda (_%clause195376%_)
                 (let ((__method198524
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause195376%_ 'optimize-call))))
                   (if __method198524
                       (let ()
                         (declare (not safe))
                         (__method198524
                          _%clause195376%_
                          _%ctx195353%_
                          _%stx195354%_
                          _%args195355%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause195376%_
                                  'optimize-call))
                         '#!void))))
               _%$e195373%_)
              (let ((__tmp198621
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self195359%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx195354%_
                 __tmp198621))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self193773195089%_ _%ctx195091%_ _%stx195092%_ _%args195093%_)
        (let* ((_%self195095%_ _%self193773195089%_)
               (_%self195097%_ _%self195095%_)
               (_%self195106195115%_ _%self195097%_)
               (_%E195108195119%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195106195115%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K195109195210%_
                (lambda (_%dispatch195122%_ _%table195123%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch195122%_))
                      (let* ((_%g195124195134%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch195122%_)))
                             (_%else195126195142%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch195122%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx195091%_
                                   _%stx195092%_))))
                             (_%K195128195191%_
                              (lambda (_%main195145%_ _%keys195146%_)
                                (let ((_g198622_
                                       (gxc#!kw-lambda-split-args
                                        _%stx195092%_
                                        _%args195093%_)))
                                  (begin
                                    (let ((_g198623_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198622_)
                                                 (##values-length _g198622_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198623_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198623_)))
                                    (let ((_%pargs195148%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198622_ 0)))
                                          (_%kwargs195149%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198622_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main195145%_))
                                        (if _%table195123%_
                                            (let ((_%xargs195157%_
                                                   (map (lambda (_%key195151%_)
                                                          (let ((_%$e195153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key195151%_ _%kwargs195149%_))))
                    (if _%$e195153%_ _%$e195153%_ '(%#ref absent-value))))
                _%keys195146%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw195159%_)
                                                 (if (memq (car _%kw195159%_)
                                                           _%keys195146%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx195092%_
                                                        _%keys195146%_
                                                        _%kw195159%_))))
                                               _%kwargs195149%_)
                                              (let ((__tmp198624
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main195145%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs195148%_
                                  _%xargs195157%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp198624
                                                 _%stx195092%_
                                                 _%ctx195091%_)))
                                            (let* ((_%kwt195161%_
                                                    (let ((__tmp198625
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp198625)))
                                                   (_%kwvars195165%_
                                                    (map (lambda (_%_195163%_)
                                                           (let ((__tmp198626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp198626)))
                 _%kwargs195149%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind195170%_
                                                    (map (lambda (_%kw195167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195168%_)
                   (cons (cons _%kwvar195168%_ '())
                         (cons (cdr _%kw195167%_) '())))
                 _%kwargs195149%_
                 _%kwvars195165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset195175%_
                                                    (map (lambda (_%kw195172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195173%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt195161%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw195172%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar195173%_
                                                             '()))
                                                 '()))))))
                 _%kwargs195149%_
                 _%kwvars195165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs195180%_
                                                    (map (lambda (_%kw195177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar195178%_)
                   (cons (car _%kw195177%_)
                         (cons '%#ref (cons _%kwvar195178%_ '()))))
                 _%kwargs195149%_
                 _%kwvars195165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs195188%_
                                                    (map (lambda (_%key195182%_)
                                                           (let ((_%$e195184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key195182%_ _%xkwargs195180%_))))
                     (if _%$e195184%_ _%$e195184%_ '(%#ref absent-value))))
                 _%keys195146%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198627
                                                    (cons '%#let-values
                                                          (cons _%kwbind195170%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt195161%_ '())
                                                      (cons (let ((__tmp198628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs195149%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198628 _%stx195092%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp198629
                                                             (cons (let ((__tmp198630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main195145%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt195161%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs195148%_
                                                       _%xargs195188%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp198630 _%stx195092%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp198629 _%kwset195175%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp198627
                                               _%stx195092%_
                                               _%ctx195091%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g195124195134%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e195129195194%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195124195134%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e195130195197%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195124195134%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e195131195200%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195124195134%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys195203%_ _%e195131195200%_)
                                   (_%e195132195205%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g195124195134%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main195208%_ _%e195132195205%_))
                              (_%K195128195191%_
                               _%main195208%_
                               _%keys195203%_))
                            (_%else195126195142%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx195091%_ _%stx195092%_)))))
               (_%e195110195213%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195106195115%_ '1 '#f '#f)))
               (_%e195111195216%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195106195115%_ '2 '#f '#f)))
               (_%e195112195219%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195106195115%_ '3 '#f '#f)))
               (_%table195222%_ _%e195112195219%_)
               (_%e195113195224%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195106195115%_ '4 '#f '#f)))
               (_%dispatch195227%_ _%e195113195224%_))
          (_%K195109195210%_ _%dispatch195227%_ _%table195222%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx194702%_ _%args194703%_)
        (let _%lp194705%_ ((_%rest194707%_ _%args194703%_)
                           (_%pargs194708%_ '())
                           (_%kwargs194709%_ '()))
          (let* ((_%__stx198083198084%_ _%rest194707%_)
                 (_%g194715194767%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx198083198084%_)))))
            (let ((_%__kont198085198086%_
                   (lambda (_%L194946%_ _%L194947%_)
                     (_%lp194705%_
                      _%L194946%_
                      (cons _%L194947%_ _%pargs194708%_)
                      _%kwargs194709%_)))
                  (_%__kont198087198088%_
                   (lambda (_%L194892%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L194892%_ _%pargs194708%_))
                             (reverse _%kwargs194709%_))))
                  (_%__kont198089198090%_
                   (lambda (_%L194839%_ _%L194840%_ _%L194841%_)
                     (let ((_%kw194858%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L194841%_))))
                       (if (assq _%kw194858%_ _%kwargs194709%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx194702%_
                              _%kw194858%_))
                           (_%lp194705%_
                            _%L194839%_
                            _%pargs194708%_
                            (cons (cons _%kw194858%_ _%L194840%_)
                                  _%kwargs194709%_))))))
                  (_%__kont198091198092%_
                   (lambda (_%L194787%_ _%L194788%_)
                     (_%lp194705%_
                      _%L194787%_
                      (cons _%L194788%_ _%pargs194708%_)
                      _%kwargs194709%_)))
                  (_%__kont198093198094%_
                   (lambda ()
                     (values (reverse _%pargs194708%_)
                             (reverse _%kwargs194709%_)))))
              (let ((_%__match198190198191%_
                     (lambda (_%e194746194807%_
                              _%hd194747194810%_
                              _%tl194748194812%_
                              _%e194749194815%_
                              _%hd194750194818%_
                              _%tl194751194820%_
                              _%e194752194823%_
                              _%hd194753194826%_
                              _%tl194754194828%_
                              _%e194755194831%_
                              _%hd194756194834%_
                              _%tl194757194836%_)
                       (let ((_%L194839%_ _%tl194757194836%_)
                             (_%L194840%_ _%hd194756194834%_)
                             (_%L194841%_ _%hd194753194826%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L194841%_))
                             (_%__kont198089198090%_
                              _%L194839%_
                              _%L194840%_
                              _%L194841%_)
                             (_%__kont198091198092%_
                              _%tl194748194812%_
                              _%hd194747194810%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx198083198084%_))
                    (let ((_%e194719194911%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx198083198084%_))))
                      (let ((_%tl194721194916%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194719194911%_)))
                            (_%hd194720194914%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194719194911%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd194720194914%_))
                            (let ((_%e194722194919%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd194720194914%_))))
                              (let ((_%tl194724194924%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194722194919%_)))
                                    (_%hd194723194922%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194722194919%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd194723194922%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd194723194922%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194724194924%_))
                                            (let ((_%e194725194927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194724194924%_))))
                                              (let ((_%tl194727194932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194725194927%_)))
                                                    (_%hd194726194930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194725194927%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd194726194930%_))
                                                    (let ((_%e194728194935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd194726194930%_))))
                                                      (if (equal? _%e194728194935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194727194932%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194721194916%_))
                          (let ((_%e194729194938%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194721194916%_))))
                            (let ((_%tl194731194943%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194729194938%_)))
                                  (_%hd194730194941%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194729194938%_))))
                              (_%__kont198085198086%_
                               _%tl194731194943%_
                               _%hd194730194941%_)))
                          (_%__kont198091198092%_
                           _%tl194721194916%_
                           _%hd194720194914%_))
                      (_%__kont198091198092%_
                       _%tl194721194916%_
                       _%hd194720194914%_))
                  (if (equal? _%e194728194935%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194727194932%_))
                          (_%__kont198087198088%_ _%tl194721194916%_)
                          (_%__kont198091198092%_
                           _%tl194721194916%_
                           _%hd194720194914%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194727194932%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194721194916%_))
                              (let ((_%e194755194831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194721194916%_))))
                                (let ((_%tl194757194836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194755194831%_)))
                                      (_%hd194756194834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194755194831%_))))
                                  (_%__match198190198191%_
                                   _%e194719194911%_
                                   _%hd194720194914%_
                                   _%tl194721194916%_
                                   _%e194722194919%_
                                   _%hd194723194922%_
                                   _%tl194724194924%_
                                   _%e194725194927%_
                                   _%hd194726194930%_
                                   _%tl194727194932%_
                                   _%e194755194831%_
                                   _%hd194756194834%_
                                   _%tl194757194836%_)))
                              (_%__kont198091198092%_
                               _%tl194721194916%_
                               _%hd194720194914%_))
                          (_%__kont198091198092%_
                           _%tl194721194916%_
                           _%hd194720194914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194727194932%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl194721194916%_))
                                                            (let ((_%e194755194831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194721194916%_))))
                      (let ((_%tl194757194836%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194755194831%_)))
                            (_%hd194756194834%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194755194831%_))))
                        (_%__match198190198191%_
                         _%e194719194911%_
                         _%hd194720194914%_
                         _%tl194721194916%_
                         _%e194722194919%_
                         _%hd194723194922%_
                         _%tl194724194924%_
                         _%e194725194927%_
                         _%hd194726194930%_
                         _%tl194727194932%_
                         _%e194755194831%_
                         _%hd194756194834%_
                         _%tl194757194836%_)))
                    (_%__kont198091198092%_
                     _%tl194721194916%_
                     _%hd194720194914%_))
                (_%__kont198091198092%_
                 _%tl194721194916%_
                 _%hd194720194914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont198091198092%_
                                             _%tl194721194916%_
                                             _%hd194720194914%_))
                                        (_%__kont198091198092%_
                                         _%tl194721194916%_
                                         _%hd194720194914%_))
                                    (_%__kont198091198092%_
                                     _%tl194721194916%_
                                     _%hd194720194914%_))))
                            (_%__kont198091198092%_
                             _%tl194721194916%_
                             _%hd194720194914%_))))
                    (_%__kont198093198094%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self193774194684%_ _%ctx194686%_ _%stx194687%_ _%args194688%_)
        (let* ((_%self194690%_ _%self193774194684%_)
               (_%self194692%_ _%self194690%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx194686%_ _%stx194687%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self194372%_ _%stx194373%_)
        (let* ((_%__stx198199198200%_ _%stx194373%_)
               (_%g194376194416%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198199198200%_)))))
          (let ((_%__kont198201198202%_
                 (lambda (_%L194522%_ _%L194523%_)
                   (let ((_%$e194550%_
                          (member 'return:
                                  (let ((__tmp198631
                                         (lambda (_%g194542194545%_
                                                  _%g194543194547%_)
                                           (cons _%g194542194545%_
                                                 _%g194543194547%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp198631 '() _%L194523%_))
                                  gx#stx-eq?)))
                     (if _%$e194550%_
                         ((lambda (_%tail194553%_)
                            (let ((_%type194555%_
                                   (let ((__tmp198632
                                          (let ((__tmp198633
                                                 (cadr _%tail194553%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp198633))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx194373%_
                                      __tmp198632))))
                              (gxc#check-return-type!
                               _%stx194373%_
                               _%L194522%_
                               _%type194555%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self194372%_
                                 _%L194522%_))))
                          _%$e194550%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self194372%_ _%L194522%_))))))
                (_%__kont198205198206%_
                 (lambda (_%L194445%_ _%L194446%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self194372%_ _%L194445%_)))))
            (let ((_%__match198236198237%_
                   (lambda (_%e194380194466%_
                            _%hd194381194469%_
                            _%tl194382194471%_
                            _%e194383194474%_
                            _%hd194384194477%_
                            _%tl194385194479%_
                            _%e194386194482%_
                            _%hd194387194485%_
                            _%tl194388194487%_
                            _%__splice198203198204%_
                            _%target194389194490%_
                            _%tl194391194492%_)
                     (letrec ((_%loop194392194495%_
                               (lambda (_%hd194390194498%_
                                        _%signature194396194500%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd194390194498%_))
                                     (let ((_%e194393194503%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd194390194498%_))))
                                       (let ((_%lp-tl194395194508%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e194393194503%_)))
                                             (_%lp-hd194394194506%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e194393194503%_))))
                                         (_%loop194392194495%_
                                          _%lp-tl194395194508%_
                                          (cons _%lp-hd194394194506%_
                                                _%signature194396194500%_))))
                                     (let ((_%signature194397194511%_
                                            (reverse _%signature194396194500%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl194385194479%_))
                                           (let ((_%e194398194514%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl194385194479%_))))
                                             (let ((_%tl194400194519%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e194398194514%_)))
                                                   (_%hd194399194517%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e194398194514%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl194400194519%_))
                                                   (_%__kont198201198202%_
                                                    _%hd194399194517%_
                                                    _%signature194397194511%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g194376194416%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g194376194416%_))))))))
                       (_%loop194392194495%_ _%target194389194490%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198199198200%_))
                  (let ((_%e194380194466%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198199198200%_))))
                    (let ((_%tl194382194471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194380194466%_)))
                          (_%hd194381194469%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194380194466%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194382194471%_))
                          (let ((_%e194383194474%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194382194471%_))))
                            (let ((_%tl194385194479%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194383194474%_)))
                                  (_%hd194384194477%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194383194474%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194384194477%_))
                                  (let ((_%e194386194482%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194384194477%_))))
                                    (let ((_%tl194388194487%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194386194482%_)))
                                          (_%hd194387194485%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194386194482%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194387194485%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd194387194485%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194388194487%_))
                                                  (let ((_%__splice198203198204%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl194388194487%_
                                                            '0))))
                                                    (let ((_%tl194391194492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198203198204%_
                                                              '1)))
                                                          (_%target194389194490%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice198203198204%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194391194492%_))
                                                          (_%__match198236198237%_
                                                           _%e194380194466%_
                                                           _%hd194381194469%_
                                                           _%tl194382194471%_
                                                           _%e194383194474%_
                                                           _%hd194384194477%_
                                                           _%tl194385194479%_
                                                           _%e194386194482%_
                                                           _%hd194387194485%_
                                                           _%tl194388194487%_
                                                           _%__splice198203198204%_
                                                           _%target194389194490%_
                                                           _%tl194391194492%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194385194479%_))
                      (let ((_%e194409194437%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194385194479%_))))
                        (let ((_%tl194411194442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194409194437%_)))
                              (_%hd194410194440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194409194437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194411194442%_))
                              (_%__kont198205198206%_
                               _%hd194410194440%_
                               _%hd194384194477%_)
                              (let ()
                                (declare (not safe))
                                (_%g194376194416%_)))))
                      (let () (declare (not safe)) (_%g194376194416%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194385194479%_))
                                                      (let ((_%e194409194437%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194385194479%_))))
                (let ((_%tl194411194442%_
                       (let () (declare (not safe)) (##cdr _%e194409194437%_)))
                      (_%hd194410194440%_
                       (let ()
                         (declare (not safe))
                         (##car _%e194409194437%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194411194442%_))
                      (_%__kont198205198206%_
                       _%hd194410194440%_
                       _%hd194384194477%_)
                      (let () (declare (not safe)) (_%g194376194416%_)))))
              (let () (declare (not safe)) (_%g194376194416%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194385194479%_))
                                                  (let ((_%e194409194437%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194385194479%_))))
                                                    (let ((_%tl194411194442%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194409194437%_)))
                                                          (_%hd194410194440%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194409194437%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194411194442%_))
                                                          (_%__kont198205198206%_
                                                           _%hd194410194440%_
                                                           _%hd194384194477%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194376194416%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194376194416%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194385194479%_))
                                              (let ((_%e194409194437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194385194479%_))))
                                                (let ((_%tl194411194442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194409194437%_)))
                                                      (_%hd194410194440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194409194437%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194411194442%_))
                                                      (_%__kont198205198206%_
                                                       _%hd194410194440%_
                                                       _%hd194384194477%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194376194416%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194376194416%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194385194479%_))
                                      (let ((_%e194409194437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194385194479%_))))
                                        (let ((_%tl194411194442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194409194437%_)))
                                              (_%hd194410194440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194409194437%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194411194442%_))
                                              (_%__kont198205198206%_
                                               _%hd194410194440%_
                                               _%hd194384194477%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194376194416%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194376194416%_))))))
                          (let () (declare (not safe)) (_%g194376194416%_)))))
                  (let () (declare (not safe)) (_%g194376194416%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx194350%_ _%expr194351%_ _%type194352%_)
        (let ((_%$e194354%_ (not _%type194352%_)))
          (if _%$e194354%_
              _%$e194354%_
              (let ((_%$e194357%_
                     (eq? (##structure-ref _%type194352%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e194357%_
                    _%$e194357%_
                    (let ((_%expr-type194361%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr194351%_))))
                      (if (not _%expr-type194361%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx194350%_
                             _%type194352%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type194361%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx194350%_
                                 _%type194352%_
                                 _%expr-type194361%_))
                              (let ((_%$e194365%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type194361%_
                                        'gxc#!abort::t))))
                                (if _%$e194365%_
                                    _%$e194365%_
                                    (let ((_%$e194368%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type194361%_
                                              _%type194352%_))))
                                      (if _%$e194368%_
                                          _%$e194368%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx194350%_
                                             _%type194352%_
                                             _%expr-type194361%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self193776%_ _%stx193777%_)
        (let* ((_%__stx198281198282%_ _%stx193777%_)
               (_%g193782193892%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198281198282%_)))))
          (let ((_%__kont198283198284%_
                 (lambda (_%L194324%_ _%L194325%_ _%L194326%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L194326%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193776%_ _%L194325%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self193776%_ _%L194324%_)))))
                (_%__kont198285198286%_
                 (lambda (_%L194150%_ _%L194151%_ _%L194152%_ _%L194153%_)
                   (let ((_%$e194185%_
                          (let ((__tmp198634
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L194153%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp198634))))
                     (if _%$e194185%_
                         ((lambda (_%pred-type194188%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194188%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type194188%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test194193%_
                                        (let ((__tmp198635
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L194153%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L194152%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp198635
                                           _%stx193777%_
                                           _%self193776%_)))
                                       (_%K194197%_
                                        (let ((__tmp198636
                                               (lambda ()
                                                 (let ((__tmp198639
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self193776%_
                                                             _%L194151%_))))
                                                       (__tmp198637
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L194152%_))
                            (let ((__tmp198638
                                   (##structure-ref
                                    _%pred-type194188%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx193777%_
                               __tmp198638)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp198639
                                                    gxc#current-compile-path-type
                                                    __tmp198637)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198636)))
                                       (_%E194200%_
                                        (let ((__tmp198640
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self193776%_
                                                    _%L194150%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp198640)))
                                       (_%__stx198259198260%_ _%test194193%_)
                                       (_%g194204194218%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx198259198260%_)))))
                                  (let ((_%__kont198261198262%_
                                         (lambda (_%L194246%_ _%L194247%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L194246%_))
                                               (force _%K194197%_)
                                               (force _%E194200%_))))
                                        (_%__kont198263198264%_
                                         (lambda ()
                                           (let ((__tmp198641
                                                  (cons '%#if
                                                        (cons _%test194193%_
                                                              (cons (force _%K194197%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E194200%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp198641
                                              _%stx193777%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx198259198260%_))
                                        (let ((_%e194208194230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx198259198260%_))))
                                          (let ((_%tl194210194235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194208194230%_)))
                                                (_%hd194209194233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194208194230%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194210194235%_))
                                                (let ((_%e194211194238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194210194235%_))))
                                                  (let ((_%tl194213194243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194211194238%_)))
                                                        (_%hd194212194241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194211194238%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194213194243%_))
                                                        (_%__kont198261198262%_
                                                         _%hd194212194241%_
                                                         _%hd194209194233%_)
                                                        (_%__kont198263198264%_))))
                                                (_%__kont198263198264%_))))
                                        (_%__kont198263198264%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self193776%_
                                   _%stx193777%_))))
                          _%$e194185%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self193776%_
                            _%stx193777%_))))))
                (_%__kont198287198288%_
                 (lambda (_%L194026%_ _%L194027%_ _%L194028%_ _%L194029%_)
                   (gxc#optimize-if%
                    _%self193776%_
                    (let ((__tmp198642
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L194028%_
                                       (cons _%L194026%_
                                             (cons _%L194027%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp198642 _%stx193777%_)))))
                (_%__kont198289198290%_
                 (lambda (_%L193929%_ _%L193930%_ _%L193931%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self193776%_ _%stx193777%_)))))
            (let ((_%__match198488198489%_
                   (lambda (_%e193846193954%_
                            _%hd193847193957%_
                            _%tl193848193959%_
                            _%e193849193962%_
                            _%hd193850193965%_
                            _%tl193851193967%_
                            _%e193852193970%_
                            _%hd193853193973%_
                            _%tl193854193975%_
                            _%e193855193978%_
                            _%hd193856193981%_
                            _%tl193857193983%_
                            _%e193858193986%_
                            _%hd193859193989%_
                            _%tl193860193991%_
                            _%e193861193994%_
                            _%hd193862193997%_
                            _%tl193863193999%_
                            _%e193864194002%_
                            _%hd193865194005%_
                            _%tl193866194007%_
                            _%e193867194010%_
                            _%hd193868194013%_
                            _%tl193869194015%_
                            _%e193870194018%_
                            _%hd193871194021%_
                            _%tl193872194023%_)
                     (let ((_%L194026%_ _%hd193871194021%_)
                           (_%L194027%_ _%hd193868194013%_)
                           (_%L194028%_ _%hd193865194005%_)
                           (_%L194029%_ _%hd193862193997%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L194029%_ 'not))
                           (_%__kont198287198288%_
                            _%L194026%_
                            _%L194027%_
                            _%L194028%_
                            _%L194029%_)
                           (_%__kont198289198290%_
                            _%hd193871194021%_
                            _%hd193868194013%_
                            _%hd193850193965%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198281198282%_))
                  (let ((_%e193787194276%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198281198282%_))))
                    (let ((_%tl193789194281%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193787194276%_)))
                          (_%hd193788194279%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193787194276%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193789194281%_))
                          (let ((_%e193790194284%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193789194281%_))))
                            (let ((_%tl193792194289%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193790194284%_)))
                                  (_%hd193791194287%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193790194284%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193791194287%_))
                                  (let ((_%e193793194292%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193791194287%_))))
                                    (let ((_%tl193795194297%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193793194292%_)))
                                          (_%hd193794194295%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193793194292%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193794194295%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd193794194295%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193795194297%_))
                                                  (let ((_%e193796194300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193795194297%_))))
                                                    (let ((_%tl193798194305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193796194300%_)))
                                                          (_%hd193797194303%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193796194300%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193798194305%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193792194289%_))
                      (let ((_%e193799194308%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193792194289%_))))
                        (let ((_%tl193801194313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193799194308%_)))
                              (_%hd193800194311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193799194308%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193801194313%_))
                              (let ((_%e193802194316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193801194313%_))))
                                (let ((_%tl193804194321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193802194316%_)))
                                      (_%hd193803194319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193802194316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193804194321%_))
                                      (_%__kont198283198284%_
                                       _%hd193803194319%_
                                       _%hd193800194311%_
                                       _%hd193797194303%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193782193892%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193782193892%_)))))
                      (let () (declare (not safe)) (_%g193782193892%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193792194289%_))
                      (let ((_%e193882193913%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193792194289%_))))
                        (let ((_%tl193884193918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193882193913%_)))
                              (_%hd193883193916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193882193913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193884193918%_))
                              (let ((_%e193885193921%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193884193918%_))))
                                (let ((_%tl193887193926%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193885193921%_)))
                                      (_%hd193886193924%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193885193921%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193887193926%_))
                                      (_%__kont198289198290%_
                                       _%hd193886193924%_
                                       _%hd193883193916%_
                                       _%hd193791194287%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g193782193892%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g193782193892%_)))))
                      (let () (declare (not safe)) (_%g193782193892%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193792194289%_))
                                                      (let ((_%e193882193913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193792194289%_))))
                (let ((_%tl193884193918%_
                       (let () (declare (not safe)) (##cdr _%e193882193913%_)))
                      (_%hd193883193916%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193882193913%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193884193918%_))
                      (let ((_%e193885193921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193884193918%_))))
                        (let ((_%tl193887193926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193885193921%_)))
                              (_%hd193886193924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193885193921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193887193926%_))
                              (_%__kont198289198290%_
                               _%hd193886193924%_
                               _%hd193883193916%_
                               _%hd193791194287%_)
                              (let ()
                                (declare (not safe))
                                (_%g193782193892%_)))))
                      (let () (declare (not safe)) (_%g193782193892%_)))))
              (let () (declare (not safe)) (_%g193782193892%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd193794194295%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193795194297%_))
                                                      (let ((_%e193818194086%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193795194297%_))))
                (let ((_%tl193820194091%_
                       (let () (declare (not safe)) (##cdr _%e193818194086%_)))
                      (_%hd193819194089%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193818194086%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193819194089%_))
                      (let ((_%e193821194094%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193819194089%_))))
                        (let ((_%tl193823194099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193821194094%_)))
                              (_%hd193822194097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193821194094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193822194097%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193822194097%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193823194099%_))
                                      (let ((_%e193824194102%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193823194099%_))))
                                        (let ((_%tl193826194107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193824194102%_)))
                                              (_%hd193825194105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193824194102%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193826194107%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193820194091%_))
                                                  (let ((_%e193827194110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193820194091%_))))
                                                    (let ((_%tl193829194115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193827194110%_)))
                                                          (_%hd193828194113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193827194110%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193828194113%_))
                                                          (let ((_%e193830194118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193828194113%_))))
                    (let ((_%tl193832194123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193830194118%_)))
                          (_%hd193831194121%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193830194118%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193831194121%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd193831194121%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193832194123%_))
                                  (let ((_%e193833194126%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193832194123%_))))
                                    (let ((_%tl193835194131%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193833194126%_)))
                                          (_%hd193834194129%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193833194126%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193835194131%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193829194115%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193792194289%_))
                                                  (let ((_%e193836194134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193792194289%_))))
                                                    (let ((_%tl193838194139%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193836194134%_)))
                                                          (_%hd193837194137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193836194134%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193838194139%_))
                                                          (let ((_%e193839194142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193838194139%_))))
                    (let ((_%tl193841194147%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193839194142%_)))
                          (_%hd193840194145%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193839194142%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193841194147%_))
                          (_%__kont198285198286%_
                           _%hd193840194145%_
                           _%hd193837194137%_
                           _%hd193834194129%_
                           _%hd193825194105%_)
                          (let () (declare (not safe)) (_%g193782193892%_)))))
                  (let () (declare (not safe)) (_%g193782193892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193792194289%_))
                                                  (let ((_%e193882193913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193792194289%_))))
                                                    (let ((_%tl193884193918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193882193913%_)))
                                                          (_%hd193883193916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193882193913%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193884193918%_))
                                                          (let ((_%e193885193921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193884193918%_))))
                    (let ((_%tl193887193926%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193885193921%_)))
                          (_%hd193886193924%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193885193921%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193887193926%_))
                          (_%__kont198289198290%_
                           _%hd193886193924%_
                           _%hd193883193916%_
                           _%hd193791194287%_)
                          (let () (declare (not safe)) (_%g193782193892%_)))))
                  (let () (declare (not safe)) (_%g193782193892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193829194115%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193792194289%_))
                                                  (let ((_%e193867194010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193792194289%_))))
                                                    (let ((_%tl193869194015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193867194010%_)))
                                                          (_%hd193868194013%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193867194010%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193869194015%_))
                                                          (let ((_%e193870194018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193869194015%_))))
                    (let ((_%tl193872194023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193870194018%_)))
                          (_%hd193871194021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193870194018%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193872194023%_))
                          (_%__match198488198489%_
                           _%e193787194276%_
                           _%hd193788194279%_
                           _%tl193789194281%_
                           _%e193790194284%_
                           _%hd193791194287%_
                           _%tl193792194289%_
                           _%e193793194292%_
                           _%hd193794194295%_
                           _%tl193795194297%_
                           _%e193818194086%_
                           _%hd193819194089%_
                           _%tl193820194091%_
                           _%e193821194094%_
                           _%hd193822194097%_
                           _%tl193823194099%_
                           _%e193824194102%_
                           _%hd193825194105%_
                           _%tl193826194107%_
                           _%e193827194110%_
                           _%hd193828194113%_
                           _%tl193829194115%_
                           _%e193867194010%_
                           _%hd193868194013%_
                           _%tl193869194015%_
                           _%e193870194018%_
                           _%hd193871194021%_
                           _%tl193872194023%_)
                          (let () (declare (not safe)) (_%g193782193892%_)))))
                  (let () (declare (not safe)) (_%g193782193892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193792194289%_))
                                                  (let ((_%e193882193913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193792194289%_))))
                                                    (let ((_%tl193884193918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193882193913%_)))
                                                          (_%hd193883193916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193882193913%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193884193918%_))
                                                          (let ((_%e193885193921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193884193918%_))))
                    (let ((_%tl193887193926%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193885193921%_)))
                          (_%hd193886193924%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193885193921%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193887193926%_))
                          (_%__kont198289198290%_
                           _%hd193886193924%_
                           _%hd193883193916%_
                           _%hd193791194287%_)
                          (let () (declare (not safe)) (_%g193782193892%_)))))
                  (let () (declare (not safe)) (_%g193782193892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193829194115%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193792194289%_))
                                          (let ((_%e193867194010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193792194289%_))))
                                            (let ((_%tl193869194015%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193867194010%_)))
                                                  (_%hd193868194013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193867194010%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193869194015%_))
                                                  (let ((_%e193870194018%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193869194015%_))))
                                                    (let ((_%tl193872194023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193870194018%_)))
                                                          (_%hd193871194021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193870194018%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193872194023%_))
                                                          (_%__match198488198489%_
                                                           _%e193787194276%_
                                                           _%hd193788194279%_
                                                           _%tl193789194281%_
                                                           _%e193790194284%_
                                                           _%hd193791194287%_
                                                           _%tl193792194289%_
                                                           _%e193793194292%_
                                                           _%hd193794194295%_
                                                           _%tl193795194297%_
                                                           _%e193818194086%_
                                                           _%hd193819194089%_
                                                           _%tl193820194091%_
                                                           _%e193821194094%_
                                                           _%hd193822194097%_
                                                           _%tl193823194099%_
                                                           _%e193824194102%_
                                                           _%hd193825194105%_
                                                           _%tl193826194107%_
                                                           _%e193827194110%_
                                                           _%hd193828194113%_
                                                           _%tl193829194115%_
                                                           _%e193867194010%_
                                                           _%hd193868194013%_
                                                           _%tl193869194015%_
                                                           _%e193870194018%_
                                                           _%hd193871194021%_
                                                           _%tl193872194023%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193782193892%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193782193892%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193792194289%_))
                                          (let ((_%e193882193913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193792194289%_))))
                                            (let ((_%tl193884193918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193882193913%_)))
                                                  (_%hd193883193916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193882193913%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193884193918%_))
                                                  (let ((_%e193885193921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193884193918%_))))
                                                    (let ((_%tl193887193926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193885193921%_)))
                                                          (_%hd193886193924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193885193921%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193887193926%_))
                                                          (_%__kont198289198290%_
                                                           _%hd193886193924%_
                                                           _%hd193883193916%_
                                                           _%hd193791194287%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193782193892%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193782193892%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193829194115%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193792194289%_))
                                      (let ((_%e193867194010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193792194289%_))))
                                        (let ((_%tl193869194015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193867194010%_)))
                                              (_%hd193868194013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193867194010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193869194015%_))
                                              (let ((_%e193870194018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193869194015%_))))
                                                (let ((_%tl193872194023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193870194018%_)))
                                                      (_%hd193871194021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193870194018%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193872194023%_))
                                                      (_%__match198488198489%_
                                                       _%e193787194276%_
                                                       _%hd193788194279%_
                                                       _%tl193789194281%_
                                                       _%e193790194284%_
                                                       _%hd193791194287%_
                                                       _%tl193792194289%_
                                                       _%e193793194292%_
                                                       _%hd193794194295%_
                                                       _%tl193795194297%_
                                                       _%e193818194086%_
                                                       _%hd193819194089%_
                                                       _%tl193820194091%_
                                                       _%e193821194094%_
                                                       _%hd193822194097%_
                                                       _%tl193823194099%_
                                                       _%e193824194102%_
                                                       _%hd193825194105%_
                                                       _%tl193826194107%_
                                                       _%e193827194110%_
                                                       _%hd193828194113%_
                                                       _%tl193829194115%_
                                                       _%e193867194010%_
                                                       _%hd193868194013%_
                                                       _%tl193869194015%_
                                                       _%e193870194018%_
                                                       _%hd193871194021%_
                                                       _%tl193872194023%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193782193892%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193782193892%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193782193892%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193792194289%_))
                                      (let ((_%e193882193913%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193792194289%_))))
                                        (let ((_%tl193884193918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193882193913%_)))
                                              (_%hd193883193916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193882193913%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193884193918%_))
                                              (let ((_%e193885193921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193884193918%_))))
                                                (let ((_%tl193887193926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193885193921%_)))
                                                      (_%hd193886193924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193885193921%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193887193926%_))
                                                      (_%__kont198289198290%_
                                                       _%hd193886193924%_
                                                       _%hd193883193916%_
                                                       _%hd193791194287%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193782193892%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193782193892%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193782193892%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193829194115%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193792194289%_))
                                  (let ((_%e193867194010%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193792194289%_))))
                                    (let ((_%tl193869194015%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193867194010%_)))
                                          (_%hd193868194013%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193867194010%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193869194015%_))
                                          (let ((_%e193870194018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193869194015%_))))
                                            (let ((_%tl193872194023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193870194018%_)))
                                                  (_%hd193871194021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193870194018%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193872194023%_))
                                                  (_%__match198488198489%_
                                                   _%e193787194276%_
                                                   _%hd193788194279%_
                                                   _%tl193789194281%_
                                                   _%e193790194284%_
                                                   _%hd193791194287%_
                                                   _%tl193792194289%_
                                                   _%e193793194292%_
                                                   _%hd193794194295%_
                                                   _%tl193795194297%_
                                                   _%e193818194086%_
                                                   _%hd193819194089%_
                                                   _%tl193820194091%_
                                                   _%e193821194094%_
                                                   _%hd193822194097%_
                                                   _%tl193823194099%_
                                                   _%e193824194102%_
                                                   _%hd193825194105%_
                                                   _%tl193826194107%_
                                                   _%e193827194110%_
                                                   _%hd193828194113%_
                                                   _%tl193829194115%_
                                                   _%e193867194010%_
                                                   _%hd193868194013%_
                                                   _%tl193869194015%_
                                                   _%e193870194018%_
                                                   _%hd193871194021%_
                                                   _%tl193872194023%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193782193892%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193782193892%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193792194289%_))
                                  (let ((_%e193882193913%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193792194289%_))))
                                    (let ((_%tl193884193918%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193882193913%_)))
                                          (_%hd193883193916%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193882193913%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193884193918%_))
                                          (let ((_%e193885193921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193884193918%_))))
                                            (let ((_%tl193887193926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193885193921%_)))
                                                  (_%hd193886193924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193885193921%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193887193926%_))
                                                  (_%__kont198289198290%_
                                                   _%hd193886193924%_
                                                   _%hd193883193916%_
                                                   _%hd193791194287%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193782193892%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193782193892%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193829194115%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193792194289%_))
                          (let ((_%e193867194010%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193792194289%_))))
                            (let ((_%tl193869194015%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193867194010%_)))
                                  (_%hd193868194013%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193867194010%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193869194015%_))
                                  (let ((_%e193870194018%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193869194015%_))))
                                    (let ((_%tl193872194023%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193870194018%_)))
                                          (_%hd193871194021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193870194018%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193872194023%_))
                                          (_%__match198488198489%_
                                           _%e193787194276%_
                                           _%hd193788194279%_
                                           _%tl193789194281%_
                                           _%e193790194284%_
                                           _%hd193791194287%_
                                           _%tl193792194289%_
                                           _%e193793194292%_
                                           _%hd193794194295%_
                                           _%tl193795194297%_
                                           _%e193818194086%_
                                           _%hd193819194089%_
                                           _%tl193820194091%_
                                           _%e193821194094%_
                                           _%hd193822194097%_
                                           _%tl193823194099%_
                                           _%e193824194102%_
                                           _%hd193825194105%_
                                           _%tl193826194107%_
                                           _%e193827194110%_
                                           _%hd193828194113%_
                                           _%tl193829194115%_
                                           _%e193867194010%_
                                           _%hd193868194013%_
                                           _%tl193869194015%_
                                           _%e193870194018%_
                                           _%hd193871194021%_
                                           _%tl193872194023%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193782193892%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193782193892%_)))))
                          (let () (declare (not safe)) (_%g193782193892%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193792194289%_))
                          (let ((_%e193882193913%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193792194289%_))))
                            (let ((_%tl193884193918%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193882193913%_)))
                                  (_%hd193883193916%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193882193913%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193884193918%_))
                                  (let ((_%e193885193921%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193884193918%_))))
                                    (let ((_%tl193887193926%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193885193921%_)))
                                          (_%hd193886193924%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193885193921%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193887193926%_))
                                          (_%__kont198289198290%_
                                           _%hd193886193924%_
                                           _%hd193883193916%_
                                           _%hd193791194287%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193782193892%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193782193892%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g193782193892%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193792194289%_))
                                                      (let ((_%e193882193913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193792194289%_))))
                (let ((_%tl193884193918%_
                       (let () (declare (not safe)) (##cdr _%e193882193913%_)))
                      (_%hd193883193916%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193882193913%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193884193918%_))
                      (let ((_%e193885193921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193884193918%_))))
                        (let ((_%tl193887193926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193885193921%_)))
                              (_%hd193886193924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193885193921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193887193926%_))
                              (_%__kont198289198290%_
                               _%hd193886193924%_
                               _%hd193883193916%_
                               _%hd193791194287%_)
                              (let ()
                                (declare (not safe))
                                (_%g193782193892%_)))))
                      (let () (declare (not safe)) (_%g193782193892%_)))))
              (let () (declare (not safe)) (_%g193782193892%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193792194289%_))
                                                  (let ((_%e193882193913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193792194289%_))))
                                                    (let ((_%tl193884193918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193882193913%_)))
                                                          (_%hd193883193916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193882193913%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193884193918%_))
                                                          (let ((_%e193885193921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193884193918%_))))
                    (let ((_%tl193887193926%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193885193921%_)))
                          (_%hd193886193924%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193885193921%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl193887193926%_))
                          (_%__kont198289198290%_
                           _%hd193886193924%_
                           _%hd193883193916%_
                           _%hd193791194287%_)
                          (let () (declare (not safe)) (_%g193782193892%_)))))
                  (let () (declare (not safe)) (_%g193782193892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193792194289%_))
                                          (let ((_%e193882193913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193792194289%_))))
                                            (let ((_%tl193884193918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193882193913%_)))
                                                  (_%hd193883193916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193882193913%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193884193918%_))
                                                  (let ((_%e193885193921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193884193918%_))))
                                                    (let ((_%tl193887193926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193885193921%_)))
                                                          (_%hd193886193924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193885193921%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193887193926%_))
                                                          (_%__kont198289198290%_
                                                           _%hd193886193924%_
                                                           _%hd193883193916%_
                                                           _%hd193791194287%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g193782193892%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193782193892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193792194289%_))
                                      (let ((_%e193882193913%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193792194289%_))))
                                        (let ((_%tl193884193918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193882193913%_)))
                                              (_%hd193883193916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193882193913%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193884193918%_))
                                              (let ((_%e193885193921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193884193918%_))))
                                                (let ((_%tl193887193926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193885193921%_)))
                                                      (_%hd193886193924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193885193921%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193887193926%_))
                                                      (_%__kont198289198290%_
                                                       _%hd193886193924%_
                                                       _%hd193883193916%_
                                                       _%hd193791194287%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193782193892%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193782193892%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193782193892%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193792194289%_))
                                  (let ((_%e193882193913%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193792194289%_))))
                                    (let ((_%tl193884193918%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193882193913%_)))
                                          (_%hd193883193916%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193882193913%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193884193918%_))
                                          (let ((_%e193885193921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193884193918%_))))
                                            (let ((_%tl193887193926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193885193921%_)))
                                                  (_%hd193886193924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193885193921%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193887193926%_))
                                                  (_%__kont198289198290%_
                                                   _%hd193886193924%_
                                                   _%hd193883193916%_
                                                   _%hd193791194287%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g193782193892%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g193782193892%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193782193892%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193792194289%_))
                          (let ((_%e193882193913%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193792194289%_))))
                            (let ((_%tl193884193918%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193882193913%_)))
                                  (_%hd193883193916%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193882193913%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193884193918%_))
                                  (let ((_%e193885193921%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193884193918%_))))
                                    (let ((_%tl193887193926%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193885193921%_)))
                                          (_%hd193886193924%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193885193921%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193887193926%_))
                                          (_%__kont198289198290%_
                                           _%hd193886193924%_
                                           _%hd193883193916%_
                                           _%hd193791194287%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g193782193892%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g193782193892%_)))))
                          (let () (declare (not safe)) (_%g193782193892%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl193792194289%_))
                  (let ((_%e193882193913%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193792194289%_))))
                    (let ((_%tl193884193918%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193882193913%_)))
                          (_%hd193883193916%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193882193913%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193884193918%_))
                          (let ((_%e193885193921%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193884193918%_))))
                            (let ((_%tl193887193926%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193885193921%_)))
                                  (_%hd193886193924%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193885193921%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193887193926%_))
                                  (_%__kont198289198290%_
                                   _%hd193886193924%_
                                   _%hd193883193916%_
                                   _%hd193791194287%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g193782193892%_)))))
                          (let () (declare (not safe)) (_%g193782193892%_)))))
                  (let () (declare (not safe)) (_%g193782193892%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193792194289%_))
                                                      (let ((_%e193882193913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193792194289%_))))
                (let ((_%tl193884193918%_
                       (let () (declare (not safe)) (##cdr _%e193882193913%_)))
                      (_%hd193883193916%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193882193913%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl193884193918%_))
                      (let ((_%e193885193921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193884193918%_))))
                        (let ((_%tl193887193926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193885193921%_)))
                              (_%hd193886193924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193885193921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193887193926%_))
                              (_%__kont198289198290%_
                               _%hd193886193924%_
                               _%hd193883193916%_
                               _%hd193791194287%_)
                              (let ()
                                (declare (not safe))
                                (_%g193782193892%_)))))
                      (let () (declare (not safe)) (_%g193782193892%_)))))
              (let () (declare (not safe)) (_%g193782193892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193792194289%_))
                                              (let ((_%e193882193913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193792194289%_))))
                                                (let ((_%tl193884193918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193882193913%_)))
                                                      (_%hd193883193916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193882193913%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193884193918%_))
                                                      (let ((_%e193885193921%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193884193918%_))))
                (let ((_%tl193887193926%_
                       (let () (declare (not safe)) (##cdr _%e193885193921%_)))
                      (_%hd193886193924%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193885193921%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193887193926%_))
                      (_%__kont198289198290%_
                       _%hd193886193924%_
                       _%hd193883193916%_
                       _%hd193791194287%_)
                      (let () (declare (not safe)) (_%g193782193892%_)))))
              (let () (declare (not safe)) (_%g193782193892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g193782193892%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193792194289%_))
                                      (let ((_%e193882193913%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193792194289%_))))
                                        (let ((_%tl193884193918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193882193913%_)))
                                              (_%hd193883193916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193882193913%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193884193918%_))
                                              (let ((_%e193885193921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193884193918%_))))
                                                (let ((_%tl193887193926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193885193921%_)))
                                                      (_%hd193886193924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193885193921%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193887193926%_))
                                                      (_%__kont198289198290%_
                                                       _%hd193886193924%_
                                                       _%hd193883193916%_
                                                       _%hd193791194287%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g193782193892%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g193782193892%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193782193892%_))))))
                          (let () (declare (not safe)) (_%g193782193892%_)))))
                  (let () (declare (not safe)) (_%g193782193892%_))))))))))
